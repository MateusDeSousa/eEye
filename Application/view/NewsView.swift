//
//  NewsView.swift
//  eEye
//
//  Created by Mateus Sousa on 03/03/20.
//  Copyright © 2020 Mateus De Sousa. All rights reserved.
//

import UIKit

class NewsView: UIView {
    
    let newsTableView: UITableView = {
        let tableView = UITableView()
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.separatorStyle = .none
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setStyleComponents()
        addElementsOfView()
        buildContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setStyleComponents(){
        newsTableView.backgroundColor = UIColor(named: "homeColor")
    }
    
    private func addElementsOfView(){
        addSubview(newsTableView)
    }
    
    private func buildContraints(){
        NSLayoutConstraint.activate([
            newsTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            newsTableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            newsTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            newsTableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
