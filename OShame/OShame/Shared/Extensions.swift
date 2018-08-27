//
//  Extensions.swift
//  OShame
//
//  Created by Mauricio Chirino on 26/8/18.
//  Copyright © 2018 Mauricio Chirino. All rights reserved.
//

import UIKit

extension UITableView {
    private static func reuseIdentifier<T: UITableViewCell>(class _class: T.Type) -> String {
        return (Bundle(for: _class).bundleIdentifier ?? "_P3BundleIdentifier") + String(describing: _class)
    }
    
    func register<T: UITableViewCell>(cellClass: T.Type) {
        register(cellClass, forCellReuseIdentifier: UITableView.reuseIdentifier(class: cellClass))
    }
    
    func dequeue<T: UITableViewCell>(for indexPath: IndexPath, type: T.Type) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: UITableView.reuseIdentifier(class: type), for: indexPath) as? T else {
            fatalError("Cell \"\(String(describing: type))\" not configured correctly for reuse.")
        }
        return cell
    }
}
