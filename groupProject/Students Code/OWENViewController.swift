//
//  OWENViewController.swift
//  groupProject
//
//  Created by AgouraAppClub on 9/29/22.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth


class OWENViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{

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




class BasicIntroTableViewCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!


}

class firebaseIntro: UIViewController {
    
    @IBOutlet weak var Loginpress:UIButton!
    @IBOutlet weak var SignUP:UIButton!
    @IBOutlet weak var User:UITextField!
    @IBOutlet weak var Password:UITextField!
    
    
    
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    @IBAction func login(_ sender: Any) {
        Auth.auth().signIn(withEmail:email, password: password) {[weak self] authResult, error in
            guard let strongSelf = self else { return }
                                                                }
      
    }
    @IBAction func signup(_ sender: Any){
        let email = User.text!
        let password = Password.text!
        Auth.auth().createUser(withEmail: email, password:
                              password) {authResult, error in
                                        }
    }
        
        
    
}

    
