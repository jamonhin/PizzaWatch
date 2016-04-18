//
//  InterfaceControllerTipoQueso.swift
//  pizzaWatch
//
//  Created by James Montoya on 17/04/16.
//  Copyright © 2016 James Montoya. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerTipoQueso: WKInterfaceController {

    @IBOutlet var tipoQueso: WKInterfaceLabel!
    @IBAction func cambiarTipoQueso(value: Float) {
        var queso: String=""
        switch value {
        case  1:
            self.tipoQueso.setText("Mozarela")
            queso="Mozarela"
        case  2:
            self.tipoQueso.setText("Cheddar")
            queso="Cheddar"
        case  3:
            self.tipoQueso.setText("Parmesano")
            queso="Parmesano"
        case  4:
            self.tipoQueso.setText("Sin queso")
            queso="Sin queso"
        default:
            self.tipoQueso.setText("Mozarela")
            queso="Mozarela"
        }
        VariablesGlobales.sharedManager.queso=queso
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        VariablesGlobales.sharedManager.queso="Mozarela"
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
