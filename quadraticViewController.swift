//
//  quadraticViewController.swift
//  Trupti_Patel_MT_8952413
//
//  Created by user238294 on 3/6/24.
//  This code is for Quadratic

import UIKit

class quadraticViewController: UIViewController {
    
    //Outlets for UI elememts
    @IBOutlet weak var aTextField: UITextField!
    @IBOutlet weak var bTextField: UITextField!
    @IBOutlet weak var cTextField: UITextField!
    @IBOutlet weak var resultMessage: UILabel!
    @IBOutlet weak var errorMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Action for the Calculate button
    @IBAction func calculateButton(_ sender: UIButton) {
            let A = aTextField.text ?? ""
            let B = bTextField.text ?? ""
            let C = cTextField.text ?? ""
            
            //this code is for checking if any of the text fields are empty
            if(A.isEmpty && B.isEmpty && C.isEmpty){
                errorMessage.text = "Please Enter the Valid Values for A, B, and C to find X"
            }else{
                if let a = Double(A){
                    if(a==0){
                        errorMessage.text = "0 is not allowed for A"
                        resultMessage.text = ""
                    }else{
                        if let b = Double(B){
                            if let c = Double(C){
                                //this code is for Calculating the discrimant
                                let discriminant = (b * b) - (4 * a * c)
                                //this code is for checking the value of the discriminanr
                                if(discriminant<0) {
                                    errorMessage.text = "There are no results since discriminant is zero."
                                    resultMessage.text = ""
                                }else if(discriminant==0) {
                                    //this code is for calculating the root when discriminant is o
                                    let root = -b / (2 * a)
                                    errorMessage.text =  ""
                                    resultMessage.text = "One Answer of X: \(String(format: "X1 value: %.2f", root))"
                                }else{
                                    //this code is for calculating the roots when discriminant is positive
                                    let root1 = (-b + sqrt(discriminant)) / (2 * a)
                                    let root2 = (-b - sqrt(discriminant)) / (2 * a)
                                    errorMessage.text =  ""
                                    resultMessage.text = "Two Answers of X:\(String(format: "\nX1: %.2f\nX2: %.2f", root1, root2))"
                                }
                            } else {
                                errorMessage.text =  "Please enter valid value for C"
                                resultMessage.text = ""
                            }
                        }else {
                            errorMessage.text = " Please enter valid valude for B"
                            resultMessage.text = ""
                        }
                    }
                } else {
                    errorMessage.text = "Please enter valid valuse for A"
                    resultMessage.text = ""
                }
            }
        }
    //Action for the clear button
    @IBAction func clearButton(_ sender: UIButton) {
            //this code is for clearing text fields and labels
            aTextField.text = ""
            bTextField.text = ""
            cTextField.text = ""
            resultMessage.text = ""
            errorMessage.text =  "Please enter valid values for A, B, and C to find X"
        }
    }

