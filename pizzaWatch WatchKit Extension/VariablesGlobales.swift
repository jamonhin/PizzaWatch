//
//  VariablesGlobales.swift
//  pizzaWatch
//
//  Created by James Montoya on 17/04/16.
//  Copyright © 2016 James Montoya. All rights reserved.
//

import WatchKit

class VariablesGlobales: NSObject {

    var tamaño: String?
    var masa:String?
    var queso:String!
    var ingredientes:String?
    var mensajeAlerta:String?
    
    class var sharedManager: VariablesGlobales {
        struct Static {
            static let instance = VariablesGlobales()
        }
        return Static.instance
    }
    
}
