//
//  ViewController.swift
//  BillCalculatorApp
//
//  Created by Bhavesh on 10/23/25.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var AmountOL: UITextField!
    @IBOutlet weak var TipOL: UITextField!
    @IBOutlet weak var PersonOL: UITextField!
    
    // MARK: - Variables
    var billAmount: Double = 0.0
    var tipPercentage: Double = 0.0
    var tipAmount: Double = 0.0
    var numberOfPeople: Double = 1.0
    var totalAmount: Double = 0.0
    var amountPerPerson: Double = 0.0
    var imageVal: String = ""
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Actions
    @IBAction func calculateBtn(_ sender: Any) {
        guard let billText = AmountOL.text, let bill = Double(billText),
              let tipText = TipOL.text, let tip = Double(tipText),
              let personText = PersonOL.text, let people = Double(personText), people > 0 else {
            showAlert(title: "Invalid Input", message: "Please enter valid numbers for all fields.")
            return
        }
        
        billAmount = bill
        tipPercentage = tip
        numberOfPeople = people
        
        // Calculate values
        tipAmount = billAmount * (tipPercentage / 100)
        totalAmount = billAmount + tipAmount
        amountPerPerson = totalAmount / numberOfPeople
        
        // Pick an image based on tip percentage for fun
        if tipPercentage < 10 {
            imageVal = "lowTip"      // Add corresponding image in Assets
        } else if tipPercentage < 20 {
            imageVal = "mediumTip"
        } else {
            imageVal = "highTip"
        }
        
        // Navigate to Result Screen
        performSegue(withIdentifier: "ResultSegue", sender: self)
    }
    
    @IBAction func ResetBtn(_ sender: Any) {
        AmountOL.text = ""
        TipOL.text = ""
        PersonOL.text = ""
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultSegue" {
            let destination = segue.destination as! ResultViewController
            destination.enteredAmount = String(format: "%.2f", billAmount)
            destination.enteredTip = String(format: "%.2f", tipPercentage)
            destination.enteredPersons = String(format: "%.0f", numberOfPeople)
            destination.tipAmount = String(format: "%.2f", tipAmount)
            destination.totalAmount = String(format: "%.2f", totalAmount)
            destination.sharePerPerson = String(format: "%.2f", amountPerPerson)
            destination.imageVal = imageVal
        }
    }
    
    // MARK: - Helper
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
