//
//  HomeViewController.swift
//  ComicSwift
//
//  Created by 曹来东 on 2020/7/6.
//  Copyright © 2020 曹来东. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    var comicL : UILabel?
    
    lazy var tab: UITableView = {
        let tab = UITableView()
        tab.backgroundColor = UIColor.blue
        tab.contentInset = UIEdgeInsets(top: 350, left: 0, bottom: 0, right: 0)
        tab.contentOffset = CGPoint(x: 0, y: -tab.contentInset.top)
        tab.register(cellType: BaseTableViewCell.self)
        tab.dataSource = self
        tab.delegate = self
        return tab
    }()
    
    lazy var topView: UIView = {
        let topV = UIView(frame: CGRect(x: 0, y: 20, width: CGFloat.ld.screenWith, height: 100))
        topV.backgroundColor = UIColor.clear
        let titles = ["漫画","轻小说","有声"]
        let w: CGFloat = 60.0
        let h: CGFloat = 30.0
        let x: CGFloat = (CGFloat.ld.screenWith - CGFloat(titles.count) * w) / 2
        for index in 0..<titles.count {
            
            let lab = UILabel(frame: CGRect(x: x + CGFloat(index) * w, y: 10, width: w, height: h))
            lab.text = titles[index]
            lab.textColor = UIColor.white
            lab.backgroundColor = UIColor.clear
            if index == 0 {
                lab.font = UIFont.boldSystemFont(ofSize: 20)
                comicL = lab
            }else{
                lab.font = UIFont.systemFont(ofSize: 15)
            }
            topV.addSubview(lab)
            let w = CGFloat.ld.screenWith / 3
            
            let x = index * Int(w) + Int.ld.randomIntNumber(lower: 0, upper: Int(w) - 60)
            
            let vi = UIView(frame: CGRect(x: CGFloat(x), y: lab.frame.maxY + 15, width: CGFloat(Int.ld.randomIntNumber(lower: 11, upper: Int(55))), height: h))
            vi.backgroundColor = UIColor.ld.random
            topV.addSubview(vi)
        }
        return topV
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationItem.title = "Home"
        navigationItem.largeTitleDisplayMode =  .always
    }
    
    override func configUI() {
        view.addSubview(tab)
            tab.snp.makeConstraints { $0.edges.equalTo(view.ld.usnp.edges)
        }
        view.addSubview(topView)

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
}
extension HomeViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(ViewController(), animated: true)
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y
        if offsetY > -175 {
            comicL?.textColor = UIColor.black
        }else {
            comicL?.textColor = UIColor.white
        }
        if offsetY > -150 {
            topView.backgroundColor = UIColor.white
        }else{
            let ap = 1 - abs(offsetY / tab.contentInset.top)
            topView.backgroundColor = UIColor.white.withAlphaComponent(ap)
            
        }
       
    }
}
extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, cellType: BaseTableViewCell.self)
        cell.textLabel?.text = "\(indexPath.row)"
//        cell.backgroundColor = UIColor.ld.random
        return cell
    }
}

