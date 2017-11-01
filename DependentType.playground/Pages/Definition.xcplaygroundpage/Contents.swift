//: Here are definitions of classes sufficient for enforcing contracts over Boolean type.

protocol TypeValue {
    associatedtype DependentType
    static func value() -> DependentType
}

struct False: TypeValue {
    typealias DependentType = Bool
    static func value() -> DependentType {
        return false
    }
}

struct True: TypeValue {
    typealias DependentType = Bool
    static func value() -> DependentType {
        return true
    }
}

struct DependentType<DependentType: Equatable, Expectation: TypeValue>  where Expectation.DependentType == DependentType {
    var unsafelyUnwrapped: DependentType {
        if value != Expectation.value() {
            fatalError("Initialization of \(self) not satisfying to type constraint.")
        }
        return Expectation.value()
    }
}

DependentType<Bool, True>()

//: [Next to contract operators](@next)
