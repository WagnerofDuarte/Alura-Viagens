//
//  ViewController.swift
//  Alura-Viagens
//
//  Created by Wagner Duarte on 20/03/23
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var viagensTableView: UITableView!
    
    //MARK: - INITS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viagensTableView.dataSource = self
        viagensTableView.delegate = self
        view.backgroundColor = UIColor(red: 30, green: 59, blue: 119, alpha: 1)
    }
}

//MARK: - TableView DataSource Extension

extension ViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "viagem \(indexPath.row)"
        
        return cell
    }
}

//MARK: - TableView Delegate Extension

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
    
}
