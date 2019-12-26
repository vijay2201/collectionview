//
//  ViewController.swift
//  VIJAYCOLLECTIONVIEW
//
//  Created by COE-008 on 23/12/19.
//  Copyright © 2019 COE-008. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
   
    
    
    var arr = [["Image":#imageLiteral(resourceName: "img2") , "Name":"Virat1"],
              ["Image":#imageLiteral(resourceName: "img1") , "Name":"Virat2"],
              ["Image":#imageLiteral(resourceName: "img3") ,"Name":"Virat3"]]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!CollectionViewCell
        cell.img.image = arr[indexPath.row]["Image"] as? UIImage
        cell.lbl.text = arr[indexPath.row]["Name"] as? String
        
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

