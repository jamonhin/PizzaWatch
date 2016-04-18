//
//  InterfaceControllerDetalleOrden.swift
//  pizzaWatch
//
//  Created by James Montoya on 17/04/16.
//  Copyright © 2016 James Montoya. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerDetalleOrden: WKInterfaceController {

    @IBOutlet var tamañoFinal: WKInterfaceLabel!
    @IBOutlet var masaFinal: WKInterfaceLabel!
    @IBOutlet var quesoFinal: WKInterfaceLabel!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        self.tamañoFinal.setText(VariablesGlobales.sharedManager.tamaño)
        self.masaFinal.setText(VariablesGlobales.sharedManager.masa)
        self.quesoFinal.setText(VariablesGlobales.sharedManager.queso)
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
