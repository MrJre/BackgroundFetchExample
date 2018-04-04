//
//  ModalViewController.swift
//  backgroundFetch
//
//  Created by Jerry Tromp on 05/04/2018.
//  Copyright © 2018 MrJre. All rights reserved.
//

import Foundation
import UIKit

class ModalViewController: UIViewController {
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }
}
