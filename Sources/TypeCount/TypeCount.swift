public protocol TypeCount {
    static var count: Int { get }
}

public protocol TypeDigit : TypeCount {}

public enum _0 : TypeDigit { public static let count = 0 }
public enum _1 : TypeDigit { public static let count = 1 }
public enum _2 : TypeDigit { public static let count = 2 }
public enum _3 : TypeDigit { public static let count = 3 }
public enum _4 : TypeDigit { public static let count = 4 }
public enum _5 : TypeDigit { public static let count = 5 }
public enum _6 : TypeDigit { public static let count = 6 }
public enum _7 : TypeDigit { public static let count = 7 }
public enum _8 : TypeDigit { public static let count = 8 }
public enum _9 : TypeDigit { public static let count = 9 }

public enum e2 <T:TypeDigit, U:TypeDigit> : TypeCount {
    public static var count: Int { return 10 * T.count + U.count }
}

public enum e3 <H:TypeDigit, T:TypeDigit, U:TypeDigit> : TypeCount {
    public static var count: Int { return 100 * H.count + 10 * T.count + U.count }
}

public enum e4 <Th:TypeDigit, H:TypeDigit, T:TypeDigit, U:TypeDigit> : TypeCount {
    public static var count: Int { return 1000 * Th.count + 100 * H.count + 10 * T.count + U.count }
}

public enum e5 <Tth: TypeDigit, Th:TypeDigit, H:TypeDigit, T:TypeDigit, U:TypeDigit> : TypeCount {
    public static var count: Int { return 10_000 * Tth.count + 1000 * Th.count + 100 * H.count + 10 * T.count + U.count }
}

public enum e6 <Hth: TypeDigit, Tth: TypeDigit, Th:TypeDigit, H:TypeDigit, T:TypeDigit, U:TypeDigit> : TypeCount {
    public static var count: Int { return 100_000 * Hth.count + 10_000 * Tth.count + 1000 * Th.count + 100 * H.count + 10 * T.count + U.count }
}

public enum e7 <M: TypeDigit, Hth: TypeDigit, Tth: TypeDigit, Th:TypeDigit, H:TypeDigit, T:TypeDigit, U:TypeDigit> : TypeCount {
    public static var count: Int { return 1000_000 * M.count + 100_000 * Hth.count + 10_000 * Tth.count + 1000 * Th.count + 100 * H.count + 10 * T.count + U.count }
}

public enum e8 <Tm: TypeDigit, M: TypeDigit, Hth: TypeDigit, Tth: TypeDigit, Th:TypeDigit, H:TypeDigit, T:TypeDigit, U:TypeDigit> : TypeCount {
    public static var count: Int { return 10_000_000 * Tm.count + 1000_000 * M.count + 100_000 * Hth.count + 10_000 * Tth.count + 1000 * Th.count + 100 * H.count + 10 * T.count + U.count }
}

public enum e9 <Hm: TypeDigit, Tm: TypeDigit, M: TypeDigit, Hth: TypeDigit, Tth: TypeDigit, Th:TypeDigit, H:TypeDigit, T:TypeDigit, U:TypeDigit> : TypeCount {
    public static var count: Int { return 100_000_000 * Hm.count + 10_000_000 * Tm.count + 1000_000 * M.count + 100_000 * Hth.count + 10_000 * Tth.count + 1000 * Th.count + 100 * H.count + 10 * T.count + U.count }
}

