for x in range (0, 52):
    z = '000000000000'
    a = ''
    b = ''
    a = a.rjust(x, '0')
    b = b.rjust(52 - x, '1')
    print "%s : %s%s%s;" % (hex(x)[2:], z, b, a)
