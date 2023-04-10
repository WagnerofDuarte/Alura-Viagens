//
//  ViagemOfertaViewModel.swift
//  Alura-Viagens
//
//  Created by Wagner Duarte on 04/04/23.
//

import Foundation

class ViagemOfertaViewModel: ViagemViewModel{
    
    //MARK: - Implemetação do Protocolo
    
    var tituloSessao: String {
        return "Ofertas"
    }
    
    var tipo: ViagemViewModelType {
        return .ofertas
    }
    
    var viagens: [Viagem]
    
    var numeroDeLinhas: Int {
        return 1
    }
    
    //MARK: - Inicializador
    
    init(_ viagens: [Viagem]) {
        self.viagens = viagens
    }
    
}
