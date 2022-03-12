import itertools
import json


def tellraw(text: object, precondition: str = None):
    out(f'{"execute " + precondition + " run " if precondition else ""}tellraw @s {json.dumps(text, ensure_ascii=False, separators=(",", ":"))}')


def switch(trigger: str, direction: int, enabled: bool = True):
    result = {
        'text': f'{"§9" if enabled else "§7"}[{"+" if direction > 0 else "-"}]'
    }
    if enabled:
        result['clickEvent'] = {'action': 'run_command',
                                'value': f'/trigger {trigger} add {direction}'}
    return result


def show_size(display, objective):
    min_check = f'if score map_{objective} settings = min_size const'
    max_check = f'if score map_{objective} settings = max_size const'
    else_check = f'if score map_{objective} settings > min_size const if score map_{objective} settings < max_size const'

    for check, can_dec, can_inc in [(min_check, False, True),
                                    (max_check, True, False),
                                    (else_check, True, True)]:
        tellraw([display,
                switch(f'map_{objective}', -1, can_dec),
                "§8." + 4 * " ",
                 {"score": {"name": f"map_{objective}",
                            "objective": "settings"},
                 "color": "green"},
                 5 * " ",
                 switch(f'map_{objective}', 1, can_inc)],
                precondition=check)


tellraw(10 * "\n" + f'§e§n{"- ꜱᴇᴛᴛɪɴɢꜱ -":^39}\n')

show_size("§bᴍᴀᴘ-ᴡɪᴅᴛʜ:§8.           ", "width")
show_size("§bᴍᴀᴘ-ʜᴇɪɢʜᴛ:          ", "height")

tellraw(3 * "\n")

generation_speed_displays = ["§8.   §cᴏꜰꜰ   ",
                             "§8.  §6ꜱʟᴏᴡ  §8.",
                             " §eɴᴏʀᴍᴀʟ ",
                             "§8.  §aꜰᴀꜱᴛ  §8.",
                             "§8.§dɪɴꜱᴛᴀɴᴛ§8."]

generation_speed_modes = itertools.product(
    enumerate(generation_speed_displays),
    [(1, 0, 0, "if score generation_ticks var matches -1"),
     (0, 1, 0, "if score generation_ticks var matches 0 if score generation_hundreds var matches 10.."),
     (0, 1, 1, "if score generation_ticks var matches 0 if score generation_hundreds var matches ..9"),
     (0, 0, 0, "if score generation_ticks var matches 1.. if score generation_hundreds var matches 10.."),
     (0, 0, 1, "if score generation_ticks var matches 1.. if score generation_hundreds var matches ..9")]
)

for (generation_speed, generation_speed_display), (is_off, is_instant, is_low_hundreds, precondition) in generation_speed_modes:
    tellraw(['§bɢᴇɴᴇʀᴀᴛɪᴏɴ-ꜱᴘᴇᴇᴅ: ',
             switch('generation_speed', -1, generation_speed > 0),
             f"{generation_speed_display}",
             switch('generation_speed', 1, generation_speed <
                    len(generation_speed_displays) - 1),
             " ",
             "§b= §dɪɴꜰ" if is_off
             else {"text": "§b= " if is_instant else "§b≤ ",
                   "color": "green",
                   "extra": [
                       {"score": {"name": "generation_sec",
                                  "objective": "var"}},
                       ".",
                       "0" if is_low_hundreds else "",
                       {"score": {"name": "generation_hundreds",
                                  "objective": "var"}}]},
             " §bꜱᴇᴄ"],
            precondition=f'if score generation_speed settings matches {generation_speed} {precondition}')


tellraw("")
