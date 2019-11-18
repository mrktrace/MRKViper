//
//  MRKPresenterGeneric.swift
//  mrkViper
//
//  Created by Marc Flores on 23/12/2018.
//  Copyright © 2018 Marc Flores. All rights reserved.
//

import Foundation

public protocol MRKPresenterGeneric : class where Self:NSObject {
    
    //MARK : View Controller cycle
    
    func viewDidLoad()
    func viewWillAppear()
    func viewDidAppear()
    func viewWillDisappear()
    func viewDidDisappear()
}

open class MRKPresenterBase<V:MRKViewControllerGeneric, I:MRKInteractorGeneric, W:MRKWireframeGeneric> : NSObject, MRKPresenterGeneric {
    
    public weak var viewController: V!
    public var wireframe: W!
    public var interactor: I!

    required public override init() {
        super.init()
        //TODO
    }
    
    //MARK : View Controller cycle
    open func viewDidLoad() {}
    open func viewWillAppear() {}
    open func viewDidAppear() {}
    open func viewWillDisappear() {}
    open func viewDidDisappear() {}
}
