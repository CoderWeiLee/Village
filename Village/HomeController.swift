//
//  HomeController.swift
//  Village
//
//  Created by 李伟 on 2021/1/18.
//

import UIKit
import Foundation
import SnapKit
let w = (kScreenW - 30 * 6) / 5
let h = w
let margin = (kScreenW - 400) / 4
let reuseID = "CollectionCell"
class HomeController: UIViewController {
    var btn1: LWButton!
    var btn2: LWButton!
    var btn3: LWButton!
    var btn4: LWButton!
    var btn5: LWButton!

    var btn6: LWButton!
    var btn7: LWButton!
    var btn8: LWButton!
    var btn9: LWButton!
    var btn10: LWButton!

    var btn11: LWButton!
    var btn12: LWButton!
    var btn13: LWButton!
    var btn14: LWButton!
    var btn15: LWButton!
    var tableView: UITableView!
    var data:[meetingModel]?
    override func viewDidLoad() {
        super.viewDidLoad()
        // 纯色生成一张图片
        let bgImg = UIColor.createImage(colorString: "#22CED0", size: CGSize(width: kScreenW, height: navigationHeight))
        //隐藏分割线
        navigationController?.navigationBar.setBackgroundImage(bgImg, for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        let leftItem = UILabel()
        leftItem.text = "村务通"
        leftItem.textColor = .white
        leftItem.font = UIFont.systemFont(ofSize: 18)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftItem)
        let rightItem = UIBarButtonItem(customView: UIImageView(image: UIImage(named: "nav_search")))
        navigationItem.rightBarButtonItem = rightItem
        
        //创建UI
        btn1 = LWButton(type: .custom)
        view.addSubview(btn1)
        btn1.setImage(UIImage(named: "i666"), for: .normal)
        btn1.setTitle("人员详情", for: .normal)
        btn1.setTitleColor(.lightGray, for: .normal)
        btn1.adjustsImageWhenHighlighted = false
        btn1.tag = 1
        btn1.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        btn1.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(100)
            make.top.equalTo(view).offset(20)
            make.left.equalTo(view).offset(0)
        }
        
        btn2 = LWButton(type: .custom)
        view.addSubview(btn2)
        btn2.setImage(UIImage(named: "i666"), for: .normal)
        btn2.setTitle("评分报表", for: .normal)
        btn2.setTitleColor(.lightGray, for: .normal)
        btn2.adjustsImageWhenHighlighted = false
        btn2.tag = 2
        btn2.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        btn2.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(100)
            make.centerY.equalTo(btn1)
            make.left.equalTo(btn1.snp.right).offset(margin)
        }
        
        btn3 = LWButton(type: .custom)
        view.addSubview(btn3)
        btn3.setImage(UIImage(named: "i666"), for: .normal)
        btn3.setTitle("视频会议明细", for: .normal)
        btn3.setTitleColor(.lightGray, for: .normal)
        btn3.adjustsImageWhenHighlighted = false
        btn3.tag = 3
        btn3.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        btn3.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(100)
            make.centerY.equalTo(btn1)
            make.left.equalTo(btn2.snp.right).offset(margin)
        }
        
        btn4 = LWButton(type: .custom)
        view.addSubview(btn4)
        btn4.setImage(UIImage(named: "i666"), for: .normal)
        btn4.setTitle("待定Title", for: .normal)
        btn4.setTitleColor(.lightGray, for: .normal)
        btn4.adjustsImageWhenHighlighted = false
        btn4.tag = 4
        btn4.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        btn4.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(100)
            make.centerY.equalTo(btn1)
            make.left.equalTo(btn3.snp.right).offset(margin)
        }
        
        btn5 = LWButton(type: .custom)
        view.addSubview(btn5)
        btn5.setImage(UIImage(named: "i666"), for: .normal)
        btn5.setTitle("待定Title", for: .normal)
        btn5.setTitleColor(.lightGray, for: .normal)
        btn5.adjustsImageWhenHighlighted = false
        btn5.tag = 5
        btn5.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        btn5.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(100)
            make.centerY.equalTo(btn1)
            make.left.equalTo(btn4.snp.right).offset(margin)
        }
        
        btn6 = LWButton(type: .custom)
        view.addSubview(btn6)
        btn6.setImage(UIImage(named: "i666"), for: .normal)
        btn6.setTitle("现场会议Live", for: .normal)
        btn6.setTitleColor(.lightGray, for: .normal)
        btn6.adjustsImageWhenHighlighted = false
        btn6.tag = 6
        btn6.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        btn6.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(100)
            make.centerX.equalTo(btn1)
            make.top.equalTo(btn1.snp.bottom)
        }
        
        btn7 = LWButton(type: .custom)
        view.addSubview(btn7)
        btn7.setImage(UIImage(named: "i666"), for: .normal)
        btn7.setTitle("会议回放", for: .normal)
        btn7.setTitleColor(.lightGray, for: .normal)
        btn7.adjustsImageWhenHighlighted = false
        btn7.tag = 7
        btn7.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        btn7.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(100)
            make.centerY.equalTo(btn6)
            make.left.equalTo(btn6.snp.right).offset(margin)
        }
        
        btn8 = LWButton(type: .custom)
        view.addSubview(btn8)
        btn8.setImage(UIImage(named: "i666"), for: .normal)
        btn8.setTitle("费用审批", for: .normal)
        btn8.setTitleColor(.lightGray, for: .normal)
        btn8.adjustsImageWhenHighlighted = false
        btn8.tag = 8
        btn8.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        btn8.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(100)
            make.centerY.equalTo(btn6)
            make.left.equalTo(btn7.snp.right).offset(margin)
        }
        
        btn9 = LWButton(type: .custom)
        view.addSubview(btn9)
        btn9.setImage(UIImage(named: "i666"), for: .normal)
        btn9.setTitle("待定Title", for: .normal)
        btn9.setTitleColor(.lightGray, for: .normal)
        btn9.adjustsImageWhenHighlighted = false
        btn9.tag = 9
        btn9.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        btn9.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(100)
            make.centerY.equalTo(btn6)
            make.left.equalTo(btn8.snp.right).offset(margin)
        }
        
        btn10 = LWButton(type: .custom)
        view.addSubview(btn10)
        btn10.setImage(UIImage(named: "i666"), for: .normal)
        btn10.setTitle("待定Title", for: .normal)
        btn10.setTitleColor(.lightGray, for: .normal)
        btn10.adjustsImageWhenHighlighted = false
        btn10.tag = 10
        btn10.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        btn10.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(100)
            make.centerY.equalTo(btn6)
            make.left.equalTo(btn9.snp.right).offset(margin)
        }
        
        btn11 = LWButton(type: .custom)
        view.addSubview(btn11)
        btn11.setImage(UIImage(named: "i666"), for: .normal)
        btn11.setTitle("现场会议Live", for: .normal)
        btn11.setTitleColor(.lightGray, for: .normal)
        btn11.adjustsImageWhenHighlighted = false
        btn11.tag = 11
        btn11.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        btn11.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(100)
            make.centerX.equalTo(btn1)
            make.top.equalTo(btn6.snp.bottom)
        }
        
        btn12 = LWButton(type: .custom)
        view.addSubview(btn12)
        btn12.setImage(UIImage(named: "i666"), for: .normal)
        btn12.setTitle("会议回放", for: .normal)
        btn12.setTitleColor(.lightGray, for: .normal)
        btn12.adjustsImageWhenHighlighted = false
        btn12.tag = 12
        btn12.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        btn12.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(100)
            make.centerY.equalTo(btn11)
            make.left.equalTo(btn11.snp.right).offset(margin)
        }
        
        btn13 = LWButton(type: .custom)
        view.addSubview(btn13)
        btn13.setImage(UIImage(named: "i666"), for: .normal)
        btn13.setTitle("会议回放", for: .normal)
        btn13.setTitleColor(.lightGray, for: .normal)
        btn13.adjustsImageWhenHighlighted = false
        btn13.tag = 13
        btn13.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        btn13.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(100)
            make.centerY.equalTo(btn11)
            make.left.equalTo(btn12.snp.right).offset(margin)
        }
        
        btn14 = LWButton(type: .custom)
        view.addSubview(btn14)
        btn14.setImage(UIImage(named: "i666"), for: .normal)
        btn14.setTitle("会议回放", for: .normal)
        btn14.setTitleColor(.lightGray, for: .normal)
        btn14.adjustsImageWhenHighlighted = false
        btn14.tag = 14
        btn14.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        btn14.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(100)
            make.centerY.equalTo(btn11)
            make.left.equalTo(btn13.snp.right).offset(margin)
        }
        
        btn15 = LWButton(type: .custom)
        view.addSubview(btn15)
        btn15.setImage(UIImage(named: "i666"), for: .normal)
        btn15.setTitle("会议回放", for: .normal)
        btn15.setTitleColor(.lightGray, for: .normal)
        btn15.adjustsImageWhenHighlighted = false
        btn15.tag = 15
        btn15.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        btn15.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(100)
            make.centerY.equalTo(btn11)
            make.left.equalTo(btn14.snp.right).offset(margin)
        }
        
        tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(LWTableViewCell.self, forCellReuseIdentifier: reuseID)
        view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.left.right.equalTo(view)
            make.top.equalTo(btn15.snp.bottom)
            make.bottom.equalTo(view).offset(-bottomSafeAreaHeight)
        }
        
        data = [meetingModel("会议名称 : 隆盛村支委推荐会", "会议地址: 隆盛村村部会议室", "状态: 已发布", "时间:2021-01-09 17:05:12"),
        meetingModel("会议名称:二合村党组织换届选举党员推荐会议", "会议地址:二合村委会会议室", "状态: 已发布", "时间:2021-01-08 14:00:00"),
        meetingModel("会议名称:团结村村委相亲大会", "会议地址:团结村村委中心大院", "状态: 已发布", "时间:2021-01-07 09:00:00"),
        meetingModel("会议名称:红旗村年终总结大会", "会议地址:铁心桥村支书家", "状态: 已发布", "时间:2021-01-07 09:00:00"),
        meetingModel("会议名称:红旗村年终总结大会", "会议地址:铁心桥村支书家", "状态: 已发布", "时间:2021-01-07 09:00:00"),
        meetingModel("会议名称:红旗村年终总结大会", "会议地址:铁心桥村支书家", "状态: 已发布", "时间:2021-01-07 09:00:00"),
        meetingModel("会议名称:红旗村年终总结大会", "会议地址:铁心桥村支书家", "状态: 已发布", "时间:2021-01-07 09:00:00"),
        meetingModel("会议名称:红旗村年终总结大会", "会议地址:铁心桥村支书家", "状态: 已发布", "时间:2021-01-07 09:00:00"),
        meetingModel("会议名称:红旗村年终总结大会", "会议地址:铁心桥村支书家", "状态: 已发布", "时间:2021-01-07 09:00:00"),
        ]
        
    }
    
   @objc func btnAction(_ btn: UIButton) {
        let detailVC = PeopleDetailController()
        detailVC.titleString = btn.titleLabel?.text
        detailVC.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

extension HomeController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseID, for: indexPath) as! LWTableViewCell
        cell.selectionStyle = .none
        cell.model = data?[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let titleLabel = UILabel()
        titleLabel.text = "会议列表"
        titleLabel.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight(12))
        titleLabel.backgroundColor = .white
        return titleLabel
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "敬请期待", message: "会议即将开始", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "好的", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
}

extension UIColor {
    public class func color(hexString: String, alpha: CGFloat? = 1.0) -> UIColor {
            
            var cString = hexString.trimmingCharacters(in:.whitespacesAndNewlines).uppercased()
            if (cString.hasPrefix("#")) {
    //            cString = cString[(from: cString.index(after: cString.startIndex))
               cString = String(cString[cString.index(after: cString.startIndex)..<cString.endIndex])

            }
            if (cString.count != 6) {
                return UIColor.clear
            }
    //        let rString = cString.substring(to: cString.index(cString.startIndex, offsetBy: 2))
            let rString = cString[..<cString.index(cString.startIndex, offsetBy: 2)]
    //        let gString = cString.substring(with: cString.index(cString.startIndex, offsetBy: 2)..<cString.index(cString.startIndex, offsetBy: 4))
            let gString = cString[cString.index(cString.startIndex, offsetBy: 2)..<cString.index(cString.startIndex, offsetBy: 4)]

    //        let bString = cString.substring(from: cString.index(cString.endIndex, offsetBy: -2))
            let bString = cString[cString.index(cString.endIndex, offsetBy: -2)..<cString.endIndex]

            var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
            Scanner(string: String(rString)).scanHexInt32(&r)
            Scanner(string: String(gString)).scanHexInt32(&g)
            Scanner(string: String(bString)).scanHexInt32(&b)
            return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: alpha!)
    }
        
    public class func createImage(colorString: String, size: CGSize) -> UIImage? {
        
        var rect = CGRect(origin: CGPoint.zero, size: size)
        let co = color(hexString: colorString)
        UIGraphicsBeginImageContext(size)
        defer {
            UIGraphicsEndImageContext()
        }
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(co.cgColor)
        context?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        return image
    }
}
