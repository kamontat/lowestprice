//
//  FirstViewController.swift
//  lowestprice
//
//  Created by kamontat chantrachirathumrong on 21/2/18.
//  Copyright © 2018 kamontat. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    // private var controller: CalculateController?

    @IBOutlet weak var prodNameInput: UITextField!
    @IBOutlet weak var unitInput: UITextField!
    @IBOutlet weak var priceInput: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

//        _Database.constant.readData { (value) in
//            Logger._get.print(key: "readData", items: value)
//        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getUnit() -> Int? {
        if let text = unitInput?.text {
            return Int(text)
        } else { return nil }
    }

    func getPrice() -> Int? {
        if let text = priceInput?.text {
            return Int(text)
        } else { return nil }
    }

    func getName() -> String? {
        let text = prodNameInput?.text
        return text == "" ? nil : text
    }

    @IBAction func submit(_ sender: UIButton) {
        Logger._get.print(key: "Submit", items: nil)

        if let name = getName(), let key = getUnit(), let value = getPrice() {
            _Database.constant.writeData(name: name, unit: key, price: value)
        }
        // _Database.constant.writeData(data: [: getPrice()])
    }

}

