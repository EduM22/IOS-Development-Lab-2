//
//  data.swift
//  PersonalCVApp
//
//  Created by Johan Törnqvist on 2019-11-05.
//  Copyright © 2019 Johan Törnqvist. All rights reserved.
//

import Foundation

class Information {
    let imageName: String
    let name: String
    let date: String
    var text: String
    
    // By setting default values here we don't have to set these parameters when creating the object
    init(imageName: String = "default", name: String = "Playlist", date: String = "2016-2019") {
        self.imageName = imageName
        self.name = name
        self.date = date
        self.text = "bla bla bla"
    }
    
    func setText(text: String = "") {
        self.text = text
    }
}

var sections = ["Work", "Education"]
var experienceList = [
    [
    Information(name: "Work1", date: "2010-2011"),
    Information(name: "Work2", date: "2011-2012")
    ],
    [
    Information(name: "Edu1", date: "2013-2015"),
    Information(name: "Edu1", date: "2015-2018")
    ]
]
