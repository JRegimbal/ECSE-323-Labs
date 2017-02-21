for i in range(0, 52):
    print("S%i : g55_stack_slot generic map (WIDTH => 6, INIT => %i)" % (i, i))
    print("   port map (dataa => q(%i), datab => q(%i), sel => push, clk => clk, aclr => rst, enable => enableArray(%i), sset => init, q => q(%i));" % (i-1, i+1, i, i))

