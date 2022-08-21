//
//  ViewController.swift
//  codepath-challenge
//
//  Created by James Zhang on 8/18/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    var billAmount:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func clearAll(_ sender: Any) {
        billAmount = ""
        billAmountTextField.text = billAmount
        tipControl.selectedSegmentIndex = 0
        tipAmountLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }
    
    func handleAdd(value: String){
        billAmount += value
        billAmountTextField.text = billAmount
        calculateTip(self)
        print(billAmount)
    }
    
    func handleDel(){
        if billAmount.isEmpty{
            return
        }
        billAmount.removeLast()
        billAmountTextField.text = billAmount
        calculateTip(self)
        print(billAmount)
    }
    
    @IBAction func zeroTap(_ sender: Any) {
        handleAdd(value: "0")
    }
    @IBAction func oneTap(_ sender: Any) {
        handleAdd(value: "1")
    }
    @IBAction func twoTap(_ sender: Any) {
        handleAdd(value: "2")
    }
    @IBAction func threeTap(_ sender: Any) {
        handleAdd(value: "3")
    }
    @IBAction func fourTap(_ sender: Any) {
        handleAdd(value: "4")
    }
    @IBAction func fiveTap(_ sender: Any) {
        handleAdd(value: "5")
    }
    @IBAction func sixTap(_ sender: Any) {
        handleAdd(value: "6")
    }
    @IBAction func sevenTap(_ sender: Any) {
        handleAdd(value: "7")
    }
    @IBAction func eightTap(_ sender: Any) {
        handleAdd(value: "8")
    }
    @IBAction func nineTap(_ sender: Any) {
        handleAdd(value: "9")
    }

    @IBAction func decimalTap(_ sender: Any) {
        handleAdd(value: ".")
    }
    @IBAction func backTap(_ sender: Any) {
        handleDel()
    }
}

