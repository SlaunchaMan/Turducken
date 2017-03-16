//
//  ServiceProvider.swift
//  MyTVServices
//
//  Created by Jeff Kelley on 3/16/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import Foundation
import TVServices

class ServiceProvider: NSObject, TVTopShelfProvider {

    override init() {
        super.init()
    }

    // MARK: - TVTopShelfProvider protocol

    var topShelfStyle: TVTopShelfContentStyle {
        // Return desired Top Shelf style.
        return .sectioned
    }

    var topShelfItems: [TVContentItem] {
        // Create an array of TVContentItems.
        return []
    }

}

