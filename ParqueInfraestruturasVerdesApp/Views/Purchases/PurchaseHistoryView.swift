//
//  PurchaseHistoryView.swift
//  ParqueInfraestruturasVerdesApp
//
//  Created by Equip Mozambique on 10/9/24.
//  Copyright © 2024 Joel De Ariovaldo. All rights reserved.
//

import Foundation
import UIKit

class PurchaseHistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let tableView = UITableView()
    var purchases: [Purchase] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Purchase History"

        setupTableView()
        fetchPurchases()
    }

    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }

    func fetchPurchases() {
        // Simulate fetching purchases
        purchases = [
            Purchase(id: 1, item: "Ticket 1", amount: 10.0, date: Date()),
            Purchase(id: 2, item: "Ticket 2", amount: 20.0, date: Date())
        ]
        tableView.reloadData()
    }

    // MARK: - UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return purchases.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let purchase = purchases[indexPath.row]
        cell.textLabel?.text = "\(purchase.item) - $\(purchase.amount)"
        return cell
    }

    // MARK: - UITableViewDelegate

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}