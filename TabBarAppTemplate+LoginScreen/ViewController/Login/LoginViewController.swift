//
//  LoginViewController.swift
//  TabBarAppTemplate+LoginScreen
//
//  Created by Bowie Tso on 18/3/2021.
//

import UIKit
import RxSwift

class LoginViewController: BaseViewController, UITextFieldDelegate{

    
    var disposeBag = DisposeBag()

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var sidTextField: UITextField!
    @IBOutlet weak var loginBackgroundView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var loginBottomLineView: UIView!
    var rootRouter: RootRouter? {
       return router as? RootRouter
     }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        self.navigationItem.title = "Login"
        configureUI()
        
        // Do any additional setup after loading the view.
    }
    
    func configureUI(){
        sidTextField.textColor = UIColor.init(red: 96,green: 96,blue: 96)
        sidTextField.borderColor = UIColor.init(red: 168,green: 168,blue: 168)
        emailTextField.textColor = UIColor.init(red: 96,green: 96,blue: 96)
        emailTextField.borderColor = UIColor.init(red: 168,green: 168,blue: 168)
        passwordTextField.textColor = UIColor.init(red: 96,green: 96,blue: 96)
        passwordTextField.borderColor = UIColor.init(red: 168,green: 168,blue: 168)

        self.loginButton.setTitleColor(UIColor.init(red: 255, green: 189, blue: 43), for: .normal)
        self.loginButton.setTitleColor(UIColor.init(red: 128, green: 128, blue: 128), for: .disabled)
        self.loginBottomLineView.backgroundColor = UIColor.init(red: 128, green: 128, blue: 128)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField{
        case sidTextField : emailTextField.becomeFirstResponder()
            break
        case emailTextField : passwordTextField.becomeFirstResponder()
        case passwordTextField: passwordTextField.resignFirstResponder()

        default:
            break
        }
        return true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
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
