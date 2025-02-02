//
//  ContactPresenter.swift
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

protocol ContactPresentationLogic {
    func presentForm(_ form: ContactForm)
    func presentError(_ error: Error)
    func presentSuccess()
}

class ContactPresenter: ContactPresentationLogic {
    
    weak var viewController: ContactDisplayLogic?
  
    // MARK: Present Form
    func presentForm(_ form: ContactForm) {
        viewController?.displayForm(form)
    }
    
    // MARK: Present Error
    func presentError(_ error: Error) {
        viewController?.displayError(error.localizedDescription)
    }
    
    // MARK: Present Success
    func presentSuccess() {
        viewController?.displaySuccess()
    }
}
