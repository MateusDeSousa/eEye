//
//  NewCell.swift
//  eEye
//
//  Created by Mateus Sousa on 03/03/20.
//  Copyright © 2020 Mateus De Sousa. All rights reserved.
//

import UIKit

class NewCell: UITableViewCell {
    
    static let identifier = "NewCell"
    
    let cardView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "cardColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let thumbnail: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let title: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setStyleComponents()
        addComponentsOfView()
        buildContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.layoutSubviews()
        cardView.clipsToBounds = true
        cardView.layer.cornerRadius = 25
        cardView.layer.masksToBounds = false
        cardView.layer.shadowColor   = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 0.1
        cardView.layer.shadowOffset  = CGSize(width: 0, height: 8)
        cardView.layer.shadowRadius  = 8
    }
    
    private func setStyleComponents(){
        contentView.backgroundColor = UIColor(named: "homeColor")
    }
    
    private func addComponentsOfView(){
        contentView.addSubview(cardView)
        cardView.addSubview(thumbnail)
        cardView.addSubview(title)
    }
    
    private func buildContraints(){
        NSLayoutConstraint.activate([
            cardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            cardView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            cardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            cardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
            
            thumbnail.heightAnchor.constraint(equalToConstant: 200),
            thumbnail.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 10),
            thumbnail.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 10),
            thumbnail.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -10),
            
            title.topAnchor.constraint(equalTo: thumbnail.bottomAnchor, constant: 10),
            title.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -10),
            title.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20),
            title.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -20)
        ])
    }
}
