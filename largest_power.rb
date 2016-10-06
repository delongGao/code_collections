# Find the largest power of 2 (most significant bit in binary form), which is less than or equal to the given number N.

def largest_power(N)
  # changing all right side bits to 1.
  # the reason for not shifting 31 bit directly from the very begining is that
  # we care about power of 2 specifically in this example, which will explain
  # why the bit got shifted are all 2 based, but I'm still confused why not
  # always do 2? Instead we increament by exponential?
  N = N | (N>>1)
  N = N | (N>>2)
  N = N | (N>>4)
  N = N | (N>>8)
  N = N | (N>>16)
  return (N+1)>>1
end
