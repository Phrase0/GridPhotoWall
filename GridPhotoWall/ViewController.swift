//
//  ViewController.swift
//  GridPhotoWall
//
//  Created by Peiyun on 2022/12/28.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //看是否有可回收的collectionViewCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        if let imageView = cell.contentView.subviews[0] as? UIImageView{
            imageView.image = UIImage(named: "\(indexPath.row + 1)")
        }
        return cell

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

    }
    
    //加入UICollectionViewDelegateFlowLayout
    //cell每個item左右間隔為0
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    //cell每個item上下間隔為0
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    

    //每個橫列只顯示3個item
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //利用 function floor 將小數點後的數字捨去，因為還有小數點的話，有可能會讓最後加起來的寬度超過螢幕寬度
        let width = floor((collectionView.frame.width - 10) / 3)
        
        return CGSize(width: width, height: width)
    }

}

