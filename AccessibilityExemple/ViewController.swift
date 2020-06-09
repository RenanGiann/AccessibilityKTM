//
//  ViewController.swift
//  AccessibilityExemple
//
//  Created by Renan Giannella​  on 08/06/20.
//  Copyright © 2020 Renan Giannella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var listTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nibTexto = UINib(nibName: "CustomTableViewCell", bundle: nil)
        self.listTableView.register(nibTexto, forCellReuseIdentifier: "CustomCell")
        self.listTableView.delegate = self
        self.listTableView.dataSource = self
        
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let models = ["Naked", "Sport"]
        return models[section]
    }

//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = UIView(frame: CGRect(origin: CGPoint.zero,
//                                              size: CGSize(width: tableView.frame.width,
//                                                           height: 44)))
//        headerView.backgroundColor = .orange
//        let title = UILabel()
//        title.font = UIFont.boldSystemFont(ofSize: 18)
//        title.textColor = .darkGray
//        title.text = "Naked"
//
//        let headerAccess = UIAccessibilityElement(accessibilityContainer: headerView)
//        headerAccess.accessibilityFrameInContainerSpace = headerView.frame
//
//        headerAccess.isAccessibilityElement = true
//        headerAccess.accessibilityLabel = "Estilo Naked       tabela com \(4) itens"
//        headerAccess.accessibilityTraits = .header
//
//        headerView.accessibilityElements = [headerAccess]
//
//        return headerView
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = 4
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell")
        cell?.accessibilityHint = "Dê dois toques para acessar"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goDetail", sender: nil)
    }
    
}

