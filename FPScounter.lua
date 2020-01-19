# lua-help
# Hey! I need help with a FPS game! DM me via travis767676#1300
# This is what i got so far, The FPS Counter!

  fps_pos_x = 10
  fps_pos_y = SCREEN_HIGHT-20

do_every_frame([[
    FPS_count()
]])
do_often([[
    FPS_capture()
]])
do_every_draw([[
    FPS_draw()
]])

fps_pos_x = 10
fps_pos_y = SCREEN_HIGHT-20


fps=-1
fps_cnt=0

function FPS_count()
    fps_cnt=fps_cnt+1
end

function FPS_capture()
    fps=fps_cnt
    fps_cnt=0
end

function FPS_draw()
    if(fps>=0) then
        if(fps<=15) then
            draw_string(fps_pos_x, fps_pos_y, "FPS "..fps, "red")
        elseif(fps>=30) then
            draw_string(fps_pos_x, fps_pos_y, "FPS "..fps, "green")
        else
            draw_string(fps_pos_x, fps_pos_y, "FPS "..fps, "yellow")
        end
    end
end
