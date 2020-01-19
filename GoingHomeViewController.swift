//
//  GoingHomeViewController.swift
//  Swift iOS Multiview
//
//  Created by Olivia Clough on 1/18/20.
//  Copyright © 2020 Olivia Clough. All rights reserved.
//

import UIKit

class GoingHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ImHome(_ sender: Any) {
        // 1
         let content = UNMutableNotificationContent()
         content.title = "Important Update!"
         content.subtitle = "from " // + .getUserID()
         content.body = "I got home safely!"
         
         
         // 3
         let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 2, repeats: false)
         let request = UNNotificationRequest(identifier: "notification.id.01", content: content, trigger: trigger)
         
         // 4
         UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)


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
