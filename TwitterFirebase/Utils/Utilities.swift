//
//  Utilities.swift
//  TwitterFirebase
//
//  Created by Fırat AKBULUT on 6.12.2023.
//

import UIKit

class Utilities{
    
    static func inputContainerView(image: UIImage, textField: UITextField)-> UIView{
        
        let view = UIView()
        let iv = UIImageView()
        
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        iv.image = image
        view.addSubview(iv)
        iv.anchor(left: view.leftAnchor, bottom: view.bottomAnchor,
                  paddingLeft: 8, paddingBottom: 8)
        iv.setDimensions(width: 24, height: 24)
        
        view.addSubview(textField)
        textField.anchor(left: iv.rightAnchor, bottom: view.bottomAnchor,
                         right: view.rightAnchor, paddingLeft: 8, paddingBottom: 8)

        
        let dividerView = UIView()
        dividerView.backgroundColor = .white
        view.addSubview(dividerView)
        dividerView.anchor(left: view.leftAnchor, bottom: view.bottomAnchor,
                           right: view.rightAnchor, paddingLeft: 8, height: 0.75)
        
        return view
    }
    
    static func textField(placeholder: String)-> UITextField{
        let tf = UITextField()
        tf.textColor = .white
        tf.font = UIFont.systemFont(ofSize: 16)
        //placeholder rengini değiştirmek için kullanıldı.
        tf.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        tf.autocapitalizationType = .none
        tf.autocorrectionType = .no
        return tf
    }
    
    static func attributedButton(firsPart: String, secondPart: String)-> UIButton{
        let button = UIButton(type: .system)
        
        let attributedTitle = NSMutableAttributedString(string: firsPart, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.white])
        attributedTitle.append(NSAttributedString(string: secondPart, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.white]))
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        return button
    }
}



