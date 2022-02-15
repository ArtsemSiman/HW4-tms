//
//  ViewController.swift
//  HW4
//
//  Created by Артём Симан on 12.02.22.
//

import UIKit

class ViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let x = [(1, "x"), (4, "y"), (6, "a")]
        
        let newArray = x.map {
            ($0.0 * $0.0, $0.1)
        } .filter {
            ($0.0 % 2 == 0)
        } .sorted { left, right in
            return left.0 < right.0
        }
        print (newArray)
    }
}

