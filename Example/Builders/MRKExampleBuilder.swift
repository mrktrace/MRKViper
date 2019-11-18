//
//  MRKExampleBuilder.swift
//  MRKViper
//
//  Created by Marc Flores on 18/11/2019.
//  Copyright © 2019 Marc Flores. All rights reserved.
//

import Foundation

struct MRKBlueExampleBuilder {
    static func build ( ) -> MRKViewControllerBase {
        let c = MRKBuilder(MRKGenericColorExamplePresenter.self)
        c.presenter.color = .blue
        c.presenter.title = "Blue screen"
        c.presenter.next = 2
        return c.viewController
    }
}

struct MRKRedExampleBuilder {
    static func build ( ) -> MRKViewControllerBase {
        let c = MRKBuilder(MRKGenericColorExamplePresenter.self)
        c.presenter.color = .red
        c.presenter.title = "Red screen"
        c.presenter.next = 1
        return c.viewController
    }
}

struct MRKYellowExampleBuilder {
    static func build ( ) -> MRKViewControllerBase {
        let c = MRKBuilder(MRKGenericColorExamplePresenter.self)
        c.presenter.color = .yellow
        c.presenter.title = "Yellow screen"
        c.presenter.next = 0
        return c.viewController
    }
}
