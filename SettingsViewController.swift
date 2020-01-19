//
//  SettingsViewController.swift
//  Swift iOS Multiview
//
//  Created by Olivia Clough on 1/18/20.
//  Copyright © 2020 Olivia Clough. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var idNumOutput: UILabel!
    
    @IBOutlet weak var nameIn: UITextField!
    
    @IBOutlet weak var addressIn: UITextField!
    
    @IBOutlet weak var nameSaved: UILabel!
   
    @IBOutlet weak var addressSaved: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        idNumOutput.text = "37650o347"
        //will be .getUserID()
        //if . get User Name != "" {
            //nameSaved.text = "\(name)"
        //}
        
        //if . get User Address != "" {
            //addressSaved.text = "\(address)"
        //}
    }
    
    @IBAction func saveButton(_ sender: Any) {
        let name: String = nameIn.text!
        //.set User Name
        nameSaved.text = "\(name)"
        
        let address: String = addressIn.text!
        //.set User Address
        addressSaved.text = "\(address)"
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
