//
//  ContactWorker.swift
//  Santander
//
//  Created by Orlando Amorim on 11/08/19.
//  Copyright (c) 2019 Santander. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import Moya

protocol ContactStoreProtocol {
    func getForm(result: @escaping (Result<ContactForm, Error>) -> Void)
}

class ContactWorker {
    
    private let provider = MoyaProvider<ContactTarget>()    
    var contactStore: ContactStoreProtocol
    
    init(contactStore: ContactStoreProtocol) {
        self.contactStore = contactStore
    }
    
    func getForm(result: @escaping (Result<ContactForm, Error>) -> Void) {
        contactStore.getForm(result: result)
    }
}
