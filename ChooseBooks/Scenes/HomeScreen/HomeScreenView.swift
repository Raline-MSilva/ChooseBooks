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
        logoStackView.spacing = 15
        logoStackView.translatesAutoresizingMaskIntoConstraints = false
        
        logoImage.image = UIImage(named: "livros")
        logoImage.contentMode = .scaleAspectFit
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        
        titleLogo.text = "ChooseBooks"
        titleLogo.font = UIFont(name: "Avenir", size: 20)
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
            
            logoStackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            logoStackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            enterButton.heightAnchor.constraint(equalToConstant: 48),
            registerButton.heightAnchor.constraint(equalToConstant: 48),
            
            buttonStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 24),
            buttonStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -24),
            buttonStackView.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -56)
        ])
        
    }
    
}
