public struct TypeCountedArray<Count: TypeCount, Element> {
    
    public let startIndex: Int = 0
    public let endIndex: Int
    public let count: Int
    
    private var base: [Element]
    
    public init<Elements: Collection>(_ elements: Elements) where Elements.Element == Element {
        let count = Count.count
        precondition(elements.count == count, "ConstCountArray.Count.count \(count) != count of \(elements) \(elements.count)")
        self.count = count
        self.endIndex = count
        base = Array(elements)
    }
}

extension TypeCountedArray {
    
    public init(_ elements: Element...) {
        self.init(elements)
    }
    
    public init(repeating element: Element) {
        self.init(repeatElement(element, count: Count.count))
    }
    
    public init(_ elements: (Int) -> Element) {
        self.init((0..<Count.count).map(elements))
    }
}

extension TypeCountedArray: RandomAccessCollection {
    public subscript(position: Int) -> Element { return base[position] }
    public func index(after i: Int) -> Int { return i + 1 }
    public func index(before i: Int) -> Int { return i - 1 }
}

extension TypeCountedArray: CustomStringConvertible {
    public var description: String {
        return "<\(count), \(Element.self)>\(base)"
    }
}

public typealias EmptyArrayOf<Element> = TypeCountedArray<_0, Element>

public typealias ArrayOf1<Element> = TypeCountedArray<_1, Element>
public typealias ArrayOf2<Element> = TypeCountedArray<_2, Element>
public typealias ArrayOf3<Element> = TypeCountedArray<_3, Element>
public typealias ArrayOf4<Element> = TypeCountedArray<_4, Element>
public typealias ArrayOf5<Element> = TypeCountedArray<_5, Element>
