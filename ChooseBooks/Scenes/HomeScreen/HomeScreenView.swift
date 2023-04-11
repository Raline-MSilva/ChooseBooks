//
//  HomeScreenView.swift
//  ChooseBooks
//
//  Created by Raline Maria da Silva on 10/04/23.
//

import UIKit

final class HomeScreenView: UIView {
    private lazy var logoStackView: UIStackView = {
        return UIStackView()
    }()
    
    private lazy var logoImage: UIImageView = {
        return UIImageView()
    }()
    
    private lazy var titleLogo: UILabel = {
        return UILabel()
    }()
    
    private lazy var buttonStackView: UIStackView = {
        return UIStackView()
    }()
    
    private lazy var enterButton: UIButton = {
        return UIButton()
    }()
    
    private lazy var registerButton: UIButton = {
        return UIButton()
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeScreenView: SetupViewCode {
    func setupSubviews() {
        addSubview(logoStackView)
        logoStackView.addArrangedSubview(logoImage)
        logoStackView.addArrangedSubview(titleLogo)
        
        addSubview(buttonStackView)
        buttonStackView.addArrangedSubview(enterButton)
        buttonStackView.addArrangedSubview(registerButton)
    }
    
    func setupConfigure() {
        logoStackView.axis = .vertical
        logoStackView.distribution = .fillProportionally
        logoStackView.spacing = 16
        titleLogo.translatesAutoresizingMaskIntoConstraints = false
        
        logoImage.image = UIImage(named: "")
        logoImage.contentMode = .scaleAspectFit
        titleLogo.translatesAutoresizingMaskIntoConstraints = false
        
        titleLogo.text = "ChooseBooks"
        titleLogo.textAlignment = .center
        titleLogo.translatesAutoresizingMaskIntoConstraints = false
        
        buttonStackView.axis = .vertical
        buttonStackView.distribution = .fillProportionally
        buttonStackView.spacing = 16
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        enterButton.setTitle("Entrar", for: .normal)
        enterButton.backgroundColor = .systemBlue
        enterButton.layer.cornerRadius = 10
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        
        registerButton.setTitle("Cadastrar", for: .normal)
        registerButton.backgroundColor = .systemBlue
        registerButton.layer.cornerRadius = 10
        registerButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            logoStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            buttonStackView.topAnchor.constraint(equalTo: logoStackView.bottomAnchor, constant: 50),
            buttonStackView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            buttonStackView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            //buttonStackView.bottomAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 56),
            buttonStackView.heightAnchor.constraint(equalToConstant: 48),
            
        ])
        
    }
    
}
