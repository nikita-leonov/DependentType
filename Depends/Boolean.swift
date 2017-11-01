//
//  Boolean.swift
//  Depends
//
//  Created by Nikita Leonov on 10/14/17.
//  Copyright © 2017 Nikita Leonov. All rights reserved.
//

public struct False: Value {
    public static func value() -> Bool {
        return false
    }
}

public struct True: Value {
    public static func value() -> Bool {
        return true
    }
}
