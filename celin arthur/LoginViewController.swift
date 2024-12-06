import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var username: String!, password: String!
    
    @IBAction func LoginButton(_ sender: Any) {
        guard let usernameInput = usernameTextField.text,
              let passwordInput = passwordTextField.text,
              !usernameInput.isEmpty, !passwordInput.isEmpty else {
            showAlert(message: "Please fill in all fields!")
            return
        }
        if (self.username == usernameInput && self.password == passwordInput) {
            showAlert(message: "Logged In Successfully!")
        } else {
            showAlert(message: "Different credentials inputted!")
        }
    }
    
    @IBAction func SignUpButton(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func showAlert(message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}

