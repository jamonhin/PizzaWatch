//
//  InterfaceControllerMasaPizza.swift
//  pizzaWatch
//
//  Created by James Montoya on 17/04/16.
//  Copyright © 2016 James Montoya. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerMasaPizza: WKInterfaceController {
    @IBOutlet var tipoMasa: WKInterfaceLabel!
    @IBAction func cambiaTipoMasa(value: Float) {
        var masa: String = ""
        switch value {
        case  1:
            self.tipoMasa.setText("Delgada")
            masa="Delgada"
        case  2:
            self.tipoMasa.setText("Crujiente")
            masa="Crujiente"
        case  3:
            self.tipoMasa.setText("Gruesa")
            masa="Gruesa"
        default:
            self.tipoMasa.setText("Delgada")
            masa="Delgada"
        }
         VariablesGlobales.sharedManager.masa=masa
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        VariablesGlobales.sharedManager.masa="Delgada"
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
