//
//  ExperienceViewController.swift
//  PersonalCVApp
//
//  Created by Johan Törnqvist on 2019-10-28.
//  Copyright © 2019 Johan Törnqvist. All rights reserved.
//

import UIKit

class ExperienceViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
        
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? ExperienceDetailViewController, let position = sender as? IndexPath {
            
            //print(position[1])
            //print(position[0])
            
            destination.project = position
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "goToDetailView", sender: indexPath)
    }

}

// MARK: - Table View
extension ExperienceViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return sections[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return experienceList[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as? ExperienceTableViewCell {
                
            cell.cellImage.image = UIImage(named: experienceList[indexPath.section][indexPath.row].imageName)
            cell.mainLabel.text = experienceList[indexPath.section][indexPath.row].name
            cell.dateLabel.text = experienceList[indexPath.section][indexPath.row].date
                
            return cell
        }

        return UITableViewCell()
    }
    
    
}
