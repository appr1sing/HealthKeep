//
//  CollectionViewCell.swift
//  HealthKeep
//
//  Created by Arvin San Miguel on 7/26/18.
//  Copyright © 2018 Appr1sing Studios. All rights reserved.
//

import UIKit

class MainCell: UICollectionViewCell {
    
    var titleLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = SFCompact._thin
        return label
    }()
    
    var imageView : UIImageView = {
        let imgView = UIImageView(frame: .zero)
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.75).isActive = true
        imageView.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
        contentView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        //titleLabel.backgroundColor = .yellow
        
        
    }
    
    required init(coder aDecoder: NSCoder) { fatalError("init(coder:)") }
}
