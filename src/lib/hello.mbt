///|
pub type Flags Int derive(Show, Eq, Compare)

///|
pub let g_READY_FLAG : Flags = 0b01

///|
pub let g_DONE_FLAG : Flags = 0b10

///|
pub let g_ERROR_FLAG : Flags = 0b11

///|
pub fn Flags::lor(self : Flags, other : Flags) -> Flags {
  self._ | other._
}

///|
pub fn Flags::land(self : Flags, other : Flags) -> Flags {
  self._ & other._
}
