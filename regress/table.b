GET "libhdr"

LET is_false(condition) BE wrch(condition -> 'N', 'Y')
LET is_true(condition) BE wrch(condition -> 'Y', 'N')


LET start(a) BE  $(
   LET x = TABLE 10, 20, 30
   LET y = TABLE 'Y', 'N', 'Y'
   LET z = 2
   is_true(x!0 = 10)
   is_true(1!x = 20)
   is_true(x!2 = 30)
   wrch(y!0)
   wrch(y!z)
$)
