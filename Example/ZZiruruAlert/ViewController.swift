//
//  ViewController.swift
//  ZZiruruAlert
//
//  Created by jae57 on 12/27/2020.
//  Copyright (c) 2020 jae57. All rights reserved.
//

import UIKit
import ZZiruruAlert

class ViewController: UIViewController {
    @IBAction func showAlert(_ sender: UIButton) {
        ZZiruruAlert(title: "Is this simple?", confirm: "Yes") {
                    print("It is so simple")
                }.show(in: view)
    }
}

