import Foundation

public protocol TypeValue {
    typealias DependentType
    static func value() -> DependentType
}

public struct False: TypeValue {
    public typealias DependentType = Bool
    public static func value() -> DependentType {
        return false
    }
}

public struct True: TypeValue {
    public typealias DependentType = Bool
    public static func value() -> DependentType {
        return true
    }
}

public struct DependentType<DependentType: Equatable, Expectation: TypeValue where Expectation.DependentType == DependentType> {
    public var unsafeValue: DependentType {
        return Expectation.value()
    }
    
    public init(value: DependentType = Expectation.value()) {
        if value != Expectation.value() {
            fatalError("Initialization of \(self) not satisfying to type constraint.")
        }
    }
}

//: ==
public func ==(left: DependentType<Bool, True>, right: DependentType<Bool, False>) -> DependentType<Bool, False> {
    return DependentType()
}

public func ==(left: DependentType<Bool, False>, right: DependentType<Bool, True>) -> DependentType<Bool, False> {
    return DependentType()
}

public func ==(left: DependentType<Bool, False>, right: DependentType<Bool, False>) -> DependentType<Bool, True> {
    return DependentType()
}

public func ==(left: DependentType<Bool, True>, right: DependentType<Bool, True>) -> DependentType<Bool, True> {
    return DependentType()
}

//: !
public prefix func !(value: DependentType<Bool, False>) -> DependentType<Bool, True> {
    return DependentType()
}

public prefix func !(value: DependentType<Bool, True>) -> DependentType<Bool, False> {
    return DependentType()
}

//: !=
public func !=(left: DependentType<Bool, True>, right: DependentType<Bool, False>) -> DependentType<Bool, True> {
    return !(left == right)
}

public func !=(left: DependentType<Bool, False>, right: DependentType<Bool, True>) -> DependentType<Bool, True> {
    return !(left == right)
}

public func !=(left: DependentType<Bool, False>, right: DependentType<Bool, False>) -> DependentType<Bool, False> {
    return !(left == right)
}

public func !=(left: DependentType<Bool, True>, right: DependentType<Bool, True>) -> DependentType<Bool, False> {
    return !(left == right)
}

//: &&
public func &&(left: DependentType<Bool, True>, right: DependentType<Bool, False>) -> DependentType<Bool, False> {
    return DependentType()
}

public func &&(left: DependentType<Bool, False>, right: DependentType<Bool, True>) -> DependentType<Bool, False> {
    return DependentType()
}

public func &&(left: DependentType<Bool, False>, right: DependentType<Bool, False>) -> DependentType<Bool, False> {
    return DependentType()
}

public func &&(left: DependentType<Bool, True>, right: DependentType<Bool, True>) -> DependentType<Bool, True> {
    return DependentType()
}

//: ||
public func ||(left: DependentType<Bool, True>, right: DependentType<Bool, False>) -> DependentType<Bool, True> {
    return DependentType()
}

public func ||(left: DependentType<Bool, False>, right: DependentType<Bool, True>) -> DependentType<Bool, True> {
    return DependentType()
}

public func ||(left: DependentType<Bool, False>, right: DependentType<Bool, False>) -> DependentType<Bool, False> {
    return DependentType()
}

public func ||(left: DependentType<Bool, True>, right: DependentType<Bool, True>) -> DependentType<Bool, True> {
    return DependentType()
}