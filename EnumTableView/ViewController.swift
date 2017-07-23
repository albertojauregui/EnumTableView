//
//  ViewController.swift
//  EnumTableView
//
//  Created by Alberto Jauregui on 23/07/17.
//  Copyright © 2017 Alberto Jauregui. All rights reserved.
//

import UIKit

let MovieData = [
    ["title": "Jason Bourne", "cast": "Matt Damon, Alicia Vikander, Julia Stiles", "genre": "action"],
    ["title": "Suicide Squad", "cast": "Margot Robbie, Jared Leto, Will Smith", "genre": "action"],
    ["title": "Star Trek Beyond", "cast": "Chris Pine, Zachary Quinto, Zoe Saldana", "genre": "action"],
    ["title": "Deadpool", "cast": "Ryan Reynolds, Morena Baccarin, Gina Carano", "genre": "action"],
    ["title": "London Has Fallen", "cast": "Gerard Butler, Aaron Eckhart, Morgan Freeman, Angela Bassett", "genre": "action"],
    ["title": "Ghostbusters", "cast": "Kate McKinnon, Leslie Jones, Melissa McCarthy, Kristen Wiig", "genre": "comedy"],
    ["title": "Central Intelligence", "cast": "Dwayne Johnson, Kevin Hart", "genre": "comedy"],
    ["title": "Bad Moms", "cast": "Mila Kunis, Kristen Bell, Kathryn Hahn, Christina Applegate", "genre": "comedy"],
    ["title": "Keanu", "cast": "Jordan Peele, Keegan-Michael Key", "genre": "comedy"],
    ["title": "Neighbors 2: Sorority Rising", "cast": "Seth Rogen, Rose Byrne", "genre": "comedy"],
    ["title": "The Shallows", "cast": "Blake Lively", "genre": "drama"],
    ["title": "The Finest Hours", "cast": "Chris Pine, Casey Affleck, Holliday Grainger", "genre": "drama"],
    ["title": "10 Cloverfield Lane", "cast": "Mary Elizabeth Winstead, John Goodman, John Gallagher Jr.", "genre": "drama"],
    ["title": "A Hologram for the King", "cast": "Tom Hanks, Sarita Choudhury", "genre": "drama"],
    ["title": "Miracles from Heaven", "cast": "Jennifer Garner, Kylie Rogers, Martin Henderson", "genre": "drama"],
]

class ViewController: UIViewController {
    
    enum TableSection: Int {
        case action = 0, comedy, drama, indie, total
    }
    
    let SectionHeaderHeight: CGFloat = 25
    
    var data = [TableSection: [[String: String]]]()
    
    func sortData() {
        data[.action] = MovieData.filter({ $0["genre"] == "action" })
        data[.comedy] = MovieData.filter({ $0["genre"] == "comedy" })
        data[.drama] = MovieData.filter({ $0["genre"] == "drama" })
        data[.indie] = MovieData.filter({ $0["genre"] == "indie" })
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

