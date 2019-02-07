public protocol TypeCount {
    static var count: Int { get }
}

public protocol TypeDigit : TypeCount {}

public enum ˙0 : TypeDigit { public static let count = 0 }
public enum ˙1 : TypeDigit { public static let count = 1 }
public enum ˙2 : TypeDigit { public static let count = 2 }
public enum ˙3 : TypeDigit { public static let count = 3 }
public enum ˙4 : TypeDigit { public static let count = 4 }
public enum ˙5 : TypeDigit { public static let count = 5 }
public enum ˙6 : TypeDigit { public static let count = 6 }
public enum ˙7 : TypeDigit { public static let count = 7 }
public enum ˙8 : TypeDigit { public static let count = 8 }
public enum ˙9 : TypeDigit { public static let count = 9 }

public enum N₂ <T:TypeDigit, U:TypeDigit> : TypeCount {
    public static var count: Int { return 10 * T.count + U.count }
}

public enum N₃ <H:TypeDigit, T:TypeDigit, U:TypeDigit> : TypeCount {
    public static var count: Int { return 100 * H.count + 10 * T.count + U.count }
}

public enum N₄ <Th:TypeDigit, H:TypeDigit, T:TypeDigit, U:TypeDigit> : TypeCount {
    public static var count: Int { return 1000 * Th.count + 100 * H.count + 10 * T.count + U.count }
}

public enum N₅ <Tth: TypeDigit, Th:TypeDigit, H:TypeDigit, T:TypeDigit, U:TypeDigit> : TypeCount {
    public static var count: Int { return 10_000 * Tth.count + 1000 * Th.count + 100 * H.count + 10 * T.count + U.count }
}

public enum N₆ <Hth: TypeDigit, Tth: TypeDigit, Th:TypeDigit, H:TypeDigit, T:TypeDigit, U:TypeDigit> : TypeCount {
    public static var count: Int { return 100_000 * Hth.count + 10_000 * Tth.count + 1000 * Th.count + 100 * H.count + 10 * T.count + U.count }
}

public enum N₇ <M: TypeDigit, Hth: TypeDigit, Tth: TypeDigit, Th:TypeDigit, H:TypeDigit, T:TypeDigit, U:TypeDigit> : TypeCount {
    public static var count: Int { return 1000_000 * M.count + 100_000 * Hth.count + 10_000 * Tth.count + 1000 * Th.count + 100 * H.count + 10 * T.count + U.count }
}

public enum N₈ <Tm: TypeDigit, M: TypeDigit, Hth: TypeDigit, Tth: TypeDigit, Th:TypeDigit, H:TypeDigit, T:TypeDigit, U:TypeDigit> : TypeCount {
    public static var count: Int { return 10_000_000 * Tm.count + 1000_000 * M.count + 100_000 * Hth.count + 10_000 * Tth.count + 1000 * Th.count + 100 * H.count + 10 * T.count + U.count }
}

public enum N₉ <Hm: TypeDigit, Tm: TypeDigit, M: TypeDigit, Hth: TypeDigit, Tth: TypeDigit, Th:TypeDigit, H:TypeDigit, T:TypeDigit, U:TypeDigit> : TypeCount {
    public static var count: Int { return 100_000_000 * Hm.count + 10_000_000 * Tm.count + 1000_000 * M.count + 100_000 * Hth.count + 10_000 * Tth.count + 1000 * Th.count + 100 * H.count + 10 * T.count + U.count }
}

