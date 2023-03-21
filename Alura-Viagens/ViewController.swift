//
//  ViewController.swift
//  Alura-Viagens
//
//  Created by Wagner Duarte on 20/03/23
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var viagensTableView: UITableView!
    
    //MARK: - INITS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viagensTableView.dataSource = self
    }
    
    //MARK: - TABLEVIEW PROTOCOLS

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "viagem \(indexPath.row)"
        
        return cell
    }

}

