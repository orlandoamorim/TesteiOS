//
//  InvestmentPresenter.swift
//  Santander
//
//  Created by Orlando Amorim on 15/08/19.
//  Copyright (c) 2019 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol InvestmentPresentationLogic {
    func presentScreen(response: Investment.Funds.Response)
    func presentError(_ error: Error)
}

class InvestmentPresenter: InvestmentPresentationLogic {
    
    weak var viewController: InvestmentDisplayLogic?
  
    // MARK: Present Screen
    func presentScreen(response: Investment.Funds.Response) {
        let viewModel = Investment.Funds.ViewModel(screen: response.screen)
        viewController?.displayScreen(viewModel: viewModel)
    }
    
    // MARK: Present Error
    func presentError(_ error: Error) {
        viewController?.displayError(error.localizedDescription)
    }
}
