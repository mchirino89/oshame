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
    @IBOutlet weak var offendersListTableView: UITableView! {
        didSet {
            offendersListTableView.register(cellClass: OffenderCell.self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setInitialInfo()
    }
    
    private func setInitialInfo(){
        
        offenders.append(OffenderModel(name: "Taka", total: 0))
        offenders.append(OffenderModel(name: "Mauri", total: 0))
        offenders.append(OffenderModel(name: "Nahue", total: 0))
        offenders.append(OffenderModel(name: "Nico", total: 0))
        offenders.append(OffenderModel(name: "Nicholas", total: 0))
//        offendersListTableView.reloadData()
    }
    
}

extension CounterTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return offenders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(for: indexPath, type: OffenderCell.self)
        cell.setInfo(with: offenders[indexPath.row])
        return cell
    }
}
