//
//  lab2ViewController.swift
//  Trupti_Patel_MT_8952413
//
//  Created by user238294 on 3/6/24.
//  This code is for Lab 2

import UIKit

class lab2ViewController: UIViewController {
    //here i created variables for count and activity status
    var count = 0;
    var active = false;
    
    @IBOutlet weak var screenNumber: UILabel!
    
    //Action for the increment button
    @IBAction func buttonInc(_ sender: Any) {
        //this code is for increment count based on the activity status
        if (active == true){
            count += 2;  //if active, increment by 2
        } else{
            count += 1; //if not active, increment by 1
        }
        //This code is for display the update count in the screen
        screenNumber.text = String(count);
            }
    // Action for the decrement button
    @IBAction func buttonDec(_ sender: Any) {
        //Decrementing the count by 1
        count = count - 1;
        //This code is for display the update count in the screen
        screenNumber.text = String(count);
    }
    
    //Action for the Skip button
    @IBAction func skip(_ sender: Any) {
        if(active == true){
            active = false;
        } else {
            active = true;
        }
    }
    
    //Action for the Reset button
    @IBAction func reset(_ sender: Any) {
        //Reset the count to 0 and activity status to false
        count = 0;
        screenNumber.text = String(count);
        active = false;
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
