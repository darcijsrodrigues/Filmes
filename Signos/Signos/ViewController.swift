//
//  ViewController.swift
//  Signos
//
//  Created by Fourtime on 02/04/2018.
//  Copyright © 2018 Fourtime. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var signos:[String] = []
    var significadoSignos:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        significadoSignos.append("Significado do signo: Áries")
        significadoSignos.append("Significado do signo: Touro")
        significadoSignos.append("Significado do signo: Gêmeos")
        significadoSignos.append("Significado do signo: Câncer")
        significadoSignos.append("Significado do signo: Leão")
        significadoSignos.append("Significado do signo: Virgem")
        significadoSignos.append("Significado do signo: Libra")
        significadoSignos.append("Significado do signo: Escorpião")
        significadoSignos.append("Significado do signo: Sagitário")
        significadoSignos.append("Significado do signo: Capricórnio")
        significadoSignos.append("Significado do signo: Aquário")
        significadoSignos.append("Significado do signo: Peixes")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso,for:indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertaController = UIAlertController(title: "Significado do signo", message: significadoSignos[indexPath.row], preferredStyle: .alert)
        let actionController = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertaController.addAction(actionController)
        
        present(alertaController, animated: true, completion: nil)
    }
}

