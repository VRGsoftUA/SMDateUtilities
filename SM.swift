//
//  SM.swift
//  SM
//
//  Created by kudlay on 5/21/19.
//  Copyright © 2019 VRGSoft. All rights reserved.
//

public struct SM<Base> {
    
    public let base: Base
    
    public init(_ base: Base) {
        
        self.base = base
    }
}

public protocol SMCompatible {
    
    associatedtype SMBase
    
    static var sm: SM<SMBase>.Type { get set }
    
    var sm: SM<SMBase> { get set }
}

extension SMCompatible {
    
    public static var sm: SM<Self>.Type {
        get {
            return SM<Self>.self
        }
        set { }
    }
    
    public var sm: SM<Self> {
        get {
            return SM(self)
        }
        set { }
    }
}
