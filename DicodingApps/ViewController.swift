//
//  ViewController.swift
//  DicodingApps
//
//  Created by Cahyo on 09/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var academyTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        academyTableView.dataSource = self
        academyTableView.register(
            UINib(nibName: "AcademyTableViewCell", bundle: nil), // Isi dengan nama file XIB
            forCellReuseIdentifier: "AcademyCell" // Isi dengan Identifier Cell yang telah ditentukan
        )
    }


}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyAcademyData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AcademyCell", for: indexPath) as? AcademyTableViewCell {
            let academy = dummyAcademyData[indexPath.row]
            cell.academyLabel.text = academy.name
            cell.academyImageView.image = academy.image
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    
}
