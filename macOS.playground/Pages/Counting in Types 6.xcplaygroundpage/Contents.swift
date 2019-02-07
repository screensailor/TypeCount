//: # Counting in Types
import TypeCount
//: We can imagine all kinds of API that would either produce:
func make42<X>(_ x: X) -> TypeCountedArray<N₂<˙4,˙2>, X> {
    return .init(repeating: x)
}
//: ... or consume such counted arrays:
func must<Element>(be42: TypeCountedArray<N₂<˙4,˙2>, Element>) -> Bool {
    return be42.count == 42
}

let fourtyTwo = make42("Answer to everything.")

must(be42: fourtyTwo)
//: [→](@next)
