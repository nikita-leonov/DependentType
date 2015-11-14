//: Such tooling allows us to perform boolean operations with compile time guaranatees
var b1: DependentType<Bool, True> = DependentType()
var b2: DependentType<Bool, False> = DependentType()

var step1 = !(b1&&b2)
var step2 = step1 == !b1 //Replace == with != to observer type-enforced compile-time guaranteed computation check in action.
var step3 = step1 != !step2 && b1

var result: DependentType<Bool, True> = !step3

//: All steps infer types with a proper values, since all computation happens during compile time. Any changes in bool operations in step1 - step3 that cause breach of Contract<Bool, True> will cause compile time warning.
//: Due to type language limitations (absence of dependant types) not every check is possible. Some of contracts still verified at runtime.

var unsafeBoolean = false
var unsafeResult: DependentType<Bool, True> = DependentType<Bool, True>()

//: [Back to contract operators](@previous)
