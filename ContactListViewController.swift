//
//  ContactListViewController.swift
//  Antidote
//
//  Created by Dmytro Vorobiov on 02/12/16.
//  Copyright © 2016 Dmytro Vorobiov. All rights reserved.
//

import Cocoa
import SnapKit

class ContactListViewController: NSViewController {
    fileprivate var textField: NSTextField!

    override func loadView() {
        view = NSView()

        createSubviews()
        installConstraints()
    }
}

fileprivate extension ContactListViewController {
    func createSubviews() {
        textField = NSTextField()
        textField.stringValue = "Contacts"
        view.addSubview(textField)
    }

    func installConstraints() {
        textField.snp.makeConstraints {
            $0.left.right.equalTo(view)
            $0.height.equalTo(100)
        }
    }
}