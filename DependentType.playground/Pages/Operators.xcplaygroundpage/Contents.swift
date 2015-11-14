//: To be sure that we as close as possible to an actual Bool type we defining boolean operators for the contract type

//: !
prefix func !(value: DependentType<Bool, False>) -> DependentType<Bool, True> {
    return DependentType<Bool, True>()
}

prefix func !(value: DependentType<Bool, True>) -> DependentType<Bool, False> {
    return DependentType<Bool, False>()
}

//: &&
func &&(left: DependentType<Bool, True>, right: DependentType<Bool, False>) -> DependentType<Bool, False> {
    return DependentType<Bool, False>()
}

func &&(left: DependentType<Bool, False>, right: DependentType<Bool, True>) -> DependentType<Bool, False> {
    return DependentType<Bool, False>()
}

func &&(left: DependentType<Bool, False>, right: DependentType<Bool, False>) -> DependentType<Bool, False> {
    return DependentType<Bool, False>()
}

func &&(left: DependentType<Bool, True>, right: DependentType<Bool, True>) -> DependentType<Bool, True> {
    return DependentType<Bool, True>()
}

//: Etc, other oeprators defined in sources.

//: [Back to boolean contract definition](@previous) | [Next to contract use cases](@next)
