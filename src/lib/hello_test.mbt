///|
test "hello" {
  let a = @lib.g_READY_FLAG
  let b = @lib.g_DONE_FLAG
  // let c = @lib.op_or(a, b)
  inspect!(a | (b & @lib.g_ERROR_FLAG), content="Flags(3)")
}
