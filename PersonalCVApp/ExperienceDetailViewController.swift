//
//  ExperienceDetailViewController.swift
//  PersonalCVApp
//
//  Created by Johan Törnqvist on 2019-10-29.
//  Copyright © 2019 Johan Törnqvist. All rights reserved.
//

import UIKit

class ExperienceDetailViewController: UIViewController {
    
    @IBOutlet weak var frontImage: UIImageView!
    
    @IBOutlet weak var titelLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var textLabel: UITextView!
    
    var project: IndexPath = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = experienceList[project[0]][project[1]].name
        
        titelLabel.text = experienceList[project[0]][project[1]].name
        frontImage.image = UIImage(named: "default")
        dateLabel.text = experienceList[project[0]][project[1]].date
        textLabel.text = experienceList[project[0]][project[1]].text
        
    }

}
