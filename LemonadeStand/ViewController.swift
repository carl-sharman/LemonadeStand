//
//  ViewController.swift
//  LemonadeStand
//
//  Created by Carl Sharman Work on 16/01/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentCashLabel: UILabel!
    @IBOutlet weak var currentLemonsLabel: UILabel!
    @IBOutlet weak var currentIceCubesLabel: UILabel!
    
    @IBOutlet weak var purchasedLemonsLabel: UILabel!
    @IBOutlet weak var purchasedIceCubesLabel: UILabel!
    @IBOutlet weak var purchaseLemonsButton: UIButton!
    @IBOutlet weak var purchaseIceCubesButton: UIButton!
    @IBOutlet weak var sellLemonsButton: UIButton!
    @IBOutlet weak var sellIceCubesButton: UIButton!
    
    @IBOutlet weak var mixedLemonsLabel: UILabel!
    @IBOutlet weak var mixedIceCubesLabel: UILabel!
    @IBOutlet weak var addMixedLemonsButton: UIButton!
    @IBOutlet weak var addMixedIceCubesButton: UIButton!
    @IBOutlet weak var removeMixedLemonsButton: UIButton!
    @IBOutlet weak var removeMixedIceCubesButton: UIButton!
    
    @IBOutlet weak var startDayButton: UIButton!
    
    var inventory: Inventory!
    var purchasedLemons: Int = 0
    var purchasedIceCubes: Int = 0
    var mixedLemons: Int = 0
    var mixedIceCubes: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.inventory = Inventory(cash: 10, lemons: 1, iceCubes: 1)
        self.displayInventory()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func purchaseLemonsTouch(sender: UIButton) {
        if (self.inventory.lemons > 1) {
            self.purchasedLemons++
            self.inventory.lemons--
            self.purchasedLemonsLabel.text = "\(self.purchasedLemons)"
        }
    }

    @IBAction func purchaseIceCubes(sender: UIButton) {
        if (self.inventory.iceCubes > 1) {
            self.purchasedIceCubes++
            self.inventory.iceCubes--
            self.purchasedIceCubesLabel.text = "\(self.purchasedIceCubes)"
        }
    }
    
    @IBAction func sellLemonsTouch(sender: UIButton) {
        if (self.purchasedLemons > 0) {
            self.purchasedLemons--
            self.inventory.lemons++
            self.purchasedLemonsLabel.text = "\(self.purchasedLemons)"
        }
    }
    
    @IBAction func sellIceCubesTouch(sender: UIButton) {
        if (self.purchasedIceCubes > 0) {
            self.purchasedIceCubes--
            self.inventory.iceCubes++
            self.purchasedIceCubesLabel.text = "\(self.purchasedIceCubes)"
        }
    }
    
    @IBAction func addMixedLemonsTouch(sender: UIButton) {
        self.mixedLemons++
        self.mixedLemonsLabel.text = "\(self.mixedLemons)"
    }
    
    @IBAction func addMixedIceCubesTouch(sender: UIButton) {
        self.mixedIceCubes++
        self.mixedIceCubesLabel.text = "\(self.mixedIceCubes)"
    }
    
    @IBAction func removeMixedLemonsTouch(sender: UIButton) {
        self.mixedLemons--
        self.mixedLemonsLabel.text = "\(self.mixedLemons)"
    }
    
    @IBAction func removeMixedIceCubesTouch(sender: UIButton) {
        self.mixedIceCubes--
        self.mixedIceCubesLabel.text = "\(self.mixedIceCubes)"
    }
    
    @IBAction func startDayTouch(sender: UIButton) {
    }
    
    func displayInventory() {
        self.currentCashLabel.text = "£\(self.inventory.cash)"
        self.currentIceCubesLabel.text = "\(self.inventory.iceCubes)"
        self.currentLemonsLabel.text = "\(self.inventory.lemons)"
    }
}

