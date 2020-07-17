require "math"


PATRON_IMAGES = {
  [""] = {},
  ["Dark Mage"] = {"dark_mage.png", "dark_mage_mirrored.png"},
  ["Healer"] = {"healer.png", "healer_mirrored.png"},
  ["Knight"] = {"knight.png", "knight_mirrored.png"},
}


function get_table_keys(table_)
  keys = {}
  for key, value in pairs(table_) do
    table.insert(keys, key)
  end

  return keys
end


function map(array, predicate)
  local result = {}
  for _, value in ipairs(array) do
    table.insert(result, predicate(value))
  end

  return result
end


function any(array)
  for _, value in ipairs(array) do
    if value == true then
      return true
    end
  end

  return false
end


-- All these return a boolean, indicating either success or failure of the
-- action described by the function identifier.
function leave()
  return existsClick("leave.png")
end


function yes()
  return existsClick("yes.png")
end


function enter_tavern()
  return existsClick("tavern.png")
end


function tavern_refresh_patrons()
  return existsClick("tavern_refresh_patrons.png") and yes()
end


function tavern_hire()
  return existsClick("tavern_hire.png")
end


function enter_dungeon()
  return existsClick("dungeon.png")
end


function dungeon_level_up(times)
  times = times or 1

  -- Not sure what continueClick returns, it's undocumented. Assume it's a
  -- boolean, similarly to what existsClick returns.
  return continueClick("dungeon_level_up.png", times)
end


function dungeon_level_down(times)
  times = times or 1

  -- Not sure what continueClick returns, it's undocumented. Assume it's a
  -- boolean, similarly to what existsClick returns.
  return continueClick("dungeon_level_down.png")
end


function dungeon_go()
  return existsClick("dungeon_go.png") and yes()
end


function hire_patrons(type_, count)
  local images = PATRON_IMAGES[type_]
  local hired = 0
  local any_existed = false

  while count > hired do
    any_existed = false
    for _, image in ipairs(images) do
      if existsClick(image) then
        tavern_hire()
        hired = hired + 1
        any_existed = true
        break
      end
    end

    if not any_existed then
      break
    end
  end

  return hired
end


function hire_with_refresh(type_, count)
  local patrons = 0
  while patrons < count do
    local need = count - patrons
    local hired = hire_patrons(type_, need)

    patrons = patrons + hired
    if patrons < count then
      tavern_refresh_patrons()
    end
  end
end


function show_configuration_dialog()
  patrons = get_table_keys(PATRON_IMAGES)
  table.sort(patrons)

  dialogInit()
  addTextView("Patrons:")
  newRow()
  addTextView("#1:")
  addSpinner("configuration_patron_1", patrons, patrons[0])
  newRow()
  addTextView("#2:")
  addSpinner("configuration_patron_2", patrons, patrons[0])
  newRow()
  addTextView("#3:")
  addSpinner("configuration_patron_3", patrons, patrons[0])
  newRow()
  addTextView("#4:")
  addSpinner("configuration_patron_4", patrons, patrons[0])
  newRow()
  addTextView("#5:")
  addSpinner("configuration_patron_5", patrons, patrons[0])
  newRow()
  addTextView("Level:")
  addEditNumber("configuration_level", "0")
  dialogShow("Configuration")

  -- Truncate possible float value to integer, negative values can't be entered
  -- apparently
  configuration_level = math.floor(configuration_level)

  -- Check for configuration errors:
  local patrons = {}
  for index = 1, 5 do
    table.insert(patrons, _G["configuration_patron_" .. index])
  end

  return any(map(patrons, function(value) return value ~= "" end))
end


function show_error_dialog(message)
  dialogInit()
  addTextView(message)
  dialogShow("Error")
end


function initialize()
  Settings:setCompareDimension(true, 1920)
  Settings:setScriptDimension(true, 1920)
  Settings:set("MinSimilarity", 0.9)
end


-- There's basically no error handling: the calling code is expected to respect
-- the game context created by previous function calls.
function main()
  if not show_configuration_dialog() then
    show_error_dialog("At least one patron must be hired!")
    return
  end

  while true do
    enter_tavern()

    for index = 1, 5 do
      local type_ = _G["configuration_patron_" .. index]
      if type_ ~= "" then
        hire_with_refresh(type_, 1)
      end
    end

    leave()
    enter_dungeon()

    if configuration_level ~= 0 then
      dungeon_level_up()
      dungeon_level_up(configuration_level)
    end

    dungeon_go()

    -- Check if the leave button is displayed every minute, indicating that the
    -- run is over. It does not need to be checked any more often, because runs
    -- usually lasts several minutes or even hours. Choosing a more frequent
    -- value would be needlessly taxing on the CPU.
    while not leave() do
      wait(60)
    end

    -- Make sure that the shadow effect has fully disappeared before using
    -- enter_tavern() again.
    wait(3)
  end
end


initialize()
main()
