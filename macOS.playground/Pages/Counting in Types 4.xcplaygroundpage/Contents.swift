//: # Counting in Types
import TypeCount
//: ## Type Counted Arrays
typealias Of2019 = N₄<˙2,˙0,˙1,˙9>

let square: (Int) -> Int = { $0 * $0 }

let squares = TypeCountedArray<Of2019, Int>(square)

squares[7] == 49
squares[1000] == 1_000_000

squares.count == 2019
//: [→](@next)
