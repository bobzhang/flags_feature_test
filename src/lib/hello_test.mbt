///|
test "hello" {
  let a = @lib.g_READY_FLAG
  let b = @lib.g_DONE_FLAG
  // let c = @lib.op_or(a, b)
  assert_eq(Show::to_string(a | (b & @lib.g_ERROR_FLAG)), "Flags(3)")
}
