//
//  File.swift
//  lowestprice
//
//  Created by kamontat chantrachirathumrong on 25/2/18.
//  Copyright © 2018 kamontat. All rights reserved.
//

import Foundation

// {

/**
 
 {
   "users": {
     "<id>": {
       "<product_name>": {
         "unit": <number>,
         "price": <number>,
       }
     }
   }
 }
 
 */
class Schema {
    private let key: Array<String> = ["users", ":id", ":pname", "unit,price"]

    func getKey(index: Int, value: String?) -> [String] {
        let curr = key[index]
        if (curr.contains(":")), let v = value {
            return [v]
        }

        if (curr.contains(",")) {
            return curr.components(separatedBy: ",")
        }

        return [curr]
    }
}

