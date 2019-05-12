//
//  ViewController.swift
//  SOPThw2
//
//  Created by Sunghee Lee on 03/05/2019.
//  Copyright © 2019 Sunghee Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var webtoonCollection: UICollectionView!
    
    @IBOutlet var btnPopularity: UIButton!
    @IBOutlet var btnNew: UIButton!
    @IBOutlet var btnComplete: UIButton!
    
    var webtoonList: [Webtoon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNavBarImg()
        setWebtoonData()
        
        webtoonCollection.dataSource = self
        webtoonCollection.delegate = self
        
        webtoonCollection.addGestureRecognizer(UILongPressGestureRecognizer(target: self, action: #selector(handleLongPressGesture(gesture:))))
    }
    
    @IBAction func onClick(_ sender: UIButton) {
        switch sender {
        case btnPopularity:
            btnPopularity.backgroundColor = UIColor(red: 245/255, green: 207/255, blue: 69/255, alpha: 1.0)
            btnNew.backgroundColor = .white
            btnComplete.backgroundColor = .white
        case btnNew:
            btnNew.backgroundColor = UIColor(red: 245/255, green: 207/255, blue: 69/255, alpha: 1.0)
            btnPopularity.backgroundColor = .white
            btnComplete.backgroundColor = .white
        case btnComplete:
            btnComplete.backgroundColor = UIColor(red: 245/255, green: 207/255, blue: 69/255, alpha: 1.0)
            btnPopularity.backgroundColor = .white
            btnNew.backgroundColor = .white
        default:
            break
        }
    }
    
    func addNavBarImg() {
        let imageView = UIImageView(frame: CGRect(x: 114, y: 33, width: 147, height: 19))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "logoImg")
        imageView.image = image
        
        navigationItem.titleView = imageView
    }

    
    @objc func handleLongPressGesture(gesture: UIGestureRecognizer){
        let location = gesture.location(in: self.webtoonCollection)
        guard let indexPath = webtoonCollection.indexPathForItem(at: location) else {return}

        let item = webtoonList[indexPath.row]

        let alert = UIAlertController(title: "\(item.webtoonWriter) - \(item.webtoonTitle)", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "삭제", style: .destructive, handler: { (_) in
            self.webtoonList.remove(at: indexPath.item)
            self.webtoonCollection.deleteItems(at: [indexPath])
        }))
        
        alert.addAction(UIAlertAction(title: "취소", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return webtoonList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WebtoonCollectionViewCell", for: indexPath as IndexPath) as! WebtoonCollectionViewCell
        
        let webtoon = webtoonList[indexPath.row]
        
        cell.webtoonImg.image = webtoon.webtoonImg
        cell.webtoonTitle.text = webtoon.webtoonTitle
        cell.webtoonWriter.text = webtoon.webtoonWriter
        
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        let dvc = storyboard?.instantiateViewController(withIdentifier: "WebtoonListVC") as! WebtoonListVC

        let webtoon = webtoonList[indexPath.row]

        dvc.webtoonTitle = webtoon.webtoonTitle
        
        navigationController?.pushViewController(dvc, animated: true)
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = view.frame.width / 3
        let height: CGFloat = width * 1.352
        
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}

extension ViewController {
    func setWebtoonData() {
        let webtoon1 = Webtoon(imgName: "9", title: "문어툰", writer: "돌무너")
        let webtoon2 = Webtoon(imgName: "9", title: "문어툰", writer: "돌무너")
        let webtoon3 = Webtoon(imgName: "9", title: "문어툰", writer: "돌무너")
        let webtoon4 = Webtoon(imgName: "9", title: "문어툰", writer: "돌무너")
        let webtoon5 = Webtoon(imgName: "9", title: "문어툰", writer: "돌무너")
        let webtoon6 = Webtoon(imgName: "9", title: "문어툰", writer: "돌무너")
        let webtoon7 = Webtoon(imgName: "9", title: "문어툰", writer: "돌무너")
        let webtoon8 = Webtoon(imgName: "9", title: "문어툰", writer: "돌무너")
        let webtoon9 = Webtoon(imgName: "9", title: "문어툰", writer: "돌무너")
        
        webtoonList = [webtoon1, webtoon2, webtoon3, webtoon4, webtoon5, webtoon6, webtoon7, webtoon8, webtoon9]
    }
}

