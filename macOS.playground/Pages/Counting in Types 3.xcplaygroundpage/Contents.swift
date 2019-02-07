//: # Counting in Types
import TypeCount
//: Remember how in Swift floating point literals can be expressed using decimal exponent notation. For instance:
0.2018_E4 // is equal to 0.2018 * pow(10, 4), or 2018
//: well, we could similarly define types `E₂`, `E₃`, `E₄`, etc., or `N₂`, `N₃`, `N₄`, etc., such that, for example:
typealias Of2019 = N₄<˙2,˙0,˙1,˙9>
//: We now have a type that says "2019":
Of2019.count
//: [→](@next)
