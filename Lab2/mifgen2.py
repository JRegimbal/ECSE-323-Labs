print ("DEPTH = 64;\nWIDTH = 52;")
print ("ADDRESS_RADIX=HEX;\nDATA_RADIX=BIN;")

print("CONTENT")
print("BEGIN")

for x in range(0, 52):
    p1 = ''
    p0 = ''
    p0 = p0.rjust(x, '0')
    p1 = p1.rjust(52-x, '1')
    print ("%s : %s%s;" % (hex(x)[2:], p0, p1))

for x in range(52, 64):
    out = ''
    out = out.rjust(52, '1')
    print ("%s : %s;" % (hex(x)[2:], out))

print ("END;")
