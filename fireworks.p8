pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
function _init()
    points={}
    for i=0,360,10 do
        local p={}
        p.i=i
        p.key0=128/2+20
        p.key1=128/2
        p.key0transformed=cos(i/360)*p.key0-sin(i/360)*p.key1
        p.key1transformed=sin(i/360)*p.key0+cos(i/360)*p.key1
        add(points,p)
    end
end

function _update60()

end

function _draw()
    cls()
    for i=1,#points do
        pset(points[i].key0transformed,points[i].key1transformed,10)        
    end
    print(#points,100,100,10)
    print(points[11].key1transformed,10,100,10)
    
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
