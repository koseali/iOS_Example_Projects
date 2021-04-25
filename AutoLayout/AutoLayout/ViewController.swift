//
//  ViewController.swift
//  AutoLayout
//
//  Created by Ali Köse on 19.03.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var vHeader: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        vHeader.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            vHeader.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 0),
        
            vHeader.leadingAnchor.constraint(equalToSystemSpacingAfter: view.safeAreaLayoutGuide.leadingAnchor, multiplier: 0),
            
            vHeader.trailingAnchor.constraint(equalToSystemSpacingAfter: view.trailingAnchor, multiplier: 0),
            
            vHeader.heightAnchor.constraint(equalToConstant: 100),
        
        ])
    
        let tfNick = UITextField(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        tfNick.placeholder = "Write Nick..."
        tfNick.backgroundColor = .white
        tfNick.borderStyle = .roundedRect
        tfNick.textColor = .black
        tfNick.font = UIFont.systemFont(ofSize: 15)
        view.addSubview(tfNick)
        
        
        let tfPass = UITextField(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        tfPass.placeholder = "Write Password..."
        tfPass.backgroundColor = .white
        tfPass.borderStyle = .roundedRect
        tfPass.textColor = .black
        tfPass.font = UIFont.systemFont(ofSize: 15)
        view.addSubview(tfPass)
        

        let btnLogin = UIButton()
        btnLogin.setTitle( "Login", for: .normal)
        btnLogin.backgroundColor = .black
        btnLogin.titleLabel?.textColor = .white
        view.addSubview(btnLogin)

    
        tfNick.translatesAutoresizingMaskIntoConstraints = false
        tfPass.translatesAutoresizingMaskIntoConstraints = false
        btnLogin.translatesAutoresizingMaskIntoConstraints = false

        
           NSLayoutConstraint.activate([
            
            
            
            tfNick.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tfNick.centerYAnchor.constraint(equalTo: view.centerYAnchor , constant: -100),
            tfNick.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            tfNick.heightAnchor.constraint(equalToConstant: 50),
            
            
            
            tfPass.topAnchor.constraint(equalTo: tfNick.bottomAnchor, constant: 10),
            tfPass.leadingAnchor.constraint(equalTo: tfNick.leadingAnchor),
            tfPass.trailingAnchor.constraint(equalTo: tfNick.trailingAnchor),
            tfPass.heightAnchor.constraint(equalToConstant: 50),
            
            
            
            btnLogin.topAnchor.constraint(equalTo: tfPass.bottomAnchor, constant: 10),
            btnLogin.leadingAnchor.constraint(equalTo: tfPass.leadingAnchor),
            btnLogin.trailingAnchor.constraint(equalTo: tfPass.trailingAnchor),
            btnLogin.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            btnLogin.heightAnchor.constraint(equalToConstant: 50)
        // Bunlar ayrı ayrı da verilebilir. Toplu da
            
            
        ])

    }
/*            vHeader.leadingAnchor.constraint(equalToSystemSpacingAfter: view.safeAreaLayoutGuide.leadingAnchor, multiplier: 0),
     böyle safe area yapılabiliyor.
*/

}

