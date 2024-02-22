// -----------------------------------------------------------------------------
// Workspace allocation
// -----------------------------------------------------------------------------

// The workspace is given to us a one long vector which we allocate
// like a stack
STATIC $( 
    workspace_base; 
    workspace_size; 
    workspace_free;  
$)

LET ws_init(space, size) BE $(
    workspace_base := space
    workspace_free := space
    workspace_size := size
$)

LET ws_alloc(size) = VALOF $(
    LET block = workspace_free
    workspace_free +:= size
    IF workspace_free > workspace_base + workspace_size DO cgerror("request for %N words exhausted workspace*N", size)
    RESULTIS block
$)

LET ws_mark() = workspace_free
LET ws_wipe(mark) BE workspace_free := mark
LET ws_avail() = workspace_size - (workspace_free - workspace_base)

