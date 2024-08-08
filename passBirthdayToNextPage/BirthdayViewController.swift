//
//  BirthdayViewController.swift
//  passBirthdayToNextPage
//
//  Created by 洪宗燦 on 2024/8/8.
//

import UIKit

class BirthdayViewController: UIViewController {

    @IBOutlet weak var dataPick: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    @IBSegueAction func ShowResult(_ coder: NSCoder) -> ResultViewController? {
        let controller = ResultViewController(coder: coder)
        controller?.birthday = dataPick.date
        return controller
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
