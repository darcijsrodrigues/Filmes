//
//  Filme.swift
//  Meus Filmes
//
//  Created by Fourtime on 02/04/2018.
//  Copyright © 2018 Fourtime. All rights reserved.
//

import UIKit

class Filme {
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    
    init(titulo: String,descricao: String, imagem: UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
}
