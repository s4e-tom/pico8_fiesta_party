scene_manager={}
scene_manager.__index=scene_manager

function scene_manager:new(current_scn)
    local t={
        current_scn = current_scn
    }
    setmetatable(t,self)
    return t
end

function scene_manager:init_current_scn()
    self.current_scn._init()
end

function scene_manager:change_scn(scene,do_init)
    self.current_scn=scene
    _currentdraw=self.current_scn._draw
    _currentupdate=self.current_scn._update
    if(do_init)self.current_scn._init()
end

function scene_manager:get_current_scn()
    return self.current_scn
end
