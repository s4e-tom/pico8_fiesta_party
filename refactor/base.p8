pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--utils
#include utils/utils.lua

--modules
#include modules/scene_manager.lua
#include modules/transition_manager.lua
#include modules/cutscene_manager.lua
#include modules/discussion_manager.lua

--scenes
#include scenes/scn_title.lua
#include scenes/scn_board.lua

--transitions
#include transitions/tra_bubbles.lua

--cutscenes
#include cutscenes/intro_cut.lua

--objects
#include objects/player.lua
#include objects/dice.lua

function _init()
  scn_mgr=scene_manager:new(scn_title)
  tra_mgr=transition_manager:new(scn_title,scn_board,tra_bubbles)
  scn_mgr:change_scn(scn_title,true)
  cut_mgr=cutscene_manager:new()
end
function _draw()
  _currentdraw()
end
function _update60()
  clock:update()
  _currentupdate()
end
function _currentupdate()end
function _currentdraw()end

__gfx__
000000000a900000000aa900000000000000000000000000000000004444444433b333b333b333b39aaaaaaa0000000000000000000000000000000000000000
00000000a9a9000000aaaa900008000000000000000000000000000044444444333333333333333349a449a40000000000000000000000000000000000000000
00700700a9a900000aaa9aa90097f0000000000000000000000000004424444422222222222222229aaaaaaa0000000000000000000000000000000000000000
000770000a9000000aa99aa90a777e00000000000000000000000000444444444444444449a449a449a449a40033330000000000000000000000000000000000
00077000000000000aa99aa900b7d00000000000000000000000000044444444444444449aaaaaaa9aaaaaaa0333333000000000000000000000000000000000
00700700000000000aaa9aa9000c0000000000000000000000000000444442444444424449a449a449a449a4333a333300000000000000000000000000000000
000000000000000000aaaa900000000000000000000000000000000044444444444444449aaaaaaa9aaaaaaa33a7a33300000000000000000000000000000000
0000000000000000000aa90000000000000000000000000000000000444444444444444449a449a449a449a4333a333300000000000000000000000000000000
66666666ffff0ffffff00fffff0000ffffff0fffff0000fffff000ff1010122244440404333333333333333333333333bbbbbbbb000000000000000000000000
66777766fff070ffff0770fff077770ffff070fff077770fff07770f1110122244440444333333333333b33333333333bbbbbbbb000000000000000000000000
67777776ff0770fff070070fff00070fff0770fff07000fff070000f01001124444424003339a3333333bab33333333333333333000000000000000000000000
67777776fff070ffff0070fff077770ff07070ffff0770fff077770f0111122244442400339a7a33333bbb333333333333333333000000000000000000000000
67777776fff070ffff0700ffff00070f0777770fff00070ff070070f00001222444400003399a93333333b33333333333bb33b33000000000000000000000000
67777776fff070fff077770ff077770ff00070fff07770fff077770f0000112444444000333993333b333333333333333bb33333000000000000000000000000
66777766ffff0fffff0000ffff0000ffffff0fffff000fffff0000ff000122222444440033333333333333333333333333333333000000000000000000000000
66666666ffffffffffffffffffffffffffffffffffffffffffffffff001111122444444033333333333333333333333333333333000000000000000000000000
00000000000000000000000000000000000000000000000000000000444444444242424200bbbbbbbbbbbb003333333300333300000000000000000000000000
0000000000000000000000000000000000000000000000000000000044444444222422440bbbbbbbbbbbbbb03333333303333330000000000000000000000000
000000000000000000000000000000000000000000000000000000004442444442424222bb333333333333bb3333333333333333000000000000000000000000
000000000000000000000000000000000000000000000000000000004444442424242424b33333333333333b3333333333333b33000000000000000000000000
0000000000000000000000000000000000000000000000000000000042444244424422423333bb33333333333313313333333333000000000000000000000000
0000000000000000000000000000000000000000000000000000000044442424222444243333bb3333bb3333313113133b333333000000000000000000000000
0000000000000000000000000000000000000000000000000000000042444242422242423333333333bb33331311113133333333000000000000000000000000
00000000000000000000000000000000000000000000000000000000242424242424242433333333333333331111111133333333000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
bb3333bbbb3333bbbbbbbbbb33bb33bbb3999993bbbbbbbbbbbbbbbbbbbbebbbcaccaccaccacbbbbccccccc0888888800003300000000000bbbbbbb000bbbbbb
b3cccc3bb3cccc3bbbbbbbbb993399333995993bbbb3333333333bbbbbbe7ebbbcaccaccaccacbbbc000000c800000080037730000000000bbbbb00bbb00bbbb
3c7cccc33cccc7c3bbbbbbbb999999999999993bbb399999999993bbbbe777ebb2caccaccaccacbbc00000c0800000080037730000000000bbbb0bbbbbbb0bbb
ccccc7cccc7cccccbbbbbbbb9999959999999993b39999999999993bbe77777eb24caccaccaccacbcccccc00888888800037730000000000bbb0bbb3bbbbb0bb
ccccccccccccccccbbbbbbbb9959999999999593b39999999999993bbeee7eeeb24bcaccaccaccacc00000c0888880000037730000000000bbb0bbbbbb3b30bb
cccccc7cc7ccccccbbbbbbbb999999999599993bb39999999999993bbbbe7ebbb49bbcbcbcbc2cbcc000000c800008000003300000000000bbb0bbbbbbb3bb0b
bc7ccccbbcccc7cbbbbbbbbb339933999999993b3999999999999993bbbeeebbb49bbbbbbbbb24bbc00000cc800000800037730000000000bb0bb3bb3bbbbb0b
bbccccbbbbccccbbbbbbbbbbbb33bb33399999933999993333999993bbbbbbbbb24bbbbbbbbb24bbccccccc0800000800003300000000000bb0bbb33bbbbbb0b
bbbbbbbbbbbbbbbbbbbbbbbb3999993bb3999993399999333399999304400440b24bbbbbbbbb29bb00000000888777880003030000000000bb0b3bbbbbbbbb0b
bbbbbbbbbbb000bbbbbeebbbb3995993b39999933999999999999993ffffffffb24bbbbbbbbb24bb00000000887777780038383000000000bb03bbbbbbbbbb0b
bbbbbb3bbb06650bbeeaaeebb39999993999993bb39999999999993b444444442444494449944449000000008770707703aa8a3000000000b0bbbbbbb3bb3bb0
3bbbb3bbb055530bbeeaaeeb399999993999593bb39999999999993b02200220244774474747474400000000870070073aaa8aa300000000b03b1b31bb33bb30
b33b33bb35553503bbbeebbb39599999b3999993b39999999999993b04400440b24747474747474b00000000870070073888888300000000b033311333bb3310
b33333bbb353353bbb3b3bbbb3999959b3959993bb399999999993bbffffffffb24774974747474b00000000877777773aaa8aa300000000bb0333133313310b
bb333bbbb33333bbbbb33b3bb39999993999993bbbb3333333333bbbffffffffb24747474744744b000000008777777703aa8a3000000000bb0133311133110b
bbbbbbbbbbbbbbbbbbbb33bb399999933999993bbbbbbbbbbbbbbbbb04400440b24774447449744b00000000887070780033330000000000bbb01111111111bb
bbbbbbbbbb3333bbbbbbbbbb3999993b33bb33bb399999999999999300000000bb22bbbbbb22bbbb00000000000000000000000000000000bbbb000000000bbb
b3bbbbbbb344443bbbbccbbb3999599399339933b39999999999993b00080000b2772bbbb2772bbb00000000000000000000000000000000bbbbbb024420bbbb
b3bbb3bb34454443bccaaccb9999999999999999b39999999999993b0097f000277772bb277772bb00000000000000000000000000000000bbbbbb0999403bbb
bb3bb3bb44444554bccaaccb999999999999599939999999999999930a777e00276672222766723b00000000000000000000000000000000bbbbbb0999440b3b
bb3bbb3b45544444bbbccbbb9995999999999999399999999999999300b7d00026666277266663bb00000000000000000000000000000000bbbb3309994403bb
bbbbbb3bb444544bbbb3b3bb9999999999999999b39999999999993b000c000026666266263633bb00000000000000000000000000000000bbb334949934403b
bbbbbbbbbb4444bbb3b33bbb9339933933999599b39999999999993b0000000026666222236333b300000000000000000000000000000000b33343349333440b
bbbbbbbbbbbbbbbbbb33bbbb3bb33bb3b3999993399999999999999300000000222222bb3333333b00000000000000000000000000000000bbb333334333333b
bbbbbbbb00000000000000000000000099999999999999993bb33bb300000000000000000000000000000000000000000000000000000000dddd5ddd00000000
bbbb3bbb000000000000000000000000999999999999999993399339000000000000000000000000000000000000000000000000000000005555555500000000
bbb3bbbb00000000000000000000000099999999999999999999999900000000000000000000000000000000000000000000000000000000d5dddddd00000000
bbb3bb3b000000000000000000000000999999999999999999999999000000000000000000000000000000000000000000000000000000005555555500000000
bb33b3bb00000000000000000000000099999999999999999999999900000000000000000000000000000000000000000000000000000000ddddd5dd00000000
bb33b3bb000000000000000000000000999999999999999999999999000000000000000000000000000000000000000000000000000000005555555500000000
bbb3bbbb00000000000000000000000099999999933993399999999900000000000000000000000000000000000000000000000000000000ddd5dddd00000000
bbbbbbbb000000000000000000000000999999993bb33bb399999999000000000000000000000000000000000000000000000000000000005555555500000000
00044440000444400004444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00045f5000045f5000045f5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000ffff0000ffff0000ffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00ccfff000ccfff000ccfff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00cccc0000cccc0000cccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07cccc7007cccc7007cccc7000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00cccc0000cccc0000cccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700007007000070070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00044440000444400004444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00045f5000045f5000045f5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000ffff0000ffff0000ffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0088fff00088fff00088fff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00888800008888000088880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07888870078888700788887000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00888800008888000088880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700007007000070070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00044440000444400004444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00045f5000045f5000045f5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000ffff0000ffff0000ffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00bbfff000bbfff000bbfff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00bbbb0000bbbb0000bbbb0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07bbbb7007bbbb7007bbbb7000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00bbbb0000bbbb0000bbbb0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700007007000070070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00044440000444400004444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00045f5000045f5000045f5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000ffff0000ffff0000ffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aafff000aafff000aafff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aaaa0000aaaa0000aaaa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07aaaa7007aaaa7007aaaa7000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aaaa0000aaaa0000aaaa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700007007000070070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07777077770077700777700000777700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
77177107711771117717710000711710000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
77777107710771007717717707777710008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
77111107710771007717710117711710097f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
77100077770777707777110007777710a777e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
011000011110111101111000001111100b7d00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000c000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07770777700777007777077770077700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
77111077117711177711107711771770000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
77770077107770007771007710777771000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
77111077107711000777107710771771000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
77100777707777077771107710771771000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
01100011110111101111000110011111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07777007770007777077770770700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
77177177177077177107711771710000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
77777177777177771107710777710000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
77111177177177177007710077110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
77100077177177177107710077100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
01100001111101111100110011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002040100000000000000000000000000000c09000000000000000000000d0000000009000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
291c1c1c1c2a0000000000000000000000000000000000000000000000000000000000000000000000000000000000544242424242424242424242424254424242424242424242544242424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1b1a1b1a191a000000000000000000000000000000000000000000000000000000000000000000000000000000000054424242705142424250424242425442424242424e4f4242544242424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1a191b1b1a1b00000000000000000000000000000000000000000000000000000000000000000000000000000000004a424242424242424242424242424a42426142425e5f42424b4242424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1b1b1a1b1a19000000000000000000000000000000000000000000000000000000000000000000000000000000000054424242424242424242614242425452424242426e6f4242544242424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
191b1b1b1b1a0000000000000000000000000000000000000000000000000000000000000000000000000000000000544242424242425142424242424254424242424242424242544242424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2b2b2b2b2b2b000000000000000000000000000000000000000000000000000000000000000000000000000000000053434a43434b43434a43434a43434b4343434a43435c43434a4242424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000017180000004a00004b00000000004c00004b00004a00004a00004c00004a000000000000000000000000000000544242424242424242504254424242424242424242424242544242424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00080808080808090808080808090808080808080808090808080808080808090800000000000000000000000000004a4248494242604242424254424242424242425142686869546868694242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
002727272727270a27272727270a27272727272727270a27272727272727270a270000000000000000000000000000544258594242426142424254424242504242404242457676747676464242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
002828282828280a28282828280a28282828282828280a28282828282828280a28000000004200000000000000000055436743434a43434b43434b424242424242424242657474747474664242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4242424242424254424242424254424242424242424254424242424242424254424242424242000000000000000000504242424242426042424242426042704242424242657474747474664242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
424242424242424a42407042424a42424242424242424b424e4f42426042424b424242424242000000000000000000424242424251424242424242424242424242426042557575757575564242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4242424242424254424242425154424242424252424254425e5f424242524254424242424242420000000000000000424242424242424242424242424242424242424242424242424242424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4242424242424254425042424254426242424242424254426e6f424242424254424242424242000000000000000000424242424242424242424242424242424242424242424242424242424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
424242424242424b42424260424c42424242424270424c42424242424250424b424242424242000000000000000000424242424242424242424242424242424242424242424242424242424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4242424242424254524242424254424242426042424254424242424242424254424242424242000000000000000042424242424242424242424242424242424242424242424242424242424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
424242424242425343434b434344426142424242424254424242424242484954424242424242420000000000000000004242424200000000000000000000004242000000424242424242424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
424242424242425442424242425442424242504242424b427051424242585967424242424200000000000000000000000000000000000000000000000000000000000000000000004242424200004200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
424242424242424a42424242424a424242424242704254424242424242424254424242424200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
424242424242425442424242425442424242424242425543435c43434a434344424242424242000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4242424242424254424242424254424242424242424242424242424242424254424242424242000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
424242424242425b43434b43435642424242424242424242424242424242424a424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
424242424242425442424242424270424e4f4242424242704242424e4f424254424242424242000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
424242424242425442424242424242425e5f4242624242424242425e5f424254424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
424242424242424a42424242424242426e6f4242424242425242426e6f42424a424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4242424242424254424242424242424242424242424242424242424242424254424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4242424242424253434a43435c43434a43434b43435c4343434a43434b434344424242424242000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4242424242424254424242424242424242424242425442424242424242424254424242424242000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
424242424242424a42424e4f424242424242424242544242424242424242424c424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
424242424242425442425e5f4242424242424242424a42424251427042424254424242424242000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
424242424242425442426e6f4242424252424242425442424242424242504254424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
424242424242424b42424242424242424242424242544240424242424242424a424242424242420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
