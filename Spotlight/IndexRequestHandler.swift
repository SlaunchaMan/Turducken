//
//  IndexRequestHandler.swift
//  Spotlight
//
//  Created by Jeff Kelley on 3/16/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import CoreSpotlight

class IndexRequestHandler: CSIndexExtensionRequestHandler {

    override func searchableIndex(_ searchableIndex: CSSearchableIndex, reindexAllSearchableItemsWithAcknowledgementHandler acknowledgementHandler: @escaping () -> Void) {
        // Reindex all data with the provided index
        
        acknowledgementHandler()
    }
    
    override func searchableIndex(_ searchableIndex: CSSearchableIndex, reindexSearchableItemsWithIdentifiers identifiers: [String], acknowledgementHandler: @escaping () -> Void) {
        // Reindex any items with the given identifiers and the provided index
        
        acknowledgementHandler()
    }

}
