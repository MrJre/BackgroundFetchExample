//
//  ViewController.swift
//  backgroundFetch
//
//  Created by Jerry Tromp on 04/04/2018.
//  Copyright © 2018 MrJre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .medium
        dateFormatter.dateStyle = .none
        return dateFormatter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateDate()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateDate() {
        dateLabel.text = dateFormatter.string(from: Date())
    }
    
    func performFetch(with completion: @escaping (UIBackgroundFetchResult) -> Void) {
        
        if presentedViewController != nil {
            dismiss(animated: true, completion: nil)
        }
        
        updateDate()
        completion(.newData)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if let modalVC = UIStoryboard(name: "Modal", bundle: nil).instantiateInitialViewController() {
            present(modalVC, animated: true, completion: nil)
        }
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
}

