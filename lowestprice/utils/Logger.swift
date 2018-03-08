//
//  Logger.swift
//  lowestprice
//
//  Created by kamontat chantrachirathumrong on 25/2/18.
//  Copyright © 2018 kamontat. All rights reserved.
//

import Foundation

class Logger {
    private let TAG = "LOWEST_PRICE"
    private let name = "kamontat"

    private func getDatatime() -> String {
        return DateFormatter.localizedString(from: Date(), dateStyle: .medium, timeStyle: .short)
    }

    func print(key: String, items: Any?...) {
        Swift.print("[\(getDatatime())] \(TAG) - \(name) - \(key): ", items)
    }

    static let _get = Logger()
}
