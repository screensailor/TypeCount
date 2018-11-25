# TypeCount
_Counting with types, for example, to statically define collection sizes._

Open `TypeCount.xcworkspace` in Xcode, build `TypeCount-Package` and check out the `macOS.playground` therein. 

Here's a taster:

```swift
typealias Of2018 = e4<_2,_0,_1,_8>

let square: (Int) -> Int = { $0 * $0 }

let squares = TypeCountedArray<Of2018, Int>(square)

squares[7] //→ 49
squares[1000] //→ 1_000_000
squares.count //→ 2018
```
