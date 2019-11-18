//
//  MRKGenericColorExampleWireframe.swift
//  MRKViper
//
//  Created by Marc Flores on 18/11/2019.
//  Copyright © 2019 Marc Flores. All rights reserved.
//

import UIKit

class MRKGenericColorExampleWireframe: MRKWireframeBase {
    func displayNextVC( _ vc:UIViewController, index:Int ) {
        let nextVC = [ MRKBlueExampleBuilder.build(),
                       MRKYellowExampleBuilder.build(),
                       MRKRedExampleBuilder.build() ][index]
        vc.navigationController?.pushViewController(nextVC, animated: true)
    }
}
