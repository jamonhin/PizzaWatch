//
//  InterfaceControllerTamañoPizza.swift
//  pizzaWatch
//
//  Created by James Montoya on 17/04/16.
//  Copyright © 2016 James Montoya. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerTamañoPizza: WKInterfaceController {

    @IBOutlet var tamañoPizza: WKInterfaceLabel!
    @IBAction func cambiarTamaño(value: Float) {
        var tamaño: String = ""
        switch value {
            case  1:
                self.tamañoPizza.setText("Chica")
                tamaño="Chica"
            
            case  2:
                self.tamañoPizza.setText("Mediana")
                tamaño="Mediana"
            
            case  3:
                self.tamañoPizza.setText("Grande")
                tamaño="Grande"
            
            default:
                self.tamañoPizza.setText("Chica")
                tamaño="Chica"
        }
        VariablesGlobales.sharedManager.tamaño=tamaño
        
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        VariablesGlobales.sharedManager.tamaño="Chica"
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
