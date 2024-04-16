//
//  Views.swift
//  movies
//
//  Created by Eugene Arzumanyan on 30.03.2024.
//

import Foundation
import UIKit

class InputView: UIView {
    let name: String
    let placeholder: String
    
    private let label = UILabel()
    private let inputField = UITextField()
    
    var text : String {
        inputField.text ?? ""
    }
    
    init(name: String, placeholder: String) {
        self.name = name
        self.placeholder = placeholder
        
        super.init(frame: .zero)
        
        addSubviews()
        setupConstraints()
        configureViews()
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    private func addSubviews() {
        self.addSubview(label)
        self.addSubview(inputField)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            label.heightAnchor.constraint(equalToConstant: 15),
            label.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            
            inputField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 8),
            inputField.heightAnchor.constraint(equalToConstant: 50),
            inputField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            inputField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
        ])
    }
    
    private func configureViews() {
        label.text = name
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        inputField.placeholder = placeholder
        inputField.leftViewMode = .always
        inputField.leftView = UIView(frame: CGRect(x:0,y:0,width:5,height:0))
        inputField.font = .systemFont(ofSize: 16, weight: .semibold)
        inputField.backgroundColor = .inputField
        inputField.layer.cornerRadius = 8
        inputField.layer.borderWidth = 1
        inputField.layer.borderColor = UIColor.inputFieldBorder.cgColor
        inputField.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
