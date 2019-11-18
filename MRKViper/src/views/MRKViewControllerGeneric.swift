//
//  MRKViewControllerGeneric.swift
//  mrkViper
//
//  Created by Marc Flores on 23/12/2018.
//  Copyright © 2018 Marc Flores. All rights reserved.
//

import UIKit

public protocol MRKViewControllerGeneric : class where Self : UIViewController {
    var presenter : MRKPresenterGeneric? { get set }
}

open class MRKViewControllerBase : UIViewController, MRKViewControllerGeneric {
    
    public var presenter: MRKPresenterGeneric?
 
    //MARK : - Binding
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    
    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.viewWillAppear()
    }
    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter?.viewDidAppear()
    }
    open override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        presenter?.viewWillDisappear()
    }
    open override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        presenter?.viewDidDisappear()
    }
}
