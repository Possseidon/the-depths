import sys


small_capitals = "ᴀʙᴄᴅᴇꜰɢʜɪᴊᴋʟᴍɴᴏᴘǫʀꜱᴛᴜᴠᴡxʏᴢ"


def convert(text: str, font: str) -> str:
    return "".join(map(lambda char: font[code - ord('A')] if ord('A') <= (code := ord(char.upper())) <= ord('Z') else char, text))


def main():
    print(convert(" ".join(sys.argv[1:]), small_capitals))


if __name__ == "__main__":
    main()
