//
//  MRKGenericBuilder.swift
//  mrkViper
//
//  Created by Marc Flores on 23/12/2018.
//  Copyright © 2018 Marc Flores. All rights reserved.
//

import Foundation
import UIKit


public typealias MRKBuilderComponents<V:MRKViewControllerBase,I:MRKInteractorBase,
    W:MRKWireframeBase,P:MRKPresenterBase<V,I,W>> = ( viewController:V, interactor:I, wireframe:W, presenter:P)

public func MRKBuilder<
    V:MRKViewControllerBase,
    I:MRKInteractorBase,
    W:MRKWireframeBase,
    P:MRKPresenterBase<V,I,W>>( _ PresenterType:P.Type ) -> MRKBuilderComponents<V,I,W,P> {
    
    let viewController = V()
    let interactor = I.init()
    let presenter = P.init()
    let wireframe = W.init()
    
    interactor.presenter = presenter
    presenter.interactor = interactor
    presenter.viewController = viewController
    presenter.wireframe = wireframe
    viewController.presenter = presenter
    
    return (viewController, interactor, wireframe, presenter)
}
