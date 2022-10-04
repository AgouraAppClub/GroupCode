//
//  OWENViewController.swift
//  groupProject
//
//  Created by AgouraAppClub on 9/29/22.
//

import UIKit

class OWENViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{

    struct temp {
        let label2:String
    }
    //this stuff is like the texts, the hiiiii is the text you see
    let data :[temp] = [
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii"),
        temp(label2: "hiiiii")

    ]

    //the number of cells, how many of the table there is, the numberofrows is how many cells ex: number of people texted
    func tableView( tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    //i wasnt paying too much attention here cause i was helping my friend swap his pc fans
    func tableView( tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let home = data[indexPath.row]
        //im pretty sure that this links the cells with the BasicIntroTableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BasicIntroTableViewCell
        cell.label.text = home.label2
        return cell
    }
@IBOutlet weak var tableview: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}



//and im pretty sure that this is a variable label
class BasicIntroTableViewCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!


}
