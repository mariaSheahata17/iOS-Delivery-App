//
//  ViewController.swift
//  Delivery_App
//
//  Created by Maria Shehata on 3/4/20.
//  Copyright © 2020 Maria Shehata. All rights reserved.
//

// Data source for CollectionView : https://github.com/soonin/IOS-Swift-UICollectionViewDynamicCustom/blob/master/IOS-Swift-UICollectionViewDynamicCustom/ViewController.swift

import UIKit
import CoreLocation

class ViewController:  UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    var colectionArr : [String] = ["1","2","3","4"]
    let titlesF = [("Apple"),("Apricot"),("Banana"),("Grapes"),("Kiwi"),("Orange"),("Peach")]
    let desF = [("$2"),
                ("$2"),
                ("$2"),
                ("$2"),
                ("$2."),
                ("$2"),
                ("$2")]
    let imagesF = [UIImage(named: "apple"),
                   UIImage(named: "apricot"),
                   UIImage(named: "banana"),
                   UIImage(named: "grapes"),
                   UIImage(named: "kiwi"),
                   UIImage(named: "orange"),
                   UIImage(named: "peach")]
    
    
    // multiple number to creat font size based on device screen size
    let relativeFontWelcomeTitle:CGFloat = 0.045
    let relativeFontButton:CGFloat = 0.060
    let relativeFontCellTitle:CGFloat = 0.023
    let relativeFontCellDescription:CGFloat = 0.015

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return titlesF.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! GroceryItemCellView
        
            //let thisElement = colectionArr[indexPath.item]
            let cellIndex = indexPath.item
            let closeFrameSize = bestFrameSize()

            //cell.editImg.isHidden = true
            //cell.trashImg.isHidden = true
            
            cell.itemView.image = imagesF[cellIndex]
            cell.itemName.text = titlesF[cellIndex]
            cell.itemName.font = cell.itemName.font.withSize(closeFrameSize * relativeFontCellTitle)
            cell.itemPrice.text =  desF[cellIndex]
            cell.itemPrice.font = cell.itemPrice.font.withSize(closeFrameSize * relativeFontCellDescription)
            
            
            cell.contentView.layer.cornerRadius = 10
            cell.contentView.layer.borderWidth = 1.0
            
            
            cell.contentView.layer.borderColor = UIColor.blue.cgColor
            cell.contentView.layer.masksToBounds = true
            cell.backgroundColor = UIColor.white

            cell.layer.shadowColor = UIColor.gray.cgColor
            cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
            cell.layer.shadowRadius = 2.0
            cell.layer.shadowOpacity = 1.0
            cell.layer.masksToBounds = false
            cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
            
            
            
            return cell

    }
    
    func bestFrameSize() -> CGFloat {
        let frameHeight = self.view.frame.height
        let frameWidth = self.view.frame.width
        let bestFrameSize = (frameHeight > frameWidth ) ? frameHeight : frameWidth
        
        return bestFrameSize
    }

    
    //Location
    var storeLocator = WalmartStoreLocator(lon: 1,lat: 1)
    
    // Collection view
      @IBOutlet weak var collectionView : UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    
    }
    

 
    @IBAction func getLocation(_ sender: UIButton) {
        storeLocator.startConnection()

    }
 
}

// extention for UICollectionViewDelegateFlowLayout
extension ViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = collectionView.bounds
        let heightVal = self.view.frame.height
        let widthVal = self.view.frame.width
        let cellsize = (heightVal < widthVal) ?  bounds.height/2 : bounds.width/2
        
        return CGSize(width: cellsize - 10   , height:  cellsize - 10  )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}//end of extension  ViewController
