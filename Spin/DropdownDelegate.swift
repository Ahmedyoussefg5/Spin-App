//
//  DropdownDelegate.swift
//  Dropdown
//
//  Created by Ahmed on 2/4/17.
//  Copyright © 2017 Ahmed. All rights reserved.
//

import Foundation

protocol DropdownDelegate {
    func didFinishSelection (_ dropDown : DropdownViewController, selectedItems : [DropdownItem])
}
