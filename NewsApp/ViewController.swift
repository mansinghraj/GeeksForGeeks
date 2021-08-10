//
//  ViewController.swift
//  NewsApp
//
//  Created by Vivek Gaurav Singh on 09/08/21.
//

import UIKit
import SDWebImage
class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tble_news: UITableView!
    var newsArray:[NewsItem]? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        tble_news.dataSource = self
        tble_news.delegate = self
      //  tble_news.tableHeaderView =  UIView()
        self.tble_news.contentInset = UIEdgeInsets(top: -20, left: 0, bottom: -20, right: 0)
        // Do any additional setup after loading the view.
        NewsSevice.getNewsListApi { (success) in
            self.newsArray = success.items
            self.tbleReload()
        } onError: { (error) in
            
        }

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tble_news.contentInset = UIEdgeInsets(top: -20, left: 0, bottom: -20, right: 0)
    }
    private func tbleReload(){
        DispatchQueue.main.async {
            self.tble_news.reloadData()
        }
    }
}
extension ViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 300
        }
        return 100
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArray?.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tble_news.dequeueReusableCell(withIdentifier: "NewsBigCell", for: indexPath) as! NewsBigCell
            let imgUrlStr = self.newsArray?[indexPath.row].thumbnail?.trimeSpecialCharacter()
            cell.lbl_title.text = self.newsArray?[indexPath.row].title
            cell.lbl_date.text = self.newsArray?[indexPath.row].pubDate?.getDate()
            cell.img_big.sd_setImage(with: URL(string: imgUrlStr ?? ""), placeholderImage: UIImage())
            return cell
        }
        let cell = tble_news.dequeueReusableCell(withIdentifier: "CustomNewsCell", for: indexPath) as! CustomNewsCell
        let imgUrlStr = self.newsArray?[indexPath.row].thumbnail?.trimeSpecialCharacter()
        cell.lbl_title.text = self.newsArray?[indexPath.row].title
        cell.lbl_date.text = self.newsArray?[indexPath.row].pubDate?.getDate()
        cell.imgView.sd_setImage(with: URL(string: imgUrlStr ?? ""), placeholderImage: UIImage())
        return cell
    }
}

