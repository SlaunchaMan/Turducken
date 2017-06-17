//
//  FilterControlProvider.swift
//  MyNetworkFilterControl
//
//  Created by Jeff Kelley on 6/17/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import NetworkExtension

class FilterControlProvider: NEFilterControlProvider {

    override func startFilter(completionHandler: @escaping (Error?) -> Void) {
        // Add code to initialize the filter
        completionHandler(nil)
    }
    
    override func stopFilter(with reason: NEProviderStopReason, completionHandler: @escaping () -> Void) {
        // Add code to clean up filter resources
        completionHandler()
    }
    
    override func handleNewFlow(_ flow: NEFilterFlow, completionHandler: @escaping (NEFilterControlVerdict) -> Void) {
        // Add code to determine if the flow should be dropped or not, downloading new rules if required
        completionHandler(.allow(withUpdateRules: false))
    }
}
