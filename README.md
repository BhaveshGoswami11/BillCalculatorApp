# 💰 Bill Calculator App

A simple, intuitive, and elegantly designed iOS application that helps users calculate the total bill amount, including tip, and optionally split it among multiple people.  
Built using **Swift**, **UIKit**, and **Storyboard**, this app offers a clean two-screen experience with validation, navigation, and dynamic image updates based on tip percentage.

---

## 📱 App Preview

| Home Screen | Calculated Screen |
|-------------|------------------|
| ![Home Screen](https://github.com/BhaveshGoswami11/BillCalculatorApp/blob/main/SneakPeek%20Of%20Working%20App/Home%20Screen.png?raw=true) | ![Calculated Screen](https://github.com/BhaveshGoswami11/BillCalculatorApp/blob/main/SneakPeek%20Of%20Working%20App/Calculated%20Screen.png?raw=true) |

---

## 🚀 Features

- Enter **Bill Amount**, **Tip Percentage**, and **Number of People**
- Calculates:
  - Tip amount
  - Total amount including tip
  - Share per person (split bill)
- Displays results on a dedicated **Result Screen**
- Dynamic image selection based on tip percentage:
  - Low Tip → `lowTip`
  - Medium Tip → `mediumTip`
  - High Tip → `highTip`
- Built-in input validation with meaningful alerts
- Includes a **Reset** option to clear inputs instantly

---

## 🧮 Example Calculation

| Input Field         | Example Value |
|--------------------|---------------|
| Bill Amount        | 100           |
| Tip (%)            | 10            |
| Number of Persons  | 2             |

### Output:
- **Total Amount:** $110.00  
- **Share Per Person:** $55.00  
- **Image:** `mediumTip`  

---

## 📂 Project Structure

BillCalculatorApp/
│
├── ViewController.swift # Main input screen
├── ResultViewController.swift # Result display screen
├── Main.storyboard # UI layout + segue connections
├── Assets.xcassets/ # App icons + tip images
│ ├── lowTip
│ ├── mediumTip
│ ├── highTip
└── Info.plist # App configuration

yaml
Copy code

---

## ⚙️ How It Works

### 1️⃣ User Inputs:
- Bill amount  
- Tip percentage  
- Number of people  

### 2️⃣ App Validates:
If any field is empty or invalid, an alert is shown using:

```swift
UIAlertController(title: "Error", message: "Please enter valid values.", preferredStyle: .alert)
3️⃣ Calculations:
ini
Copy code
tipAmount       = bill * (tip / 100)
totalAmount     = bill + tipAmount
amountPerPerson = totalAmount / people
4️⃣ Passing Data to Result Screen
swift
Copy code
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let destination = segue.destination as! ResultViewController
    destination.bill = bill
    destination.tip = tip
    destination.people = people
    destination.totalAmount = totalAmount
    destination.amountPerPerson = amountPerPerson
}
5️⃣ Dynamic Image Logic
Tip-based image displayed using:

swift
Copy code
if tip < 10 {
    resultImage.image = UIImage(named: "lowTip")
} else if tip <= 20 {
    resultImage.image = UIImage(named: "mediumTip")
} else {
    resultImage.image = UIImage(named: "highTip")
}
🧠 Key Concepts Used
@IBOutlet and @IBAction

prepare(for:sender:) for navigation

UIAlertController for validation

Conditional logic for dynamic image display

UIKit labels, image views, and text fields

Storyboard segues

🌟 Future Enhancements
Add full Dark Mode support

Currency formatting based on user locale

Replace text fields with sliders for tip selection

Migrate UI to SwiftUI

Save previous bills using CoreData

👨‍💻 Author
Bhavesh Goswami
📍 Graduate Student – Applied Computer Science

