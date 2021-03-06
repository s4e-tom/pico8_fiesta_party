--time 
clock={}
clock.last=time()
clock.past=0

function clock:update()
    clock.past=time()-clock.last
	clock.last=time()
end

--lerp
function lerp(a, b, t)
    return a + (b-a)*t
end

function easeIn(t)
    return t*t
end

function easeOut(t)
    return 1 - (1-t)*(1-t)
end

function easeInOut(t)
    return lerp(easeIn(t), easeOut(t), t)
end

--keys

-- https://www.lexaloffle.com/bbs/?tid=3367
-- is_held(k) is true if the key k is held down
-- is_pressed(k) is true if the key has just been pressed by the user
-- is_released(k) is true if the key has just been released by the user
keys={}

function is_held(k,p) return band(keys[k][p], 1) == 1 end
function is_pressed(k,p) return band(keys[k][p], 2) == 2 end
function is_released(k,p) return band(keys[k][p], 4) == 4 end

function upd_key(k,p)
    if keys[k][p] == 0 then
        if btn(k,p) then keys[k][p] = 3 end
    elseif keys[k][p] == 1 then
        if btn(k,p) == false then keys[k][p] = 4 end
    elseif keys[k][p] == 3 then
        if btn(k,p) then keys[k][p] = 1
        else keys[k][p] = 4 end
    elseif keys[k][p] == 4 then
        if btn(k,p) then keys[k][p] = 3
        else keys[k][p] = 0 end
    end
end

function init_keys()
	for a = 0,5 do 
		keys[a] = {}
		for p=0,3 do
			keys[a][p] = 0 
		end
	end
end

function upd_keys()
	for a = 0,5 do
		for p=0,3 do
			upd_key(a,p)
		end
	end
end

function table_contains(tbl,val)
    for i=1,#tbl do
        if(tbl[i]==val)return true
    end
    return false
end

function move_camera(xorigin,yorigin,xtarget,ytarget,timer)
    xcam = lerp(xorigin,xtarget,easeInOut(timer))
    ycam = lerp(yorigin,ytarget,easeInOut(timer))
    if(abs(xcam-xtarget)<0.1)xcam=xtarget
    if(abs(ycam-ytarget)<0.1)ycam=ytarget
    if(abs(xcam-xtarget)<0.1 and abs(ycam-ytarget)<0.1)return true
    return false
end

function play_coroutine(co_name,args)
    if(coroutines[co_name]==nil)coroutines[co_name]=cocreate(cofuncs[co_name])
	coresume(coroutines[co_name],args)
end

-- https://gist.github.com/Liquidream/1b419261dc324708f008f24ee6d13d7b
-- draws a sprite to the screen with an outline of the specified colour
function outline_sprite(n,col_outline,x,y,w,h,flip_x,flip_y)
    -- reset palette to black
    for c=1,15 do
      pal(c,col_outline)
    end
    -- draw outline
    for xx=-1,1 do
      for yy=-1,1 do
        spr(n,x+xx,y+yy,w,h,flip_x,flip_y)
      end
    end
    -- reset palette
    pal()
    -- draw final sprite
    spr(n,x,y,w,h,flip_x,flip_y)	
  end

  function outline_print(txt,x,y,col,outcol)
    print(txt,x+1,y+1,outcol)
    print(txt,x,y,col)
  end