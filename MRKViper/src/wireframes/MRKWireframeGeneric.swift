//
//  MRKWireframeGeneric.swift
//  mrkViper
//
//  Created by Marc Flores on 23/12/2018.
//  Copyright © 2018 Marc Flores. All rights reserved.
//

import Foundation

public protocol MRKWireframeGeneric : class where Self:NSObject {
    var presenter : MRKPresenterGeneric? { get set }
}

open class MRKWireframeBase : NSObject, MRKWireframeGeneric {
    
    weak public var presenter : MRKPresenterGeneric?
    
    required public override init() {
        super.init()
    }
}
