//
//  ViewController.swift
//  PhotoEstimateTester
//
//  Created by William Calkins on 11/14/18.
//  Copyright © 2018 Calkins Computer Consulting. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var collectionData = ["1", "2", "3", "Bill", "Jill", "Cal"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.collectionData.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "rayTestCell", for: indexPath)
        
        // Configure the cell
        //cell.backgroundColor = (indexPath.section == 0 ? UIColor.red : UIColor.blue)
        
        if let label = cell.viewWithTag(100) as? UILabel {
            label.text = self.collectionData[indexPath.row]
        }
        
        return cell
    }
    
    
}

