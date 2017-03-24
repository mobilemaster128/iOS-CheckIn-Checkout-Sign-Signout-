//
//  ViewController.swift
//  Check-in App
//
//  Created by Apple on 9/8/16.
//  Copyright © 2016 PreSchool. All rights reserved.
//

import UIKit

class SignViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var cardTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
    
    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell: CardTableViewCell = tableView.dequeueReusableCell(withIdentifier: "CardCell") as! CardTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
    }
    
}

