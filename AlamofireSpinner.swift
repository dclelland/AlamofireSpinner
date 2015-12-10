//
//  AlamofireSpinner.swift
//  Ticketing
//
//  Created by STQRY8 on 10/12/15.
//  Copyright © 2015 Stqry. All rights reserved.
//

import Alamofire

extension Request {
    
    func spinner() -> Self {
        return startSpinner().stopSpinner()
    }
    
    func startSpinner() -> Self {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
        
        return self
    }
    
    func stopSpinner() -> Self {
        response { response in
            UIApplication.sharedApplication().networkActivityIndicatorVisible = false
        }
        
        return self
    }

}
