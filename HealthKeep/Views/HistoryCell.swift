//
//  HistoryCell.swift
//  HealthKeep
//
//  Created by Arvin San Miguel on 7/30/18.
//  Copyright © 2018 Appr1sing Studios. All rights reserved.
//

import UIKit

class HistoryCell: UICollectionViewCell {
    
    var nameView: UILabel = {
        let nameLabel = UILabel(frame: .zero)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameLabel
    }()
    
    var nameLabel: UILabel = {
        let name = UILabel(frame: .zero)
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    var relationView: UILabel = {
        let relationLabel = UILabel(frame: .zero)
        relationLabel.translatesAutoresizingMaskIntoConstraints = false
        return relationLabel
    }()
    
    var relationLabel: UILabel = {
        let relation = UILabel(frame: .zero)
        relation.translatesAutoresizingMaskIntoConstraints = false
        return relation
    }()
    
    var conditionLabel: UILabel = {
        let condition = UILabel(frame: .zero)
        condition.translatesAutoresizingMaskIntoConstraints = false
        return condition
    }()
    
    var conditionView: UILabel = {
        let conditionLabel = UILabel(frame: .zero)
        conditionLabel.translatesAutoresizingMaskIntoConstraints = false
        return conditionLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init(coder aDecoder: NSCoder) { fatalError("init(coder:)") }
    
    
    func setupViews() {

        let widthMultiplier: CGFloat = 0.95
        
        contentView.addSubview(nameLabel)
        contentView.addSubview(relationLabel)
        contentView.addSubview(conditionLabel)
        contentView.addSubview(nameView)
        contentView.addSubview(relationView)
        contentView.addSubview(conditionView)
        
        nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 57.0).isActive = true
        nameLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: widthMultiplier).isActive = true
        nameLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true 
        nameLabel.backgroundColor = Colors.BLUSH.top
        nameLabel.layer.cornerRadius = 14
        nameLabel.clipsToBounds = true
        nameLabel.textAlignment = .center
        nameLabel.textColor = .white
        nameLabel.font = UIFont(name: "SFCompactDisplay-Semibold", size: 18.0)  // SFCompact._semibold
        
        nameView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4).isActive = true
        nameView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 4).isActive = true
        nameView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        nameView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        nameView.textAlignment = .center
        nameView.textColor = .white
        nameView.text = "Name :"
        nameView.font = SFCompact._lightSmall
        
        
        relationLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8).isActive = true
        relationLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: widthMultiplier).isActive = true
        relationLabel.heightAnchor.constraint(equalToConstant: 57.0).isActive = true
        relationLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        relationLabel.backgroundColor = Colors.BLUSH.top.withAlphaComponent(0.9)
        relationLabel.layer.cornerRadius = 14
        relationLabel.clipsToBounds = true
        relationLabel.textAlignment = .center
        relationLabel.textColor = .white
        relationLabel.font =  UIFont(name: "SFCompactDisplay-Semibold", size: 18.0) 
        
        relationView.topAnchor.constraint(equalTo: relationLabel.topAnchor, constant: 4).isActive = true
        relationView.leftAnchor.constraint(equalTo: relationLabel.leftAnchor, constant: 4).isActive = true
        relationView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        relationView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        relationView.textAlignment = .center
        relationView.textColor = .white
        relationView.text = "Relation :"
        relationView.font = SFCompact._lightSmall
        
        conditionLabel.topAnchor.constraint(equalTo: relationLabel.bottomAnchor, constant: 8).isActive = true
        conditionLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: widthMultiplier).isActive = true
        conditionLabel.heightAnchor.constraint(equalToConstant: 248).isActive = true
        conditionLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        conditionLabel.layer.cornerRadius = 14
        conditionLabel.clipsToBounds = true
        conditionLabel.backgroundColor = Colors.BLUSH.top.withAlphaComponent(0.9)
        conditionLabel.textAlignment = .center
        conditionLabel.textColor = .white
        conditionLabel.font = UIFont(name: "SFCompactDisplay-Semibold", size: 24.0)  // SFCompact._semibold
        conditionLabel.numberOfLines = 0
        
        conditionView.topAnchor.constraint(equalTo: conditionLabel.topAnchor, constant: 4).isActive = true
        conditionView.leftAnchor.constraint(equalTo: conditionLabel.leftAnchor, constant: 4).isActive = true
        conditionView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        conditionView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        conditionView.textAlignment = .center
        conditionView.textColor = .white
        conditionView.text = "Condition :"
        conditionView.font = SFCompact._lightSmall
        
        
    }
}
