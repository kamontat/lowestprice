//
//  CalculateController.swift
//  lowestprice
//
//  Created by kamontat chantrachirathumrong on 25/2/18.
//  Copyright © 2018 kamontat. All rights reserved.
//

import Foundation

class CalculateController {
    private var viewController: CalculateViewController

    init(viewController: CalculateViewController) {
        self.viewController = viewController
    }

    func setupAction() {
        Logger._get.print(items: "Setup")
         // print("Setup")
    }
}
