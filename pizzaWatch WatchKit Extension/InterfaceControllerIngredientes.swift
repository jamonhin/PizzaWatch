//
//  InterfaceControllerIngredientes.swift
//  pizzaWatch
//
//  Created by James Montoya on 17/04/16.
//  Copyright © 2016 James Montoya. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerIngredientes: WKInterfaceController {
    
    var seleccionados: Int = 0
    var ingredientesSelec: String = ""
    
    func llamarAlerta(){
        VariablesGlobales.sharedManager.mensajeAlerta="Solo puede seleccionar hasta cinco ingredientes para una pizza.."
        let m = VariablesGlobales.sharedManager.mensajeAlerta
        pushControllerWithName("vistaAlertaIngredientes",context: m)
    }
    
    @IBOutlet var boton1: WKInterfaceButton!
    @IBAction func seleccionBoton1() {
        if self.seleccionados < 5 {
            self.boton1.setEnabled(false)
            self.seleccionados = self.seleccionados + 1
            ingredientesSelec = "Cebolla, " + ingredientesSelec
            VariablesGlobales.sharedManager.ingredientes = ingredientesSelec
            if ( self.seleccionados == 5 ) { self.btnContinuar.setEnabled(true) }
        } else {
            llamarAlerta()
        }
    }
    
    
    @IBOutlet var boton2: WKInterfaceButton!
    @IBAction func seleccionBoton2() {
        if self.seleccionados < 5 {
            self.boton2.setEnabled(false)
            self.seleccionados = self.seleccionados + 1
            ingredientesSelec = "Anchoas, " + ingredientesSelec
            VariablesGlobales.sharedManager.ingredientes = ingredientesSelec
            if ( self.seleccionados == 5 ) { self.btnContinuar.setEnabled(true) }
        } else {
            llamarAlerta()
        }
    }
    
    @IBOutlet var boton3: WKInterfaceButton!
    @IBAction func seleccionBoton3() {
        if self.seleccionados < 5 {
            self.boton3.setEnabled(false)
            self.seleccionados = self.seleccionados + 1
            ingredientesSelec = "Pepperoni, " + ingredientesSelec
            VariablesGlobales.sharedManager.ingredientes = ingredientesSelec
            if ( self.seleccionados == 5 ) { self.btnContinuar.setEnabled(true) }
        } else {
            llamarAlerta()
        }
    }
    
    @IBOutlet var boton4: WKInterfaceButton!
    @IBAction func seleccionBoton4() {
        if self.seleccionados < 5 {
            self.boton4.setEnabled(false)
            self.seleccionados = self.seleccionados + 1
            ingredientesSelec = "Aceitunas, " + ingredientesSelec
            VariablesGlobales.sharedManager.ingredientes = ingredientesSelec
            if ( self.seleccionados == 5 ) { self.btnContinuar.setEnabled(true) }
        } else {
            llamarAlerta()
        }
    }
    
    
    @IBOutlet var boton5: WKInterfaceButton!
    @IBAction func seleccionBoton5() {
        if self.seleccionados < 5 {
            self.boton5.setEnabled(false)
            self.seleccionados = self.seleccionados + 1
            ingredientesSelec = "Jamon, " + ingredientesSelec
            VariablesGlobales.sharedManager.ingredientes = ingredientesSelec
            if ( self.seleccionados == 5 ) { self.btnContinuar.setEnabled(true) }
        } else {
            llamarAlerta()
        }
    }
    
    @IBOutlet var boton6: WKInterfaceButton!
    @IBAction func seleccionBoton6() {
        if self.seleccionados < 5 {
            self.boton6.setEnabled(false)
            self.seleccionados = self.seleccionados + 1
            ingredientesSelec = "Piña, " + ingredientesSelec
            VariablesGlobales.sharedManager.ingredientes = ingredientesSelec
            if ( self.seleccionados == 5 ) { self.btnContinuar.setEnabled(true) }
        } else {
            llamarAlerta()
        }
    }
    
    @IBAction func cancelarSeleccion() {
        self.boton1.setEnabled(true)
        self.boton2.setEnabled(true)
        self.boton3.setEnabled(true)
        self.boton4.setEnabled(true)
        self.boton5.setEnabled(true)
        self.boton6.setEnabled(true)
        self.seleccionados = 0
        ingredientesSelec = ""
        self.btnContinuar.setEnabled(false)
    }
    
    @IBOutlet var btnContinuar: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        self.btnContinuar.setEnabled(false)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
