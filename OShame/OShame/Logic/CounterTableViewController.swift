//
//  CounterTableViewController.swift
//  OShame
//
//  Created by Mauricio Chirino on 25/8/18.
//  Copyright © 2018 Mauricio Chirino. All rights reserved.
//

import UIKit

class CounterTableViewController: UIViewController {

    fileprivate var offenders: [OffenderModel] = []
    fileprivate let offenderCellId = "offenderCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    convenience init(){
        self.init()
        offenders.append(OffenderModel(name: "Taka", offense: 0))
        offenders.append(OffenderModel(name: "Mauri", offense: 0))
        offenders.append(OffenderModel(name: "Nahue", offense: 0))
        offenders.append(OffenderModel(name: "Nico", offense: 0))
        offenders.append(OffenderModel(name: "Nicholas", offense: 0))
    }
    
}

extension CounterTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return offenders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
