//
//  ViewController.swift
//  QuinielaSwift
//
//  Created by Angel Alberto Rueda Mejia on 4/24/16.
//  Copyright © 2016 Angel Alberto Rueda Mejia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let webService = QUWebService()
        
        webService.getTournamentList { (error, tournaments) in
            if error == nil{
                print(tournaments)
            }else{
                print(error)
            }
            
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

