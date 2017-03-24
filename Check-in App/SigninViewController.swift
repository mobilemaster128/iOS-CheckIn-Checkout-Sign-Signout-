//
//  SigninViewController.swift
//  Check-in App
//
//  Created by Apple on 9/9/16.
//  Copyright © 2016 PreSchool. All rights reserved.
//

import UIKit

class SigninViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var btnPin: UIButton!
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var txtPin: UITextField!
    @IBOutlet weak var numberPad: UICollectionView!
    
    var padNumbers: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "", "0", ""]
    var padLetters: [String] = ["", "ABC", "DEF", "GHI", "JKL", "MNO", "PQRS", "TUV", "WXYZ", "", "", ""]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.displayTiemDate()
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SigninViewController.displayTiemDate), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayTiemDate() -> Void {
        let time = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .short)
        lblTime.text = time
        let date = DateFormatter.localizedString(from: Date(), dateStyle: .full, timeStyle: .none)
        lblDate.text = date
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.txtPin.resignFirstResponder()
        super.touchesBegan(touches, with: event)
    }
    
    //MARK: UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return padNumbers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: NumberPadViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "NumberKey", for: indexPath) as! NumberPadViewCell
        cell.lblNumber.text = padNumbers[indexPath.row]
        cell.lblLetter.text = padLetters[indexPath.row]
        cell.layer.borderWidth = 0.5;
        cell.layer.borderColor = UIColor.lightGray.cgColor
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        txtPin.text = padNumbers[indexPath.row]
    }
    
    //MARK: UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: numberPad.frame.size.width / 3, height: numberPad.frame.size.height / 4);
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0;
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0;
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
