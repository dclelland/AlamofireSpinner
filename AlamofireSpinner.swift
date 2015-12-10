//
//  AlamofireSpinner.swift
//  Ticketing
//
//  Created by STQRY8 on 10/12/15.
//  Copyright © 2015 Stqry. All rights reserved.
//

import Alamofire

private var spinCount: Int = 0

extension Request {
    
    public func spin() -> Self {
        return startSpin().stopSpin()
    }
    
    public func startSpin() -> Self {
        if spinCount == 0 {
            UIApplication.sharedApplication().networkActivityIndicatorVisible = true
        }
        
        spinCount = spinCount.successor()
        
        return self
    }
    
    public func stopSpin() -> Self {
        response { response in
            spinCount = spinCount.predecessor()
            
            if spinCount == 0 {
                UIApplication.sharedApplication().networkActivityIndicatorVisible = false
            }
        }
        
        return self
    }

}
