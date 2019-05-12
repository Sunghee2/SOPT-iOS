//
//  WebtoonListVC.swift
//  SOPThw2
//
//  Created by Sunghee Lee on 03/05/2019.
//  Copyright © 2019 Sunghee Lee. All rights reserved.
//

import UIKit

class WebtoonListVC: UIViewController {
    
    @IBOutlet var episodeTable: UITableView!
    @IBOutlet var btnTitle: UIBarButtonItem!
    
    var webtoonTitle: String?
    
    var episodeList: [Episode] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        btnTitle.title = webtoonTitle
        
        setEpisodeData()

//        episodeTable.rowHeight = 64.5
        episodeTable.delegate = self
        episodeTable.dataSource = self
    }
    
    @IBAction func onBack(_ sender: Any) {
        self.navigationController!.popViewController(animated: true)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        if let index = episodeTable.indexPathForSelectedRow {
            episodeTable.deselectRow(at: index, animated: true)
        }
    }
    
}

extension WebtoonListVC: UITableViewDataSource {
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = episodeTable.dequeueReusableCell(withIdentifier: "WebtoonListCell") as! WebtoonListCell
        
        let episode = episodeList[indexPath.row]
        
        cell.episodeImg.image = episode.episodeImg
        cell.episodeTitle.text = episode.episodeTitle
        cell.episodeViewNum.text = episode.viewNum
        cell.episodeDate.text = episode.date
        
        return cell
    }
}

extension WebtoonListVC: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let dvc = storyboard?.instantiateViewController(withIdentifier: "WebtoonDetailVC") as! WebtoonDetailVC
        
        let episode = episodeList[indexPath.row]
        
        dvc.episodeTitle = episode.episodeTitle
        
        navigationController?.pushViewController(dvc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }
    

    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let movingIndex = episodeList[sourceIndexPath.row]
        
        episodeList.remove(at: sourceIndexPath.row)
        episodeList.insert(movingIndex, at: destinationIndexPath.row)
    }

}

extension WebtoonListVC {
    func setEpisodeData() {
        let episode1 = Episode(imgName: "webtoonListMuneoImg", title: "1화. 문어지지 말자!", viewNum: "조회수 130,000 회", date: "2019.03.25")
        let episode2 = Episode(imgName: "webtoonListMuneoImg", title: "2화. 문어지지 말자 우리!", viewNum: "조회수 130,000 회", date: "2019.03.25")
        let episode3 = Episode(imgName: "webtoonListMuneoImg", title: "3화. 타코야끼를 먹다.", viewNum: "조회수 130,000 회", date: "2019.03.25")
        let episode4 = Episode(imgName: "webtoonListMuneoImg", title: "4화. 문어숙회를 먹다.", viewNum: "조회수 130,000 회", date: "2019.03.25")
        let episode5 = Episode(imgName: "webtoonListMuneoImg", title: "5화. 문어빵을 먹다.", viewNum: "조회수 130,000 회", date: "2019.03.25")
        let episode6 = Episode(imgName: "webtoonListMuneoImg", title: "6화. 배부른 문어", viewNum: "조회수 130,000 회", date: "2019.03.25")

        episodeList = [episode1, episode2, episode3, episode4, episode5, episode6]
    }
}
