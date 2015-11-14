//: Here are definitions of classes sufficient for enforcing contracts over Boolean type.

protocol TypeValue {
    typealias DependentType
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

struct DependentType<DependentType: Equatable, Expectation: TypeValue where Expectation.DependentType == DependentType> {
    var unsafeValue: DependentType {
        return Expectation.value()
    }
    
    init(value: DependentType = Expectation.value()) {
        if value != Expectation.value() {
            fatalError("Initialization of \(self) not satisfying to type constraint.")
        }
    }
}

DependentType<Bool, True>()

//: [Next to contract operators](@next)
