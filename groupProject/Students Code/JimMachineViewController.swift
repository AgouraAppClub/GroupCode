import UIKit

class KabirViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{

    struct temp {
        let label2:String
    }
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


    func tableView( tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView( tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let home = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! KabirIntroTableViewCell
        cell.label.text = home.label2
        return cell
    }
@IBOutlet weak var tableview: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}




class KabirIntroTableViewCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!


}
