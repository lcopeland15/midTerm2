//
//  ViewController.swift
//  midTerm2
//
//  Created by Lily Copeland on 4/7/20.
//  Copyright © 2020 Lily Copeland. All rights reserved.
//

import UIKit
var dinnerPrice: Double = 0.00
var tip: Double = 0.00
var totalDinnerAmount: Double = 0.00

class ViewController: UIViewController {
    @IBOutlet weak var dinnerAmountInput: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var dinnerTotal: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Calculations for tip
    @IBAction func tipButtonPressed(_ sender: UIButton) {
        let dinnerPrice = Double(dinnerAmountInput.text!)!
        
        if sender.tag == 1 {
            tip = dinnerPrice * 0.10
        }
        if sender.tag == 2 {
                   tip = dinnerPrice * 0.15
               }
        if sender.tag == 3 {
                   tip = dinnerPrice * 0.20
               }
        if sender.tag == 4 {
                   tip = dinnerPrice * 0.25
               }
        if sender.tag == 5 {
                    tip = dinnerPrice * 0.30
                }
        
        //tip total
        tipAmount.text = String(format: "$%.02f", tip)
        
        //dinner total
        totalDinnerAmount = tip + dinnerPrice
        
        //totalDinnerAmount = tip + dinnerAmountInput
        dinnerTotal.text = String(format: "$%.02f", totalDinnerAmount)
        print(dinnerPrice)
        print(tip)
        
        }
    
    @IBAction func resetButton(_ sender: Any) {
        tipAmount.text = " "
        dinnerTotal.text = " "
        dinnerAmountInput.text = " "
    }
    
   
    
}
    
    



