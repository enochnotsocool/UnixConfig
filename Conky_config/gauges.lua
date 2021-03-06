--==============================================================================
--                             conky_grey.lua
--  original author: SLK
--  moded  version : v2011062101
--  license : Distributed under the terms of GNU GPL version 2 or later
--
--==============================================================================

require 'cairo'

--------------------------------------------------------------------------------
--                                                                    gauge DATA

clockx = 440
clocky = 140

cpux = 100
cpuy = 462

drivex = 100
drivey = 720

gauge = {
{
    name='time',                    arg='%I',                  max_value=12,
    x=clockx,                          y=clocky,
    graph_radius=100,
    graph_thickness=15,
    graph_start_angle=0,
    graph_unit_angle=30,          graph_unit_thickness=30,
    graph_bg_colour=0x0000FF,      graph_bg_alpha=0.5,
    graph_fg_colour=0x00AAFF,      graph_fg_alpha=0.5,
    hand_fg_colour=0x00FF00,       hand_fg_alpha=0.0,
    txt_radius=90,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0x00AAFF,        txt_fg_alpha=0.3,
    graduation_radius=100,
    graduation_thickness=20,        graduation_mark_thickness=3,
    graduation_unit_angle=30,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.1,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFF0000,    caption_fg_alpha=0.3,
},
{
    name='time',                    arg='%M',                  max_value=60,
    x=clockx,                       y=clocky,
    graph_radius=80,
    graph_thickness=15,
    graph_start_angle=0,
    graph_unit_angle=6,          graph_unit_thickness=6,
    graph_bg_colour=0x0000FF,      graph_bg_alpha=0.1,
    graph_fg_colour=0x00AAFF,      graph_fg_alpha=0.5,
    hand_fg_colour=0x00FF00,       hand_fg_alpha=0.0,
    txt_radius=90,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0x00AAFF,        txt_fg_alpha=0.3,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.1,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFF0000,    caption_fg_alpha=0.3,
},
{
    name='time',                    arg='%S',                  max_value=60,
    x=clockx,                       y=clocky,
    graph_radius=20,
    graph_thickness=20,
    graph_start_angle=0,
    graph_unit_angle=6,          graph_unit_thickness=6,
    graph_bg_colour=0x0000FF,      graph_bg_alpha=0.1,
    graph_fg_colour=0x00AAFF,      graph_fg_alpha=0.5,
    hand_fg_colour=0x00FF00,       hand_fg_alpha=0.0,
    txt_radius=90,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0x00AAFF,        txt_fg_alpha=0.3,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFF0000, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFF0000,    caption_fg_alpha=0.3,
},
{
    name='battery_percent',         arg='BAT0',                  max_value=100,
    x=clockx,                       y=clocky,
    graph_radius=65,
    graph_thickness=5,
    graph_start_angle=0,
    graph_unit_angle=3.6,          graph_unit_thickness=6,
    graph_bg_colour=0xFF0000,      graph_bg_alpha=0.3,
    graph_fg_colour=0xFF0000,      graph_fg_alpha=0.5,
    hand_fg_colour=0x00FF00,       hand_fg_alpha=0.0,
    txt_radius=90,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0x00AAFF,        txt_fg_alpha=0.3,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFF0000, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFF0000,    caption_fg_alpha=0.3,
},
{
    name='cpu',                    arg='cpu0',                  max_value=100,
    x=cpux,                        y=cpuy,
    graph_radius=70,
    graph_thickness=20,
    graph_start_angle=0.9,
    graph_unit_angle=-1.818,       graph_unit_thickness=1.818,
    graph_bg_colour=0x0000FF,      graph_bg_alpha=0.1,
    graph_fg_colour=0x00AAFF,      graph_fg_alpha=0.5,
    hand_fg_colour=0x00FF00,       hand_fg_alpha=0.0,
    txt_radius=90,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0x00AAFF,        txt_fg_alpha=0.3,
    graduation_radius=70,
    graduation_thickness=20,        graduation_mark_thickness=2,
    graduation_unit_angle=-44.99999,
    graduation_fg_colour=0xAAAAFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFF0000,    caption_fg_alpha=0.3,
},
{
    name='cpu',                    arg='cpu1',                  max_value=100,
    x=cpux,                        y=cpuy,
    graph_radius=51,
    graph_thickness=7,
    graph_start_angle=0.9,
    graph_unit_angle=-1.818,       graph_unit_thickness=1.818,
    graph_bg_colour=0x0000FF,      graph_bg_alpha=0.1,
    graph_fg_colour=0x00AAFF,      graph_fg_alpha=0.5,
    hand_fg_colour=0x00FF00,       hand_fg_alpha=0.0,
    txt_radius=90,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0x00AAFF,        txt_fg_alpha=0.3,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=18,
    graduation_fg_colour=0xFF0000, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFF0000,    caption_fg_alpha=0.3,
},
{
    name='cpu',                    arg='cpu2',                  max_value=100,
    x=cpux,                        y=cpuy,
    graph_radius=44,
    graph_thickness=7,
    graph_start_angle=0.9,
    graph_unit_angle=-1.818,       graph_unit_thickness=1.818,
    graph_bg_colour=0x0000ff,      graph_bg_alpha=0.1,
    graph_fg_colour=0x00AAFF,      graph_fg_alpha=0.5,
    hand_fg_colour=0xEF5A29,       hand_fg_alpha=0.0,
    txt_radius=62,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0x00AAFF,        txt_fg_alpha=0.3,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=18,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='cpu',                    arg='cpu3',                  max_value=100,
    x=cpux,                          y=cpuy,
    graph_radius=37,
    graph_thickness=7,
    graph_start_angle=0.9,
    graph_unit_angle=-1.818,       graph_unit_thickness=1.818,
    graph_bg_colour=0x0000ff,      graph_bg_alpha=0.1,
    graph_fg_colour=0x00AAFF,      graph_fg_alpha=0.5,
    hand_fg_colour=0xEF5A29,       hand_fg_alpha=0.0,
    txt_radius=50,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0x00AAFF,        txt_fg_alpha=0.3,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=18,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='cpu',                    arg='cpu4',                  max_value=100,
    x=cpux,                          y=cpuy,
    graph_radius=30,
    graph_thickness=7,
    graph_start_angle=0.9,
    graph_unit_angle=-1.818,       graph_unit_thickness=1.818,
    graph_bg_colour=0x0000ff,      graph_bg_alpha=0.1,
    graph_fg_colour=0x00AAFF,      graph_fg_alpha=0.5,
    hand_fg_colour=0xEF5A29,       hand_fg_alpha=0.0,
    txt_radius=22,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0x00AAFF,        txt_fg_alpha=0.3,
    graduation_radius=18,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='memperc',                arg='',                      max_value=100,
    x=cpux,                          y=cpuy,
    graph_radius=90,
    graph_thickness=15,
    graph_start_angle=180,
    graph_unit_angle=1.8,          graph_unit_thickness=1.8,
    graph_bg_colour=0x0000ff,      graph_bg_alpha=0.1,
    graph_fg_colour=0x00AAFF,      graph_fg_alpha=0.5,
    hand_fg_colour=0xEF5A29,       hand_fg_alpha=0.0,
    txt_radius=95,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0x00AAFF,        txt_fg_alpha=0.3,
    graduation_radius=70,
    graduation_thickness=20,        graduation_mark_thickness=0,
    graduation_unit_angle=-17.9999,
    graduation_fg_colour=0xAAFFFF, graduation_fg_alpha=0.5,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='fs_used_perc',           arg='/home/',                     max_value=100,
    x=drivex,                          y=drivey,
    graph_radius=73,
    graph_thickness=7,
    graph_start_angle=1.8,
    graph_unit_angle=-1.8,          graph_unit_thickness=1.8,
    graph_bg_colour=0x0000ff,      graph_bg_alpha=0.1,
    graph_fg_colour=0x00AAFF,      graph_fg_alpha=0.5,
    hand_fg_colour=0xEF5A29,       hand_fg_alpha=0.0,
    txt_radius=90,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0x00AAFF,        txt_fg_alpha=0.5,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
},
{
    name='fs_used_perc',           arg='/var/',                     max_value=100,
    x=drivex,                          y=drivey,
    graph_radius=63,
    graph_thickness=7,
    graph_start_angle=1.8,
    graph_unit_angle=-1.8,          graph_unit_thickness=1.8,
    graph_bg_colour=0x0000ff,      graph_bg_alpha=0.1,
    graph_fg_colour=0x00AAFF,      graph_fg_alpha=0.5,
    hand_fg_colour=0xEF5A29,       hand_fg_alpha=0.0,
    txt_radius=60,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0x00AAFF,        txt_fg_alpha=0.5,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0x00AAFF,    caption_fg_alpha=0.5,
},
{
    name='fs_used_perc',           arg='/',                max_value=100,
    x=drivex,                          y=drivey,
    graph_radius=53,
    graph_thickness=7,
    graph_start_angle=1.8,
    graph_unit_angle=-1.8,          graph_unit_thickness=1.8,
    graph_bg_colour=0x0000ff,      graph_bg_alpha=0.1,
    graph_fg_colour=0x00AAFF,      graph_fg_alpha=0.5,
    hand_fg_colour=0xEF5A29,       hand_fg_alpha=0.0,
    txt_radius=48,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0x00AAFF,        txt_fg_alpha=0.5,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
},
{
    name='fs_used_perc',           arg='/windows/cdrive',   max_value=100,
    x=drivex,                          y=drivey,
    graph_radius=43,
    graph_thickness=7,
    graph_start_angle=1.8,
    graph_unit_angle=-1.8,          graph_unit_thickness=1.8,
    graph_bg_colour=0x0000ff,      graph_bg_alpha=0.1,
    graph_fg_colour=0x00AAFF,      graph_fg_alpha=0.5,
    hand_fg_colour=0xEF5A29,       hand_fg_alpha=0.0,
    txt_radius=20,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0x00AAFF,        txt_fg_alpha=0.5,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
},
{
    name='fs_used_perc',           arg='/data',   max_value=100,
    x=drivex,                          y=drivey,
    graph_radius=88,
    graph_thickness=7,
    graph_start_angle=180,
    graph_unit_angle=1.8,          graph_unit_thickness=1.8,
    graph_bg_colour=0x0000ff,      graph_bg_alpha=0.1,
    graph_fg_colour=0x00AAFF,      graph_fg_alpha=0.5,
    hand_fg_colour=0xEF5A29,       hand_fg_alpha=0.0,
    txt_radius=20,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0x00AAFF,        txt_fg_alpha=0.5,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
},
{
    name='fs_used_perc',           arg='/windows/ddrive',   max_value=100,
    x=drivex,                          y=drivey,
    graph_radius=98,
    graph_thickness=7,
    graph_start_angle=180,
    graph_unit_angle=1.8,          graph_unit_thickness=1.8,
    graph_bg_colour=0x0000ff,      graph_bg_alpha=0.1,
    graph_fg_colour=0x00AAFF,      graph_fg_alpha=0.5,
    hand_fg_colour=0xEF5A29,       hand_fg_alpha=0.0,
    txt_radius=20,
    txt_weight=0,                  txt_size=0.0,
    txt_fg_colour=0x00AAFF,        txt_fg_alpha=0.5,
    graduation_radius=28,
    graduation_thickness=0,        graduation_mark_thickness=1,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.5,
},
}

-------------------------------------------------------------------------------
--                                                                 rgb_to_r_g_b
-- converts color in hexa to decimal
--
function rgb_to_r_g_b(colour, alpha)
    return ((colour / 0x10000) % 0x100) / 255., ((colour / 0x100) % 0x100) / 255., (colour % 0x100) / 255., alpha
end

-------------------------------------------------------------------------------
--                                                            angle_to_position
-- convert degree to rad and rotate (0 degree is top/north)
--
function angle_to_position(start_angle, current_angle)
    local pos = current_angle + start_angle
    return ( ( pos * (2 * math.pi / 360) ) - (math.pi / 2) )
end

-------------------------------------------------------------------------------



-------------------------------------------------------------------------------
--                                                              draw_gauge_ring
-- displays gauges
--
function draw_gauge_ring(display, data, value)
    local max_value = data['max_value']
    local x, y = data['x'], data['y']
    local graph_radius = data['graph_radius']
    local graph_thickness, graph_unit_thickness = data['graph_thickness'], data['graph_unit_thickness']
    local graph_start_angle = data['graph_start_angle']
    local graph_unit_angle = data['graph_unit_angle']
    local graph_bg_colour, graph_bg_alpha = data['graph_bg_colour'], data['graph_bg_alpha']
    local graph_fg_colour, graph_fg_alpha = data['graph_fg_colour'], data['graph_fg_alpha']
    local hand_fg_colour, hand_fg_alpha = data['hand_fg_colour'], data['hand_fg_alpha']
    local graph_end_angle = (max_value * graph_unit_angle) % 360

    -- background ring
    opstart = 0
    opend   = 0
    if graph_unit_angle > 0 then
      opstart = angle_to_position(graph_start_angle,0)
      opend   = angle_to_position(graph_start_angle,graph_end_angle)
    else
      opend   = angle_to_position(graph_start_angle,0)
      opstart = angle_to_position(graph_start_angle,graph_end_angle)
    end
    cairo_arc(display, x, y, graph_radius, opstart, opend)
    cairo_set_source_rgba(display, rgb_to_r_g_b(graph_bg_colour, graph_bg_alpha))
    cairo_set_line_width(display, graph_thickness)
    cairo_stroke(display)

    -- arc of value
    local val = value % (max_value + 1)
    local start_arc = 0
    local stop_arc = 0
    local i = 1
    while i <= val do
        start_arc = (graph_unit_angle * i) - graph_unit_thickness
        stop_arc = (graph_unit_angle * i)
        cairo_arc(display, x, y, graph_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
        cairo_set_source_rgba(display, rgb_to_r_g_b(graph_fg_colour, graph_fg_alpha))
        cairo_stroke(display)
        i = i + 1
    end
    local angle = start_arc

    -- hand
    start_arc = (graph_unit_angle * val) - (graph_unit_thickness * 2)
    stop_arc = (graph_unit_angle * val)
    cairo_arc(display, x, y, graph_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
    cairo_set_source_rgba(display, rgb_to_r_g_b(hand_fg_colour, hand_fg_alpha))
    cairo_stroke(display)

    -- graduations marks
    local graduation_radius = data['graduation_radius']
    local graduation_thickness, graduation_mark_thickness = data['graduation_thickness'], data['graduation_mark_thickness']
    local graduation_unit_angle = data['graduation_unit_angle']
    local graduation_fg_colour, graduation_fg_alpha = data['graduation_fg_colour'], data['graduation_fg_alpha']
    if graduation_radius > 0 and graduation_thickness > 0 then
        local nb_graduation = (max_value*graph_unit_angle) / graduation_unit_angle
        local i = 0
        while i < nb_graduation do
            cairo_set_line_width(display, graduation_thickness)
            start_arc = (graduation_unit_angle * i) - (graduation_mark_thickness / 2)
            stop_arc = (graduation_unit_angle * i) + (graduation_mark_thickness / 2)
            cairo_arc(display, x, y, graduation_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
            cairo_set_source_rgba(display,rgb_to_r_g_b(graduation_fg_colour,graduation_fg_alpha))
            cairo_stroke(display)
            cairo_set_line_width(display, graph_thickness)
            i = i + 1
        end
    end

    -- text
    local txt_radius = data['txt_radius']
    local txt_weight, txt_size = data['txt_weight'], data['txt_size']
    local txt_fg_colour, txt_fg_alpha = data['txt_fg_colour'], data['txt_fg_alpha']
    local movex = txt_radius * math.cos(angle_to_position(graph_start_angle, angle))
    local movey = txt_radius * math.sin(angle_to_position(graph_start_angle, angle))
    cairo_select_font_face (display, "Oxygen Sans", CAIRO_FONT_SLANT_NORMAL, txt_weight)
    cairo_set_font_size (display, txt_size)
    cairo_set_source_rgba (display, rgb_to_r_g_b(txt_fg_colour, txt_fg_alpha))
    cairo_move_to (display, x + movex - (txt_size / 2), y + movey + 3)
    cairo_show_text (display, value)
    cairo_stroke (display)

    -- caption
    local caption = data['caption']
    local caption_weight, caption_size = data['caption_weight'], data['caption_size']
    local caption_fg_colour, caption_fg_alpha = data['caption_fg_colour'], data['caption_fg_alpha']
    local tox = graph_radius * (math.cos((graph_start_angle * 2 * math.pi / 360)-(math.pi/2)))
    local toy = graph_radius * (math.sin((graph_start_angle * 2 * math.pi / 360)-(math.pi/2)))
    cairo_select_font_face (display, "Oxygen Sans", CAIRO_FONT_SLANT_NORMAL, caption_weight);
    cairo_set_font_size (display, caption_size)
    cairo_set_source_rgba (display, rgb_to_r_g_b(caption_fg_colour, caption_fg_alpha))
    cairo_move_to (display, x + tox + 5, y + toy + 1)
    -- bad hack but not enough time !
    if graph_start_angle < 105 then
        cairo_move_to (display, x + tox - 30, y + toy + 1)
    end
    cairo_show_text (display, caption)
    cairo_stroke (display)
end



-------------------------------------------------------------------------------
--                                                               go_gauge_rings
-- loads data and displays gauges
--
function go_gauge_rings(display)
    local function load_gauge_rings(display, data)
        local str, value = '', 0
        str = string.format('${%s %s}',data['name'], data['arg'])
        str = conky_parse(str)
        value = tonumber(str)
        draw_gauge_ring(display, data, value)
    end

    for i in pairs(gauge) do
        load_gauge_rings(display, gauge[i])
    end
end

-------------------------------------------------------------------------------
--                                                                         MAIN
function conky_main()
    if conky_window == nil then
        return
    end

    local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
    local display = cairo_create(cs)

    local updates = conky_parse('${updates}')
    update_num = tonumber(updates)

    if update_num > 5 then
        go_gauge_rings(display)
    end

    cairo_surface_destroy(cs)
    cairo_destroy(display)
    return ''
end
