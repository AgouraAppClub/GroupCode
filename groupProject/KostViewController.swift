// imports UIKit module
import UIKit

// Designates the following code to view controllers
class ViewController: UIViewController {
    
    // creates the constants 'button', 'label', 'mytextfield'
    let button = UIButton(frame: CGRect(x: 10, y: 500, width: 360, height: 40))
    let label = UILabel(frame: CGRect(x: 10, y: 450, width: 360, height: 40))
    let mytextfield = UITextField(frame: CGRect(x: 10, y: 400, width: 360, height: 40))
    
    // function that executes included code as soon as the view is loaded
    override func viewDidLoad(){
        super.viewDidLoad()
        
        // calls functions created below
        Createbutton()
        CreateLabel()
        createtextfield()
        createLabel()
    }
    
    // sets properties including color, title, corner radius, and requirements for targets for the constant 'button'
    func Createbutton() {
        button.backgroundColor = UIColor.black
        button.setTitle("Print", for: .normal)
        button.layer.cornerRadius = 15.0
        button.addTarget(self, action: #selector(ButtonAction), for: .touchUpInside)
        
        // adds the subview (in this case the constant 'button') to the view
        self.view.addSubview(button)
    }
    
    // sets properties including background and text color, text alignment, text, corner radius, and clipping mask for the constant 'label'
    func CreateLabel() {
        label.backgroundColor = UIColor.black
        label.textColor = UIColor.white
        label.textAlignment = NSTextAlignment.center
        label.text = "Label"
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 15.0
        
        // adds the subview (in this case the constant 'label') to the view
        self.view.addSubview(label)
    }
    
    // sets propertiers including background and text color, corner radius, and padding view for the constant 'mytextfield'
    func createtextfield() {
        mytextfield.backgroundColor = UIColor.green
        mytextfield.textColor = UIColor.yellow
        mytextfield.layer.cornerRadius = 9.0
        mytextfield.setleftpadding(10)
        
        // adds the subview (in this case the constant 'mytextfield') to the view
        self.view.addSubview(mytextfield)
    }
    
    // sets the text of 'label' to the text of 'mytextfield' while making it available to Objective-C
    @objc func ButtonAction(sender: UIButton) {
        label.text = mytextfield.text
    }
}

// adds new functionality to 'createtextfield'
extension UITextField {
    func setleftpadding(_ amount:CGFloat) {
        let paddingview = UIView(frame: CGRect(x: 0, y:0, width: amount, height: self.frame.size.height.))
        self.leftView = paddingview
        self.leftViewMode = .always
    }
}
