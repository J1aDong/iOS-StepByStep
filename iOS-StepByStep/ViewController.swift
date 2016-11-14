//
//  ViewController.swift
//  iOS-StepByStep
//
//  Created by J1aDong on 2016/11/14.
//  Copyright © 2016年 J1aDong. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var items = ["武汉","上海","北京","深圳","广州","重庆","香港","台海","天津"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        self.view.addSubview(tableView)
        
        tableView.snp.makeConstraints {
            (make) -> Void in
            make.edges.equalTo(self.view).inset(UIEdgeInsetsMake(20, 0, 0, 0))
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = self.items[indexPath.row]
        return cell
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

