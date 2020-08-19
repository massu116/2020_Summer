import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.text = "Hello World !!!!"
        label.font = label.font.withSize(40)
        label.textAlignment = NSTextAlignment.center
        
        button.setTitle("ただいま", for: .normal)
        
        let buttonSize = UIFont.systemFont(ofSize: 30)
        
        button.titleLabel?.font = buttonSize
        
    }

    @IBAction func tapbutton(_ sender: Any) {
        label.text = "おかえりI.D."
    }
    

}

