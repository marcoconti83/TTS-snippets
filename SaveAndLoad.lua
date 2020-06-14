config = {
}

function onLoad(ss)
  loadFromSave(ss)
end

function onSave()
    saved_data = JSON.encode(config)
    self.script_state = saved_data
end

function loadFromSave(saved_data)
  if saved_data ~= "" then
      local loaded = JSON.decode(saved_data)
      if (loaded) then
        for k,v in pairs(loaded) do
          config[k] = v
        end
      end
  end
end