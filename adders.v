module adders (input a,b,c, output ha_sum, ha_carry, fa_sum, fa_carry);

// half_adder

 assign ha_sum=a^b;

 assign ha_carry=a&b;

 // full_adder

 assign fa_sum=a^b^c;

 assign fa_carry=a&b&C;

 endmodule
