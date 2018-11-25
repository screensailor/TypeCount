//: # Counting in Types
import TypeCount
//: Say that we have a series of types that represents decimal digits - for example:
_1.self
_2.self
_3.self
//...
_8.self
_9.self
//: and, crucially:
_0.self
//: Now, imagine too that we have a way of combining these type digits into larger, composite integer types:
enum TwoDigitInteger<Tens: TypeDigit, Units: TypeDigit> {}
//: so that we can "say" 42 at compile time:
TwoDigitInteger<_4, _2>.self
//: Now, remember how in Swift floating point literals can be expressed using decimal exponent notation. For instance:
0.2018_e4 // is equal to 0.2018 * pow(10, 4), or 2018
//: well, we could similarly define types `e2`, `e3`, `e4`, etc., such that, for example:
typealias Of2018 = e4<_2,_0,_1,_8>

Of2018.count == 2018
//: We now have a type that says "2018". Let's us it:
//: ## Type Counted Arrays
let square: (Int) -> Int = { $0 * $0 }

let squares = TypeCountedArray<Of2018, Int>(square)
squares[7] == 49
squares[1000] == 1_000_000
squares.count == 2018
//: Adding a few typealiases to sweeten the deal:
let three = ArrayOf3(1, 2, 3)
let five: ArrayOf5<Int> = .init(1...5)
//: We can imagine all kinds of API that would either produce or consume such counted arrays:
func make42<Repeated>(_ repeated: Repeated) -> TypeCountedArray<e2<_4,_2>, Repeated> {
    return .init(repeating: repeated)
}

func must<Element>(be42: TypeCountedArray<e2<_4,_2>, Element>) {
    print("It better be \(be42.count)")
}

let fourtyTwo = make42("Answer to everything.")

must(be42: fourtyTwo)
