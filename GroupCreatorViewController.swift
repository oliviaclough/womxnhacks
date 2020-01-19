//
//  GroupCreatorViewController.swift
//  Swift iOS Multiview
//
//  Created by Olivia Clough on 1/18/20.
//  Copyright © 2020 Olivia Clough. All rights reserved.
//

import UIKit

class GroupCreatorViewController: UIViewController, UITextFieldDelegate {
    var people = [String]()

    @IBOutlet weak var partyName: UITextField!
    
    @IBOutlet weak var memberSearch: UITextField!
    
    @IBOutlet weak var partyOutput: UILabel!
    
    @IBOutlet weak var labelOutput: UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       if textField == partyName {
          textField.resignFirstResponder()
          memberSearch.becomeFirstResponder()
       }else{
          memberSearch.resignFirstResponder()
       }
       return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        partyName.delegate = self
        memberSearch.delegate = self
        // Do any additional setup after loading the view.
        
        let tapRecogniser = UITapGestureRecognizer()
        tapRecogniser.addTarget(self, action: #selector(self.viewTapped))
        self.view.addGestureRecognizer(tapRecogniser)
    }
    
    @objc func viewTapped(){
       self.view.endEditing(true)
    }
    
    @IBAction func setButton(_ sender: Any) {
        let name: String = partyName.text!
        partyOutput.text = "\(name)"
        
    }
    @IBAction func searchButton(_ sender: Any) {
        viewTapped()
        let member: String = memberSearch.text!
        people.append(member)
        labelOutput.text = people.joined(separator: "\n")
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
