//
//  SecondCollectionViewController
//
//
//  Created by ViNiT. on 8/1/15.
//
//

import UIKit

class SecondCollectionViewController: UICollectionViewController {

    
    //MARK :- UICollectionViewDelegate
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        self.selectedIndexPath = indexPath
        var vc = self.storyboard?.instantiateViewControllerWithIdentifier("thirdVC") as? ThirdCollectionViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }

    //MARK :- UICollectionViewDataSource
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("cellId", forIndexPath: indexPath) as! SecondViewCollectionViewCell
        
        cell.numberLabel.text = "\(indexPath.row + 1)"

        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 40
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }    
}
