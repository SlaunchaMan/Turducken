//
//  RequestHandler.swift
//  MyMacSharedLinks
//
//  Created by Jeff Kelley on 3/16/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import Foundation

class RequestHandler: NSObject, NSExtensionRequestHandling {

    func beginRequest(with context: NSExtensionContext) {
        let extensionItem = NSExtensionItem()
        
        // The keys of the user info dictionary match what data Safari is expecting for each Shared Links item.
        // For the date, use the publish date of the content being linked
        extensionItem.userInfo = [ AnyHashable("uniqueIdentifier"): "uniqueIdentifierForSampleItem", AnyHashable("urlString"): "http://apple.com", AnyHashable("date"): NSDate() ]
        
        extensionItem.attributedTitle = NSAttributedString(string: "Sample title")
        extensionItem.attributedContentText = NSAttributedString(string: "Sample description text")
        
        // You can supply a custom image to be used with your link as well. Use the NSExtensionItem's attachments property.
        // extensionItem.attachments = [ NSItemProvider(contentsOfURL: NSBundle.mainBundle().URLForResource("customLinkImage", withExtension: "png"))! ]

        context.completeRequest(returningItems: [extensionItem], completionHandler: nil)
    }

}
