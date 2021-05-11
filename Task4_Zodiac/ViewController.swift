//
//  ViewController.swift
//  Task4_Zodiac
//
//  Created by Neha Penkalkar on 01/03/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    let signImgArr = ["Aries","Taurus","Gemini","Cancer","Leo","Virgo","Libra","Scorpio","Sagittarius","Capricorn","Aquarius","Pisces"]
    let signNameArr = ["मेष","वृष","मिथुन","कर्क","सिंह","कन्या","तुला","वृश्चिक","धनु","मकर","कुंभ","मीन"]
    let signDateArr = ["मार्च २१ - एप्रिल १९","एप्रिल २० - मे २०","मे २१ - जून २०","जून २१ - जुलै २२","जुलै २३ - ऑगस्ट २२","ऑगस्ट २३ - सप्टेंबर २२","सप्टेंबर २३ - ऑक्टोबर २२","ऑक्टोबर २३ - नोव्हेंबर २१","नोव्हेंबर २२ - डिसेंबर २१","डिसेंबर २२ - जानेवारी १९","जानेवारी २० - फेब्रुवारी १८","फेब्रुवारी १९ - मार्च २०"]
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCVC", for: indexPath) as! CustomCVC
        cell.signImg.image = UIImage(named: "\(signImgArr[indexPath.row])")
        cell.signName.text = signNameArr[indexPath.row]
        cell.signDate.text = signDateArr[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: floor((collectionView.frame.size.width-2)/3), height: floor(collectionView.frame.size.height-3)/4)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

