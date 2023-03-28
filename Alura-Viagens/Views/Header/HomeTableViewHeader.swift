//
//  HomeTableViewHeader.swift
//  Alura-Viagens
//
//  Created by Wagner Duarte on 21/03/23.
//

import UIKit

class HomeTableViewHeader: UIView {

    //MARK: - Outlets
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var bannerView: UIView!
    
    func configuraView( ){
        headerView.backgroundColor = UIColor(red: 30.0/255, green: 59/255, blue: 119/255, alpha: 1)
        
        bannerView.layer.cornerRadius = 10
        bannerView.layer.masksToBounds = true
        
        headerView.layer.cornerRadius = 500
        headerView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    
    
}
