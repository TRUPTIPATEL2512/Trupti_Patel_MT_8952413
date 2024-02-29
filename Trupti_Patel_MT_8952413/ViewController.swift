//
//  ViewController.swift
//  Trupti_Patel_MT_8952413
//
//  Created by user238294 on 2/28/24.
//  This code is for Scene 1 Canada

import UIKit

class ViewController: UIViewController {
    
    //Outlets for UI elements
    @IBOutlet weak var errlabel: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var CityText: UITextField!
    @IBAction func FindCityButton(_ sender: Any) {
    
    //this code is for getting the input text from the text field
        guard let nameOfCity = CityText.text else { return }

    //this code is for Check the entered city name and display the corresponding image
        switch nameOfCity {
                case "Calgary", "Halifax", "Montreal", "Toronto", "Vancouver", "Winnipeg":
                    if let image = UIImage(named: nameOfCity) {
                            ImageView.image = image
                            errlabel.isHidden = true
                        }
                default:
                    // Display error message if the entered city name is not recognized
                    errlabel.isHidden = false
                    ImageView.image = nil
                    errlabel.text = "City is not Found"
                    errlabel.textColor = .red
                }
            }
    override func viewDidLoad() {
        super.viewDidLoad()
        //errlabel.isHidden = true
    }
}

