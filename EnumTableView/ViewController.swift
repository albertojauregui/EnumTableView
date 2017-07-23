//
//  ViewController.swift
//  EnumTableView
//
//  Created by Alberto Jauregui on 23/07/17.
//  Copyright © 2017 Alberto Jauregui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum TableSection: Int {
        case action = 0, comedy, drama, indie, total
    }
    
    let SectionHeaderHeight: CGFloat = 25
    
    var data = [TableSection: [[String: String]]]()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

