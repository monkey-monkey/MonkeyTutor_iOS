//
//  DateSelectViewController.swift
//  MonkeyTutor
//
//  Created by admin on 16/4/2561 BE.
//  Copyright © 2561 MonkeyIT. All rights reserved.
//

import UIKit

class DateSelectViewController: UIViewController {
    
    @IBOutlet weak var date: UIDatePicker!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: "DateSelectView", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBAction func doneBtnTapped(_ sender: Any?) {
        if let parent = presentingViewController as? NewWorkflowViewController {
            parent.setDate(date: date.date)
            dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        doneBtnTapped(nil)
    }
    
}