//
//  ViewController.swift
//  iamrich
//
//  Created by LoPeZj on 01/11/2018.
//  Copyright © 2018 developmob. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties

    @IBOutlet weak var labelTittle: UILabel!
    @IBOutlet weak var imageRuby: UIImageView!
    @IBOutlet weak var buttonRico: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Hola que tal!")
    }

    //Methods
    
    @IBAction func pushButton(_ sender: UIButton) {
        print("Boton pulsado")
        let controller =  UIAlertController(title: "I am Rich", message: """
                                                            Soy rico,
                                                            Todo va bien,
                                                            no hace falta mas,
                                                            solo salud.
                                                            """, preferredStyle: .alert)
        
        //let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
            print("PULSADO OK")
        }
        controller.addAction(action)
        let action1 = UIAlertAction(title: "Borrar", style: .destructive) { _ in
            print("PULSADO Destructive")
        }
        controller.addAction(action1)
       //let cancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: {(action) in
            print("PULSADO CANCEL")
        })
        controller.addAction(cancel)
        
        self.show(controller, sender: nil)
    }
    
}

