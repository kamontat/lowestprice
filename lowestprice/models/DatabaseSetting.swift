//
//  DatabaseSetting.swift
//  lowestprice
//
//  Created by kamontat chantrachirathumrong on 25/2/18.
//  Copyright © 2018 kamontat. All rights reserved.
//

import Foundation
import FirebaseDatabase

class _Database {
    private let schema: Schema = Schema()
    private let ref: DatabaseReference

    init() {
        ref = Database.database().reference()
    }

    private func _writeData(name: String, data: [String: Any]) {
        let tempID = "123456"
        self.ref
            .child(schema.getKey(index: 0, value: nil)[0])
            .child(schema.getKey(index: 1, value: tempID)[0])
            .child(schema.getKey(index: 2, value: name)[0])
            .setValue(data)
    }

    func writeData(name: String, unit: Int, price: Int) {
        let k = schema.getKey(index: 3, value: nil)
        _writeData(name: name, data: [k[0]: unit, k[1]: price])
        // _writeData(name: name, data: [])
    }

    func readData(fun: @escaping (_ value: NSDictionary?) -> Void) {
        let tempID = "123456"
        self.ref.child("users").child(tempID).observeSingleEvent(of: .value, with: { (snapshot) in
            fun(snapshot.value as? NSDictionary)
        })
    }

    static let constant = _Database()
}
