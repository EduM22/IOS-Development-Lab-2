//
//  SkillsViewController.swift
//  PersonalCVApp
//
//  Created by Johan Törnqvist on 2019-10-31.
//  Copyright © 2019 Johan Törnqvist. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {
    
    
    @IBOutlet weak var swiftLabel: UILabel!
    
    @IBOutlet weak var SQLLabel: UILabel!
    
    @IBOutlet weak var pythonLabel: UILabel!
    
    @IBOutlet weak var cplusplusLabel: UILabel!
    
    @IBOutlet weak var cLabel: UILabel!
    
    @IBOutlet weak var dartLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .black
        swiftLabel.alpha = 0
        SQLLabel.alpha = 0
        pythonLabel.alpha = 0
        cplusplusLabel.alpha = 0
        cLabel.alpha = 0
        dartLabel.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        UIView.animate(withDuration: 1.5) {
            self.view.backgroundColor = .white
            self.swiftLabel.alpha = 1
            self.SQLLabel.alpha = 1
            self.pythonLabel.alpha = 1
            self.cplusplusLabel.alpha = 1
            self.cLabel.alpha = 1
            self.dartLabel.alpha = 1
        }
        
    }
    

    @IBAction func closeSkillsView(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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

