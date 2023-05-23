//
//  UIButon+Extension.swift
//  ChooseBooks
//
//  Created by Raline Maria da Silva on 23/05/23.
//

import UIKit

extension UIButton {
    //animacao para subir o botao
    func animateButton() {
        UIView.animate(withDuration: 0.5) { [weak self] in
            guard let self = self else { return }
            
            switch self.transform {
            case .identity:
                self.center.y -= 100
                self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
                
            case CGAffineTransform(scaleX: 0.8, y: 0.8):
                self.transform = CGAffineTransform(scaleX: 0.2, y: 0.8)
                
            case CGAffineTransform(scaleX: 0.2, y: 0.8):
                self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
                
            default:
                self.transform = .identity
            }
        }
    }
    
    //animacao de rotacao
    func rotationAnimation() {
        UIView.animate(withDuration: 0.5) { [weak self] in
            guard let self = self else { return }
            
            let rotation: CGFloat = CGFloat.pi
            
            switch self.transform {
            case .identity:
                self.transform = CGAffineTransform(rotationAngle: rotation)
                
            case CGAffineTransform(rotationAngle: rotation):
                self.transform = CGAffineTransform(rotationAngle: rotation * 2)
                
            case CGAffineTransform(rotationAngle: rotation * 2):
                self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
                
            default:
                self.transform = .identity
            }
        }
    }
}
