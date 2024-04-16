//
//  ViewController.swift
//  movies
//
//  Created by Eugene Arzumanyan on 29.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let screenTitle = UILabel()
    private let movieInput = InputView(name: "Название", placeholder: "Название фильма")
    private let directorInput = InputView(name: "Режиссёр", placeholder: "Режиссёр фильма")
    private let yearInput = InputView(name: "Год", placeholder: "Год выпуска")
    private let saveButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(screenTitle)
        view.addSubview(movieInput)
        view.addSubview(directorInput)
        view.addSubview(yearInput)
        view.addSubview(saveButton)
        
        screenTitle.text = "Фильм"
        screenTitle.font = .systemFont(ofSize: 30, weight: .semibold)
        screenTitle.translatesAutoresizingMaskIntoConstraints = false
        
        saveButton.setTitle("Сохранить", for: .normal)
        saveButton.backgroundColor = .activeButton
        saveButton.layer.cornerRadius = 25
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        
        saveButton.addTarget(self, action: #selector(saveButtonTap), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            
            screenTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            screenTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            
            movieInput.topAnchor.constraint(equalTo: screenTitle.bottomAnchor, constant: 32),
            movieInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            movieInput.heightAnchor.constraint(equalToConstant: 100),
            movieInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
            directorInput.topAnchor.constraint(equalTo: movieInput.bottomAnchor, constant: -8),
            directorInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            directorInput.heightAnchor.constraint(equalToConstant: 100),
            directorInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
            yearInput.topAnchor.constraint(equalTo: directorInput.bottomAnchor, constant: -8),
            yearInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            yearInput.heightAnchor.constraint(equalToConstant: 100),
            yearInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
            saveButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            saveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            saveButton.widthAnchor.constraint(equalToConstant: 343),
            saveButton.heightAnchor.constraint(equalToConstant: 51),
            
        ])
    }
    @objc
    func saveButtonTap() {
        if !movieInput.text.isEmpty && !directorInput.text.isEmpty && !yearInput.text.isEmpty {
            //movieInput.text
        }
    }
}
