//
//  AlamofireSpinner.swift
//  Ticketing
//
//  Created by Daniel Clelland on 10/12/15.
//  Copyright © 2015 Daniel Clelland. All rights reserved.
//

import Alamofire

// MARK: AlamofireSpinner extension

/// The global spin counter. I'm not 100% sure how thread safe this is.
private var spinCount: Int32 = 0

extension Request {
    
    /// Starts the network activity indicator when a request starts and stops it again when all requests are finished.
    public func spin() -> Self {
        return startSpin().stopSpin()
    }
    
    /// Starts the network activity indicator when a request starts.
    public func startSpin() -> Self {
        if OSAtomicIncrement32Barrier(&spinCount) > 0 {
            UIApplication.sharedApplication().networkActivityIndicatorVisible = true
        }
        
        return self
    }
    
    /// Stops the network activity indicator when all requests are finished.
    public func stopSpin() -> Self {
        response { response in
            if OSAtomicDecrement32Barrier(&spinCount) == 0 {
                UIApplication.sharedApplication().networkActivityIndicatorVisible = false
            }
        }
        
        return self
    }
    
}
