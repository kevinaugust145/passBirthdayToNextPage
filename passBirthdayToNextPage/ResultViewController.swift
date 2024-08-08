//
//  ResultViewController.swift
//  passBirthdayToNextPage
//
//  Created by 洪宗燦 on 2024/8/8.
//

import UIKit
import WebKit

class ResultViewController: UIViewController {
    var birthday : Date!

    @IBOutlet weak var showWeb: WKWebView!
    let lifeNumberNames = ["", "開創", "協調", "創意", "務實", "自由", "關懷", "探究", "權威", "智慧"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    

    func calculateLifeNumber(date: Date) -> Int {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yMd"
        var numberString = dateFormatter.string(from: date)
        var sum = 0
        repeat {
            sum = 0
            for character in numberString {
                let number = Int(String(character))!
                sum = sum + number
            }
            numberString = "\(sum)"
        } while sum > 9
        return sum
    }
    
    func updateUI() {
        let number = calculateLifeNumber(date: birthday)
        title = "\(number) \(lifeNumberNames[number])數"
        if let url = URL(string: "https://www.ifreesite.com/numerology/a\(number).htm") {
            let request = URLRequest(url: url)
            showWeb.load(request)
            
        }
    }
}
