//
//  SetupViewCode.swift
//  ChooseBooks
//
//  Created by Raline Maria da Silva on 10/04/23.
//

import Foundation

protocol SetupViewCode {
    func setupSubviews()
    func setupConfigure()
    func setupConstraints()
    func setup()
}

extension SetupViewCode {
    func setup() {
        setupSubviews()
        setupConfigure()
        setupConstraints()
    }

}
