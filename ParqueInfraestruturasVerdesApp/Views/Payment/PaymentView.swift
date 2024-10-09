//
//  PaymentView.swift
//  ParqueInfraestruturasVerdesApp
//
//  Created by Equip Mozambique on 10/9/24.
//  Copyright © 2024 Joel De Ariovaldo. All rights reserved.
//

import Foundation
import UIKit

class PaymentViewController: UIViewController {
    let amountTextField = UITextField()
    let paymentButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Payment"

        setupTextField()
        setupButton()
    }

    func setupTextField() {
        amountTextField.placeholder = "Amount"
        amountTextField.keyboardType = .decimalPad
        amountTextField.borderStyle = .roundedRect
        amountTextField.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(amountTextField)
        NSLayoutConstraint.activate([
            amountTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            amountTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            amountTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            amountTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }

    func setupButton() {
        paymentButton.setTitle("Pay", for: .normal)
        paymentButton.backgroundColor = .blue
        paymentButton.layer.cornerRadius = 10
        paymentButton.addTarget(self, action: #selector(paymentButtonTapped), for: .touchUpInside)
        paymentButton.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(paymentButton)
        NSLayoutConstraint.activate([
            paymentButton.topAnchor.constraint(equalTo: amountTextField.bottomAnchor, constant: 20),
            paymentButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            paymentButton.widthAnchor.constraint(equalToConstant: 200),
            paymentButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    @objc func paymentButtonTapped() {
        // Handle payment logic
    }
}