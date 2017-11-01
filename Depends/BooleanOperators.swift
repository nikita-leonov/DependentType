//
//  BooleanOperators.swift
//  Depends
//
//  Created by Nikita Leonov on 10/14/17.
//  Copyright © 2017 Nikita Leonov. All rights reserved.
//

//MARK: - ==
public func ==(left: Type<Bool, True>, right: Type<Bool, False>) -> Type<Bool, False> {
    return Type()
}

public func ==(left: Type<Bool, False>, right: Type<Bool, True>) -> Type<Bool, False> {
    return Type()
}

public func ==(left: Type<Bool, False>, right: Type<Bool, False>) -> Type<Bool, True> {
    return Type()
}

public func ==(left: Type<Bool, True>, right: Type<Bool, True>) -> Type<Bool, True> {
    return Type()
}

//MARK: - !
public prefix func !(value: Type<Bool, False>) -> Type<Bool, True> {
    return Type()
}

public prefix func !(value: Type<Bool, True>) -> Type<Bool, False> {
    return Type()
}

//MARK: - !=
public func !=(left: Type<Bool, True>, right: Type<Bool, False>) -> Type<Bool, True> {
    return !(left == right)
}

public func !=(left: Type<Bool, False>, right: Type<Bool, True>) -> Type<Bool, True> {
    return !(left == right)
}

public func !=(left: Type<Bool, False>, right: Type<Bool, False>) -> Type<Bool, False> {
    return !(left == right)
}

public func !=(left: Type<Bool, True>, right: Type<Bool, True>) -> Type<Bool, False> {
    return !(left == right)
}

//MARK: - &&
public func &&(left: Type<Bool, True>, right: Type<Bool, False>) -> Type<Bool, False> {
    return Type()
}

public func &&(left: Type<Bool, False>, right: Type<Bool, True>) -> Type<Bool, False> {
    return Type()
}

public func &&(left: Type<Bool, False>, right: Type<Bool, False>) -> Type<Bool, False> {
    return Type()
}

public func &&(left: Type<Bool, True>, right: Type<Bool, True>) -> Type<Bool, True> {
    return Type()
}

//MARK: - ||
public func ||(left: Type<Bool, True>, right: Type<Bool, False>) -> Type<Bool, True> {
    return Type()
}

public func ||(left: Type<Bool, False>, right: Type<Bool, True>) -> Type<Bool, True> {
    return Type()
}

public func ||(left: Type<Bool, False>, right: Type<Bool, False>) -> Type<Bool, False> {
    return Type()
}

public func ||(left: Type<Bool, True>, right: Type<Bool, True>) -> Type<Bool, True> {
    return Type()
}

