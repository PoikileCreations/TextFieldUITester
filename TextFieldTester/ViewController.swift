//  Created by nrith on 8/10/21.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var field1: UITextField!

    @IBOutlet weak var field2: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func submit(_ sender: Any) {
        let actionVC = UIAlertController(title: "You did it!", message: "\(field1.text ?? ""), \(field2.text ?? "")", preferredStyle: .alert)
        actionVC.addAction(UIAlertAction(title: "Awesome!", style: .default, handler: nil))
        present(actionVC, animated: true, completion: nil)
    }

}

