level_names = [
    '§2ᴠᴀʟʟᴇʏ',
    '§6ʟɪʙʀᴀʀʏ',
    '§9ᴄᴀᴠᴇʀɴꜱ',
    '§5ᴅᴜɴɢᴇᴏɴ',
    '§4ʜᴇʟʟ',
]

for level_index, level_name in enumerate(level_names, 1):
    advancements = f'td:progression/level{level_index}/spawn=true'
    if level_index < len(level_names):
        advancements += f',td:progression/level{level_index + 1}/spawn=false'
    out(f'title @s[advancements={{{advancements}}}] actionbar ["{level_name}", " §e- Lᴇᴠᴇʟ {level_index} - ", "§6ɢᴏʟᴅ: ", {{"score": {{"name": "@s", "objective": "gold"}}, "color": "yellow"}}]')
