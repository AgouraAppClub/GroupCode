//
//  CALENViewController.swift
//  groupProject
//
//  Created by AgouraAppClub on 9/29/22.
//

import UIKit

class CALENViewController: UIViewController {
    
    import UIKit

class KabirViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{

    struct temp {
        let label2:String
    }
    let data :[temp] = [
        temp(label2: "hiiiii"),
    ]


    func tableView( tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView( tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let home = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CalenIntroTableViewCell
        cell.label.text = home.label2
        return cell
    }
@IBOutlet weak var tableview: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}




class CalenIntroTableViewCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!


}

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
