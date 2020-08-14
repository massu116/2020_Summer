import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.text = "Hello World !!!!"
        label.font = label.font.withSize(40)
        
    }


}

