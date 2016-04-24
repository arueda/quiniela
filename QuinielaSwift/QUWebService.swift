//
//  QUWebService.swift
//  QuinielaSwift
//
//  Created by Angel Alberto Rueda Mejia on 4/24/16.
//  Copyright © 2016 Angel Alberto Rueda Mejia. All rights reserved.
//

import UIKit

class QUWebService: NSObject {
    
    func getTournamentList ( callback:(NSError?, NSArray?)->Void )
    {
        let url = NSURL(string: "https://ruby-aarm.rhcloud.com/torneos.json")
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithURL(url!) { (data, response, error) in
            
            if error != nil {
                callback(error, nil)
                return
            }
            
            
            do {
                let response = try NSJSONSerialization.JSONObjectWithData(data!, options: []) as! NSDictionary
                let tournaments = response.objectForKey("Torneos") as! NSArray
                callback( nil, tournaments )
            } catch let error as NSError {
                callback(error, nil)
            }
        }
        task.resume()
    }

}
