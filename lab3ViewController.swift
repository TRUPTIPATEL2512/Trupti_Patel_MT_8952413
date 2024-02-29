//
//  lab3ViewController.swift
//  Trupti_Patel_MT_8952413
//
//  Created by user238294 on 3/6/24.
// This code is for Lab 3

import UIKit

class lab3ViewController: UIViewController {
    
    //Outlets for UI elements
    @IBOutlet weak var firstname: UITextField!
    @IBOutlet weak var lastname: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var textview: UITextView!
    @IBOutlet weak var invlabel: UILabel!
    
    // Action for the Add button
    @IBAction func btnadd(_ sender: Any) {
        //this code is for retrieving text input from text fields
        let firstname = firstname.text
        let lastname = lastname.text
        let country = country.text
        let age = age.text
        //this is for display entered information in the text view
        textview.text = "Name :  \(firstname ?? "") \(lastname ??  "")  \nCountry :  \(country ?? "") \nAge : \(age ?? "")"
    }
    // Action for the Submit button
    @IBAction func btnsubmit(_ sender: Any) {
        //this code is for checking if any of the text fields are empty and also for setting validation message based on the condition
        invlabel.text = (firstname.text?.isEmpty == false && lastname.text?.isEmpty == false && country.text?.isEmpty == false && age.text?.isEmpty == false) ? "Successfully Submitted" : "Complete the missing info!"
        invlabel.isHidden = false
    }
    //Action for the Clear button
    @IBAction func btnclear(_ sender: Any) {
        //this code is for clearing text fields and text view
        firstname.text = ""
        lastname.text = ""
        country.text = ""
        age.text = ""
        textview.text = ""
        invlabel.isHidden = true
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
