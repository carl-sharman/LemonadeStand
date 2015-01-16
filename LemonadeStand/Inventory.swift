//
//  Inventory.swift
//  LemonadeStand
//
//  Created by Carl Sharman Work on 16/01/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import Foundation

class Inventory {
    var cash:Int = 0
    var lemons:Int = 0
    var iceCubes:Int = 0
    
    let costPerLemon: Int = 2
    let costPerIceCube: Int = 1
    
    init(cash: Int, lemons: Int, iceCubes: Int) {
        self.cash = cash
        self.lemons = lemons
        self.iceCubes = iceCubes
    }
    
    func purchaseLemon() -> Bool {
        if self.cash >= self.costPerLemon {
            self.cash -= self.costPerLemon
            self.lemons++
            return true;
        } else {
            return false;
        }
    }
    
    func purchaseIceCube() -> Bool {
        if self.cash >= self.costPerIceCube {
            self.cash -= self.costPerIceCube
            self.iceCubes++
            return true;
        } else {
            return false;
        }
    }

    func sellLemon() -> Bool {
        if self.lemons > 0 {
            self.cash += self.costPerLemon
            self.lemons--
            return true;
        } else {
            return false;
        }
    }
    
    func sellIceCube() -> Bool {
        if self.iceCubes > 0 {
            self.cash += self.costPerIceCube
            self.iceCubes--
            return true;
        } else {
            return false;
        }
    }
    
}