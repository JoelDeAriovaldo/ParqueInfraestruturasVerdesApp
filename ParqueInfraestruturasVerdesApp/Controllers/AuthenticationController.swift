//
//  AuthenticationController.swift
//  ParqueInfraestruturasVerdesApp
//
//  Created by Equip Mozambique on 10/9/24.
//  Copyright © 2024 Joel De Ariovaldo. All rights reserved.
//

import Foundation
import UIKit

class AuthenticationController: UIViewController {
    let authenticationService = AuthenticationService()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    func register(username: String, email: String, password: String) {
        authenticationService.register(username: username, email: email, password: password) { success in
            if success {
                self.showAlert(title: "Success", message: "Registro bem sucedido")
                // Navigate to the next screen or perform other actions
            } else {
                self.showAlert(title: "Error", message: "O registro falhou")
            }
        }
    }

    func login(email: String, password: String) {
        authenticationService.login(email: email, password: password) { success in
            if success {
                self.showAlert(title: "Success", message: "Login bem sucedido")
                // Navigate to the next screen or perform other actions
            } else {
                self.showAlert(title: "Error", message: "falha no login")
            }
        }
    }

    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}