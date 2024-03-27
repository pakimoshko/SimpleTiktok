//
//  ViewController.swift
//  TikTok
//
//  Created by Dmitrii Buiskii on 3/25/24.
//
import SnapKit
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    private var tableView = UITableView()
    private var videoLinks: [String] = ["https://scontent.cdninstagram.com/v/t66.30100-16/10000000_1129716435137581_5430090679539613096_n.mp4?_nc_ht=scontent.cdninstagram.com&_nc_cat=101&_nc_ohc=o0rYWpL_4jcAX94yoKf&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfAsi3tR4Qez_DIDsVUTh3zU6N3LKY2VRKbImu5tz-EyCg&oe=660523DD&_nc_sid=10d13b", "https://scontent.cdninstagram.com/v/t66.30100-16/10000000_1089380995811066_7654353646147842863_n.mp4?_nc_ht=scontent.cdninstagram.com&_nc_cat=102&_nc_ohc=Z7qunsuKdMAAX_uT8rV&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfBDjgGzp0tGRGjQyCXpeTkVDYJW6oICUmBa_Qe-E3ROpQ&oe=66053B46&_nc_sid=10d13b", "https://scontent.cdninstagram.com/v/t66.30100-16/164084639_945065690073650_2442483095069706407_n.mp4?_nc_ht=scontent.cdninstagram.com&_nc_cat=102&_nc_ohc=Hi13ea7m7hYAX-6brXc&edm=APs17CUBAAAA&ccb=7-5&oh=00_AfBZfo2Y46-bDrI0a7FdkE5iLdZa-jOfzlUFSi9hPXEJZg&oe=6604D7FE&_nc_sid=10d13b"]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isPagingEnabled = true
        tableView.showsVerticalScrollIndicator = false
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
        
        let blackView = UIView()
        blackView.backgroundColor = .black
        view.addSubview(blackView)
        blackView.snp.makeConstraints { maker in
            maker.left.right.bottom.equalToSuperview()
            maker.height.equalTo(80)
        }
        
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        
        let btn1 = UIButton()
        btn1.setImage(UIImage(named: "Home"), for: .normal)
        
        let btn2 = UIButton()
        btn2.setImage(UIImage(named: "Discover"), for: .normal)
        
        let btn3 = UIButton()
        btn3.setImage(UIImage(named: "Button Shape"), for: .normal)
        
        let btn4 = UIButton()
        btn4.setImage(UIImage(named: "Inbox"), for: .normal)
        
        let btn5 = UIButton()
        btn5.setImage(UIImage(named: "Me"), for: .normal)
        
        stackView.addArrangedSubview(btn1)
        stackView.addArrangedSubview(btn2)
        stackView.addArrangedSubview(btn3)
        stackView.addArrangedSubview(btn4)
        stackView.addArrangedSubview(btn5)

        
        view.addSubview(stackView)
        stackView.snp.makeConstraints{maker in
            maker.left.right.bottom.equalToSuperview().inset(15)
            maker.height.equalTo(60)
            
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoLinks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return VideoTableViewCell(link: videoLinks[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height
    }
}

