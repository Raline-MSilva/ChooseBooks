//
//  HomeScreenViewController.swift
//  ChooseBooks
//
//  Created by Raline Maria da Silva on 07/04/23.
//

import UIKit

class HomeScreenViewController: UIViewController {
 
    var homeScreenView: HomeScreenView?
    
    override func loadView() {
        homeScreenView = HomeScreenView()
        view = homeScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
    }

}
