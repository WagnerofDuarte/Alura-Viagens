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
        configuraTableView()
        view.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
    }
    
    func configuraTableView(){
        viagensTableView.register(UINib(nibName: "ViagemTableViewCell", bundle: nil), forCellReuseIdentifier: "ViagemTableViewCell")
        viagensTableView.register(UINib(nibName: "OfertaTableViewCell", bundle: nil), forCellReuseIdentifier: "OfertaTableViewCell")
        viagensTableView.dataSource = self
        viagensTableView.delegate = self
    }
}

//MARK: - TableView DataSource Extension

extension ViewController:UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sessaoDeViagens?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sessaoDeViagens?[section].numeroDeLinhas ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "viagem \(indexPath.row)"
        
        let viewModel = sessaoDeViagens?[indexPath.section]
        switch viewModel?.tipo {
        case .destaques:
            
            guard let celulaViagemDestaque = tableView.dequeueReusableCell(withIdentifier: "ViagemTableViewCell") as? ViagemTableViewCell else {
                fatalError("error to create tableCell")
            }
            celulaViagemDestaque.configuraCelula(viewModel?.viagens[indexPath.row])
            
            return celulaViagemDestaque
            
        case .ofertas:
            
            guard let celulaViagemOferta = tableView.dequeueReusableCell(withIdentifier: "OfertaTableViewCell") as? OfertaTableViewCell else {
                fatalError("error to create tableCell")
            }
            celulaViagemOferta.configuraCelula(viewModel?.viagens)
            
            return celulaViagemOferta
            
        default:
            return UITableViewCell()
        }
    }
}

//MARK: - TableView Delegate Extension

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if(section == 0) {
            
            let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
            headerView?.configuraView()
            
            return headerView
        }
        
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if(section == 0){
            return 300
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 400 : 475
    }
    
}
