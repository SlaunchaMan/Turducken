//
//  Token.swift
//  MySmartCardToken
//
//  Created by Jeff Kelley on 3/16/17.
//  Copyright © 2017 Jeff Kelley. All rights reserved.
//

import CryptoTokenKit

class Token: TKSmartCardToken, TKTokenDelegate {

    init(smartCard: TKSmartCard, aid AID: Data?, tokenDriver: TKSmartCardTokenDriver) throws {
        let instanceID = "token_instance_id" // Fill in a unique persistent identifier of the token instance.
        super.init(smartCard: smartCard, aid:AID, instanceID:instanceID, tokenDriver: tokenDriver)
        // Insert code here to enumerate token objects and populate keychainContents with instances of TKTokenKeychainCertificate, TKTokenKeychainKey, etc.
        let items = [TKTokenKeychainItem]()
        self.keychainContents!.fill(with: items)
    }

    func createSession(_ token: TKToken) throws -> TKTokenSession {
        return TokenSession(token:self)
    }

}
