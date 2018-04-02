//
//  ViewController.swift
//  Meus Filmes
//
//  Created by Fourtime on 02/04/2018.
//  Copyright © 2018 Fourtime. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes:[Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        filme = Filme(titulo: "007 - Spectre", descricao: "descrição 1",imagem: #imageLiteral(resourceName: "filme1"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Star Wars", descricao: "descrição 2", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Impacto Mortal", descricao: "descrição 3",imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Deadpool", descricao: "descrição 4", imagem: #imageLiteral(resourceName: "filme4"))
        filmes.append(filme)
        
        filme = Filme(titulo: "O Regresso", descricao: "descrição 5",imagem: #imageLiteral(resourceName: "filme5"))
        filmes.append(filme)
    
        filme = Filme(titulo: "A Herdeira", descricao: "descrição 6", imagem: #imageLiteral(resourceName: "filme6"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Caçadores de emoção", descricao: "descrição 7",imagem: #imageLiteral(resourceName: "filme7"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Regresso do mal", descricao: "descrição 8", imagem: #imageLiteral(resourceName: "filme8"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Tarzan", descricao: "descrição 9",imagem: #imageLiteral(resourceName: "filme9"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Hardcore", descricao: "descrição 10", imagem: #imageLiteral(resourceName: "filme10"))
        filmes.append(filme)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme: Filme = filmes[indexPath.row]
        let celulaReuso = "celulaReuso"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
        celula.filmeImageView.image = filme.imagem
        celula.tituloLabel.text = filme.titulo
        celula.descricaoLabel.text = filme.descricao
        
        
//        celula.textLabel?.text = filme.titulo
//        celula.imageView?.image = filme.imagem
        
        return celula
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

