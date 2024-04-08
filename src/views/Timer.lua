return {
    name = "Timer",
    draw = function()
        if ugui.button({
                uid = 10,

                rectangle = grid_rect(0, 0, 2, 1),
                text = "Start"
            }) then
            Timer.start()
        end
        if ugui.button({
                uid = 15,

                rectangle = grid_rect(2, 0, 2, 1),
                text = "Stop"
            }) then
            Timer.stop()
        end
        if ugui.button({
                uid = 20,

                rectangle = grid_rect(4, 0, 2, 1),
                text = "Reset"
            }) then
            Timer.reset()
        end
        is_control_automatic = ugui.toggle_button({
            uid = 25,
            rectangle = grid_rect(6, 0, 2, 1),
            text = is_control_automatic and "Auto" or "Manual",
            is_checked = is_control_automatic
        })
        ugui.joystick({
            uid = 30,
            rectangle = grid_rect(2, 1, 4, 4),
            position = {
                x = ugui.internal.remap(Joypad.input.X, -128, 128, 0, 1),
                y = ugui.internal.remap(-Joypad.input.Y, -128, 128, 0, 1),
            },
            mag = 0
        })

        BreitbandGraphics.draw_text(grid_rect(0, 5, 8, 1), "center", "center",
            { aliased = Presets.styles[Settings.active_style_index].theme.pixelated_text },
            BreitbandGraphics.invert_color(Presets.styles[Settings.active_style_index].theme.background_color),
            Presets.styles[Settings.active_style_index].theme.font_size * Drawing.scale * 2,
            "Consolas",
            Timer.get_frame_text())

        ugui.toggle_button({
            uid = 35,

            rectangle = grid_rect(4, 6, 2),
            text = "A",
            is_checked = Joypad.input.A
        })

        ugui.toggle_button({
            uid = 40,

            rectangle = grid_rect(2, 6, 2),
            text = "B",
            is_checked = Joypad.input.B
        })

        ugui.toggle_button({
            uid = 45,

            rectangle = grid_rect(3, 8, 1),
            text = "Z",
            is_checked = Joypad.input.Z
        })

        ugui.toggle_button({
            uid = 50,

            rectangle = grid_rect(4, 8, 1),
            text = "S",
            is_checked = Joypad.input.start
        })

        ugui.toggle_button({
            uid = 55,

            rectangle = grid_rect(1, 7),
            text = "L",
            is_checked = Joypad.input.L
        })

        ugui.toggle_button({
            uid = 60,

            rectangle = grid_rect(6, 7),
            text = "R",
            is_checked = Joypad.input.R
        })

        ugui.toggle_button({
            uid = 65,
            rectangle = grid_rect(0, 7),
            text = "D<",
            is_checked = Joypad.input.left
        })

        ugui.toggle_button({
            uid = 70,
            rectangle = grid_rect(2, 7),
            text = "D>",
            is_checked = Joypad.input.right
        })

        ugui.toggle_button({
            uid = 75,
            rectangle = grid_rect(1, 6),
            text = "D^",
            is_checked = Joypad.input.up
        })

        ugui.toggle_button({
            uid = 80,
            rectangle = grid_rect(1, 8),
            text = "Dv",
            is_checked = Joypad.input.down
        })

        ugui.toggle_button({
            uid = 85,
            rectangle = grid_rect(5, 7),
            text = "C<",
            is_checked = Joypad.input.Cleft
        })

        ugui.toggle_button({
            uid = 90,
            rectangle = grid_rect(7, 7),
            text = "C>",
            is_checked = Joypad.input.Cright
        })

        ugui.toggle_button({
            uid = 95,
            rectangle = grid_rect(6, 6),
            text = "C^",
            is_checked = Joypad.input.Cup
        })

        ugui.toggle_button({
            uid = 100,
            rectangle = grid_rect(6, 8),
            text = "Cv",
            is_checked = Joypad.input.Cdown
        })

        ugui.listbox({
            uid = 105,
            rectangle = grid_rect(0, 9, 8, 6),
            selected_index = nil,
            items = VarWatch.processed_values,
        })
    end
}
