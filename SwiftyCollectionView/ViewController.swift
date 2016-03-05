//
//  ViewController.swift
//  SwiftyCollectionView
//
//  Created by ViNiT. on 8/1/15.
//  Copyright (c) 2015 ViNiT. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {

    
    //MARK :- UICollectionViewDelegate
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        self.selectedIndexPath = indexPath
        
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("secondVC") as? SecondCollectionViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    //MARK :- UICollectionViewDataSource
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cellId", forIndexPath: indexPath) as! FirstViewCollectionViewCell
        
        cell.numberLabel.text = "\(indexPath.row + 1)"
        cell.backgroundColor = colorForIndex(indexPath.row)
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 18
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func colorForIndex(index: NSInteger) -> UIColor {
        
        let itemCount:Int = 17
        let a = Float(index)
        let b = Float(itemCount)
        let val = (a/b) * 0.8
        
        let sender:UIColor = UIColor(red: CGFloat(0.25), green: CGFloat(val), blue: CGFloat(0.5), alpha: CGFloat(1.0))
        
        return sender
    }

}

