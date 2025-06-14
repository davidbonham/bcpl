GET "libhdr"

LET random(limit) = VALOF $(
    STATIC $( seed = 1 $)
    seed := (164603309694725029 * seed) REM 14738995463583502973
    RESULTIS seed REM limit
$)

LET partition_range(vector, left, right) = VALOF $(
    LET pivot = vector!left
    LET left_cursor, right_cursor = left-1, right+1

    $(
        LET t = ?
        left_cursor  := left_cursor + 1  REPEATWHILE vector!left_cursor  < pivot
        right_cursor := right_cursor - 1 REPEATWHILE vector!right_cursor > pivot
        IF left_cursor >= right_cursor RESULTIS right_cursor

        t, vector!left_cursor, vector!right_cursor := vector!left_cursor, vector!right_cursor, t
    $) REPEAT
$)

LET quicksort_range(vector, left, right) BE IF left < right THEN $(
    LET pivot = partition_range(vector, left, right)
    quicksort_range(vector, left, pivot)
    quicksort_range(vector, pivot+1, right)
$)

LET quicksort(vector, size) BE quicksort_range(vector, 0, size)

MANIFEST $( SIZE = 1000000 $)

LET start() = VALOF $(
    LET data = VEC SIZE
    FOR i = 0 TO SIZE-1 DO data!i := random(1000000)
    quicksort(data,SIZE)
    FOR i = 0 TO SIZE-1 BY SIZE/10 DO writef("%n: %n*n", i, data!i)
    RESULTIS 0
$)