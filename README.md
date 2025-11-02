# 💰 Bill Calculator App

A simple and intuitive iOS application built with **Swift** and **UIKit** that helps users calculate the total bill amount, including tips, and split it among multiple people. The app also displays a summary screen with a fun image based on the selected tip percentage.

---

## 📱 Features

- ✅ Enter bill amount, tip percentage, and number of people  
- ✅ Calculates total amount including tip  
- ✅ Calculates each person's share  
- ✅ Displays results on a second screen (ResultViewController)  
- ✅ Shows dynamic image based on tip percentage (low, medium, high)  
- ✅ Includes reset button to clear inputs  
- ✅ Basic input validation and alert messages  

---

## 🧮 Example Calculation

| Input Field        | Example Value |
|--------------------|---------------|
| Bill Amount        | 100           |
| Tip (%)            | 10            |
| Number of Persons  | 2             |

**Output:**
- Total Amount To Be Paid: **$110.00**  
- Share Per Person: **$55.00**  
- Image: *mediumTip*  

---

## 🧩 Project Structure

BillCalculatorApp/
│
├── ViewController.swift # Main screen for input and calculation
├── ResultViewController.swift # Result display screen
├── Main.storyboard # UI layout with segues and connections
├── Assets.xcassets/ # App icons and images (lowTip, mediumTip, highTip)
└── Info.plist # App configuration file


---

## ⚙️ How It Works

1. User enters:
   - Bill amount
   - Tip percentage
   - Number of people
2. App validates the input.
3. App calculates:
   ```swift
   tipAmount = bill * (tip / 100)
   totalAmount = bill + tipAmount
   amountPerPerson = totalAmount / people
The app navigates to the ResultViewController, passing all computed values using a segue.

Result screen displays the formatted summary and a matching image.

🧠 Key Concepts Used
@IBOutlet and @IBAction connections

prepare(for:sender:) for data passing between view controllers

UIAlertController for input validation

Conditional logic for image selection

UIKit labels, image views, and text fields

Storyboard segue navigation


Make sure you’ve added these images in your Assets.xcassets folder.

🚀 Future Enhancements
Add dark mode support

Include currency formatting based on locale

Add sliders instead of text fields for tip percentage

Integrate with SwiftUI

Save previous bills using CoreData

🧑‍💻 Author
Bhavesh Goswami
📍 Graduate Student – Applied Computer Science

📝 License
This project is licensed under the MIT License.
Feel free to use, modify, and share with attribution.
