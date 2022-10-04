//
//  CALENViewController.swift
//  groupProject
//
//  Created by AgouraAppClub on 9/29/22.
//

import UIKit

class CALENViewController: UIViewController {

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

class ViewController: UIViewController {
    let button = UIButton(frame: CGRect(x: 10, y: 500, width: 360, height: 40))
    let label = UILabel(frame: CGRect(x: 10, y: 450, width: 360, height: 40))
    let mytextfield = UITextField(frame: CGRect(x: 10, y: 400, width: 360, height: 40))
    override func viewDidLoad() {
        super.viewDidLoad()
        Createbutton()
        CreateLabel()
        createtextfield()
        CreateLabel()
    }
    func Createbutton(){
        //creates a button
        button.backgroundColor = UIColor.black
        button.setTitle("Print", for: .normal)
        button.layer.cornerRadius = 15.0
        //adds action to button
        button.addTarget(self, action: #selector(ButtonAction), for: .touchUpInside)
        //making button visable
        self.view.addSubview(button)
    }
    func CreateLabel(){
        //creates a label
        label.backgroundColor = UIColor.black
        label.textColor = UIColor.white
        label.textAlignment = NSTextAlignment.center
        label.text = "Label"
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 15.0

        //making label visable
        self.view.addSubview(label)
    }
    func createtextfield (){
        mytextfield.backgroundColor = UIColor.green
        mytextfield.textColor = UIColor.yellow
        mytextfield.layer.cornerRadius = 9.0
        mytextfield.setleftpadding(10)
        self.view.addSubview(mytextfield)
    }
    @objc func ButtonAction (sender: UIButton){
        //prints hi
        label.text = mytextfield.text
    }

}
extension UITextField {
    func setleftpadding (_ amount:CGFloat){
        let paddingview = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingview
        self.leftViewMode = .always
    }
}
