//
//  MRKGenericColorExamplePresenter.swift
//  MRKViper
//
//  Created by Marc Flores on 18/11/2019.
//  Copyright © 2019 Marc Flores. All rights reserved.
//

import UIKit

class MRKGenericColorExamplePresenter: MRKPresenterBase<MRKGenericColorExampleVC,MRKGenericColorExampleInteractor,MRKGenericColorExampleWireframe>  {
    
    var color : UIColor = .clear
    var title : String = "Hello"
    var next : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewController.view.backgroundColor = color
        viewController.titleLbl.text = title
        viewController.nextVC.addTarget(self, action: #selector(didTapNext), for: .touchUpInside)
    }

    //MARK : - Actions
    
    @objc fileprivate func didTapNext(){
        wireframe.displayNextVC(viewController, index: next)
    }
}
