import UIKit

class MainController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupButtons()
    }
    
    func setupButtons() {
        // Exemplo de botões para diferentes funcionalidades
        let loginButton = createButton(title: "Login", action: #selector(loginTapped))
        let registerButton = createButton(title: "Register", action: #selector(registerTapped))
        let ticketsButton = createButton(title: "Tickets", action: #selector(ticketsTapped))
        let attractionsButton = createButton(title: "Attractions", action: #selector(attractionsTapped))
        let purchasesButton = createButton(title: "Purchases", action: #selector(purchasesTapped))
        let paymentButton = createButton(title: "Payment", action: #selector(paymentTapped))
        
        // Adicione os botões a uma stack view
        let stackView = UIStackView(arrangedSubviews: [loginButton, registerButton, ticketsButton, attractionsButton, purchasesButton, paymentButton])
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        
        // Constrains
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    func createButton(title: String, action: Selector) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.addTarget(self, action: action, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    @objc func loginTapped() {
        let loginVC = LoginViewController()
        navigationController?.pushViewController(loginVC, animated: true)
    }
    
    @objc func registerTapped() {
        let registerVC = RegisterViewController()
        navigationController?.pushViewController(registerVC, animated: true)
    }
    
    @objc func ticketsTapped() {
        let ticketListVC = TicketListViewController()
        navigationController?.pushViewController(ticketListVC, animated: true)
    }
    
    @objc func attractionsTapped() {
        let attractionListVC = AttractionListViewController()
        navigationController?.pushViewController(attractionListVC, animated: true)
    }
    
    @objc func purchasesTapped() {
        let purchaseHistoryVC = PurchaseHistoryViewController()
        navigationController?.pushViewController(purchaseHistoryVC, animated: true)
    }
    
    @objc func paymentTapped() {
        let paymentVC = PaymentViewController()
        navigationController?.pushViewController(paymentVC, animated: true)
    }
}
