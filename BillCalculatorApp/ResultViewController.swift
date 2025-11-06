//
//  ResultViewController.swift
//  BillCalculatorApp
//
//  Created by Bhavesh on 10/23/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var enteredAmountOL: UILabel!
    @IBOutlet weak var enteredTipOL: UILabel!
    @IBOutlet weak var enteredPersonsOL: UILabel!
    @IBOutlet weak var totalAmountOL: UILabel!
    @IBOutlet weak var sharePerPersonOL: UILabel!
    @IBOutlet weak var displayImageOL: UIImageView!
    
    // MARK: - Variables (received from ViewController)
    var enteredAmount = ""
    var enteredTip = ""
    var enteredPersons = ""
    var tipAmount = ""
    var totalAmount = ""
    var sharePerPerson = ""
    var imageVal = ""
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enteredAmountOL.text = "Entered Bill Amount: $\(enteredAmount)"
        enteredTipOL.text = "Entered Tip(%): \(enteredTip)%"
        enteredPersonsOL.text = "Number Of Person Paying: \(enteredPersons)"
        totalAmountOL.text = "Total Amount To Be Paid: $\(totalAmount)"
        sharePerPersonOL.text = "Share Per Person: $\(sharePerPerson)"
        
        if !imageVal.isEmpty {
            displayImageOL.image = UIImage(named: imageVal)
        } else {
            displayImageOL.image = UIImage(named: "defaultImage") // optional fallback image
        }
    }
}
