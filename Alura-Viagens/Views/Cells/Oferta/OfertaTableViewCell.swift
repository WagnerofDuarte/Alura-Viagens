//
//  OfertaTableViewCell.swift
//  Alura-Viagens
//
//  Created by Wagner Duarte on 04/04/23.
//

import UIKit

class OfertaTableViewCell: UITableViewCell {
    
    //MARK: - IBOUTLETS
    
    @IBOutlet var viagemImagens: [UIImageView]!
    @IBOutlet var tituloViagemLabels: [UILabel]!
    @IBOutlet var subtituloViagemLabels: [UILabel]!
    @IBOutlet var precoSemDescontoViagemLabels: [UILabel]!
    @IBOutlet var precoViagemLabels: [UILabel]!
    @IBOutlet var fundoViews: [UIView]!
    
    //MARK: - MÉTODOS
    
    func configuraCelula(_ viagem: [Viagem]?){
        
        guard let listaDeViagens = viagem else { return }
        
        for index in 0..<listaDeViagens.count {
            setOutlets(index, viagem: listaDeViagens[index])
        }
        
        fundoViews.forEach {
            viewAtual in viewAtual.addSombra()
        }
    
        
    }
    
    func setOutlets(_ index: Int, viagem: Viagem){
        
        viagemImagens[index].image = UIImage(named: viagem.asset)
        print(viagem.asset)
        tituloViagemLabels[index].text = viagem.titulo
        subtituloViagemLabels[index].text = viagem.subtitulo
        precoSemDescontoViagemLabels[index].text = "A partir de R$ \(viagem.precoSemDesconto)"
        precoViagemLabels[index].text = "R$ \(viagem.preco)"
        
    }
    
}
