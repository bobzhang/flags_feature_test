///|
#derive(Debug, Eq, Compare)
pub struct Flags(Int32)

///|
pub let g_READY_FLAG : Flags = Flags(0b01)

///|
pub let g_DONE_FLAG : Flags = Flags(0b10)

///|
pub let g_ERROR_FLAG : Flags = Flags(0b11)

///|
pub impl BitOr for Flags with fn lor(self, other) {
  Flags(self.0 | other.0)
}

///|
pub impl BitAnd for Flags with fn land(self, other) {
  Flags(self.0 & other.0)
}

///|
pub extend Flags with BitOr::{lor}

///|
pub extend Flags with BitAnd::{land}

///|
pub impl Show for Flags with fn output(self, logger) {
  logger.write_string("Flags(\{self.0})")
}
