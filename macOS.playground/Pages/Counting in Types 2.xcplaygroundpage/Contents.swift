//: # Counting in Types
import TypeCount
//: Now, imagine too that we have a way of combining these type digits into larger, composite integer types:
enum TwoDigitInteger<Tens: TypeDigit, Units: TypeDigit> {}
//: so that we can "say" 42 at compile time:
TwoDigitInteger<˙4,˙2>.self
//: [→](@next)
