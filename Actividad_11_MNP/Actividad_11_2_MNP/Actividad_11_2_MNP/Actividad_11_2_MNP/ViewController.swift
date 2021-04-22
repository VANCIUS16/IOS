//
//  ViewController.swift
//  Actividad_11_2_MNP
//
//  Created by user190573 on 4/21/21.
//  Copyright © 2021 user190573. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imgNum:[String] = []

    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /*let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width:120, height: 120)
        collectionView.collectionViewLayout = layout*/
        
        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        for valor in 1...19{
            imgNum.append("\(valor)/")
        }
        
    }
}

extension ViewController: UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        collectionView.deselectItem(at: indexPath, animated: true)
        
        print("You tapped me")
    }
}

extension ViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgNum.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell
        
        cell.configured(with: UIImage(named: imgNum[indexPath.row])!)
        return cell
    }
    
}
/*extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewFlowLayout, sizeForItemAt indexPath: IndexPath)-> CGSize{
        return CGSize(width: 120, height: 120)
    }
}*/
