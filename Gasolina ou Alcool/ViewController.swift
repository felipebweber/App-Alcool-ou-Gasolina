//
//  ViewController.swift
//  Gasolina ou Alcool
//
//  Created by Felipe Weber on 29/08/17.
//  Copyright © 2017 Felipe Weber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var precoAlcoolTextField: UITextField!
    
    @IBOutlet weak var precoGasolinaTextField: UITextField!

    @IBOutlet weak var resultado: UILabel!
    
    @IBAction func calcularCombustivel(_ sender: Any) {
        var precoAlcool: Double = 0
        var precoGasolina: Double = 0
        var resultadoPreco: Double = 0
        
        if let resultadoAlcool = precoAlcoolTextField.text{
            if resultadoAlcool != ""{
                if let resultadoNumero = Double(resultadoAlcool){
                    precoAlcool = resultadoNumero
                }
            }
        }
        if let resultadoGasolina = precoGasolinaTextField.text{
            if resultadoGasolina != ""{
                if let resultadoNumero = Double(resultadoGasolina){
                    precoGasolina = resultadoNumero
                }
            }
        }
        
        // calculo (precoAlcool/precoGasolina) >= 0.7
        resultadoPreco = precoAlcool/precoGasolina
        
        if resultadoPreco >= 0.7{
            resultado.text = "Melhor utilizar GASOLINA!"
        }else{
            resultado.text = "Melhor utilizar ALCOOL!"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

