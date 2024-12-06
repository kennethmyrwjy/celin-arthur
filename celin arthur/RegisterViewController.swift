import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    public var usernameSave = "", emailSave = "", passwordSave = "";
    
    @IBAction func SignUpButton(_ sender: Any) {
        guard let username = usernameTextField.text,
              let email = emailTextField.text,
              let password = passwordTextField.text,
              !username.isEmpty, !email.isEmpty, !password.isEmpty else {
            showAlert(message: "Please fill in all fields!")
            return
        }
        usernameSave = username
        passwordSave = password
        emailSave = email
        performSegue(withIdentifier: "toLogin", sender: self)
    }
    @IBAction func LogInButton(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let loginVC = segue.destination as? LoginViewController {
            loginVC.username = usernameSave
            loginVC.password = passwordSave
            
        }
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

