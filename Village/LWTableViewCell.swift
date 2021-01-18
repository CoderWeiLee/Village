//
//  LWTableViewCell.swift
//  Village
//
//  Created by 李伟 on 2021/1/18.
//

import Foundation
import UIKit
import SnapKit
class LWTableViewCell: UITableViewCell {
    var titleLabel: UILabel!
    var addressLabel: UILabel!
    var stateLabel: UILabel!
    var timeLabel: UILabel!
    var model: meetingModel? {
        didSet {
            titleLabel.text = model?.name
            addressLabel.text = model?.address
            stateLabel.text = model?.state
            timeLabel.text = model?.time
        }
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        titleLabel = UILabel()
        titleLabel.textColor = .black
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight(10))
        contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.left.equalTo(contentView).offset(10)
            make.top.equalTo(contentView).offset(10)
        }
        
        addressLabel = UILabel()
        addressLabel.textColor = .darkGray
        addressLabel.font = UIFont.systemFont(ofSize: 16)
        contentView.addSubview(addressLabel)
        addressLabel.snp.makeConstraints { (make) in
            make.left.equalTo(titleLabel)
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
        }
        
        stateLabel = UILabel()
        stateLabel.textColor = .darkGray
        stateLabel.font = UIFont.systemFont(ofSize: 16)
        contentView.addSubview(stateLabel)
        stateLabel.snp.makeConstraints { (make) in
            make.left.equalTo(titleLabel)
            make.top.equalTo(addressLabel.snp.bottom).offset(10)
        }
        
        timeLabel = UILabel()
        timeLabel.textColor = .darkGray
        timeLabel.font = UIFont.systemFont(ofSize: 16)
        contentView.addSubview(timeLabel)
        timeLabel.snp.makeConstraints { (make) in
            make.left.equalTo(titleLabel)
            make.top.equalTo(stateLabel.snp.bottom).offset(10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
