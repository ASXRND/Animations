//
//  OneViewController.swift
//  Animations
//
//  Created by Александр on 21.04.2023.
//

import Foundation
import UIKit

final class OneViewController: UIViewController {

    private lazy var logoImageView: UIImageView = {
        let v = UIImageView()
        v.image = UIImage(named: "logo")
        v.alpha = 0
        v.contentMode = .scaleAspectFit
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()

    private lazy var googleButton: UIButton = {
        let b = UIButton()
        b.setTitle("Google", for: .normal)
        b.titleLabel?.font = UIFont(name: "avenir", size: 22)
        b.setTitleColor(.black, for: .normal)
        b.backgroundColor = .white
        b.alpha = 0
        b.translatesAutoresizingMaskIntoConstraints = false
        b.layer.cornerRadius = 5
        b.layer.shadowColor = UIColor.black.cgColor
        b.layer.shadowRadius = 4
        b.layer.shadowOpacity = 0.2
        b.layer.shadowOffset = CGSize(width: 0, height: 4)
        return b
    }()

    private lazy var googleButtonLogo: UIImageView = {
        let v = UIImageView()
        v.image = UIImage(named: "googleLogo")
        v.alpha = 0
        v.contentMode = .scaleAspectFit
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()

    private lazy var googleLabel: UILabel = {
        let label = UILabel()
        label.text = "Get started with"
        label.textColor = .black
        label.font = UIFont(name: "avenir", size: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Or sign up with"
        label.textColor = .black
        label.font = UIFont(name: "avenir", size: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var emailButton: UIButton = {
        let b = UIButton()
        b.setTitle("Email", for: .normal)
        b.titleLabel?.font = UIFont(name: "avenir", size: 22)
        b.setTitleColor(.white, for: .normal)
        b.backgroundColor = .black
        b.alpha = 1
        b.translatesAutoresizingMaskIntoConstraints = false
        b.layer.cornerRadius = 5
        b.layer.shadowColor = UIColor.black.cgColor
        b.layer.shadowRadius = 4
        b.layer.shadowOpacity = 0.2
        b.layer.shadowOffset = CGSize(width: 0, height: 4)
        return b
    }()

    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Alerady onboard?"
        label.textColor = .black
        label.font = UIFont(name: "avenir", size: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var loginButton: UIButton = {
        let b = UIButton()
        b.setTitle("Email", for: .normal)
        b.titleLabel?.font = UIFont(name: "avenir", size: 22)
        b.setTitleColor(.red, for: .normal)
        b.backgroundColor = .white
        b.alpha = 1
        b.translatesAutoresizingMaskIntoConstraints = false
        b.layer.cornerRadius = 5
        b.layer.shadowColor = UIColor.black.cgColor
        b.layer.shadowRadius = 4
        b.layer.shadowOpacity = 0.2
        b.layer.shadowOffset = CGSize(width: 0, height: 4)
        return b
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraint()
        animations()

    }

    private func animations() {

        UIImageView.animate(withDuration: 3.0, delay: 0.0, options: .curveLinear) {
            self.logoImageView.center = CGPoint(x: 0, y: -900)
            self.googleButton.center = CGPoint(x: -900, y: 0)
            self.googleLabel.center = CGPoint(x: 900, y: 0)
            self.emailLabel.center = CGPoint(x: 900, y: 0)
            self.emailButton.center = CGPoint(x: -900, y: 0)
            self.loginLabel.center = CGPoint(x: 900, y: 0)
            self.loginButton.center = CGPoint(x: -900, y: 0)
            self.logoImageView.alpha = 1
            self.googleButton.alpha = 1
            self.googleButtonLogo.alpha = 1
            //self.view.layoutIfNeeded()
        } completion: { _ in

        }
    }

    private func setupConstraint() {
        view.addSubview(logoImageView)
        view.addSubview(googleLabel)
        view.addSubview(googleButton)
        googleButton.addSubview(googleButtonLogo)
        view.addSubview(emailLabel)
        view.addSubview(emailButton)
        view.addSubview(loginLabel)
        view.addSubview(loginButton)

        NSLayoutConstraint.activate([

            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
            logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            googleLabel.bottomAnchor.constraint(equalTo: googleButton.topAnchor, constant: -22),
            googleLabel.leadingAnchor.constraint(equalTo: googleButton.leadingAnchor),

            googleButton.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 250),
            googleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            googleButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            googleButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            googleButton.heightAnchor.constraint(equalToConstant: 60),
            googleButtonLogo.leadingAnchor.constraint(equalTo: googleButton.leadingAnchor, constant: 5),
            googleButtonLogo.centerYAnchor.constraint(equalTo: googleButton.centerYAnchor),

            emailLabel.topAnchor.constraint(equalTo: googleButton.bottomAnchor, constant: 45),
            emailLabel.leadingAnchor.constraint(equalTo: googleButton.leadingAnchor),

            emailButton.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 22),
            emailButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            emailButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            emailButton.heightAnchor.constraint(equalToConstant: 60),

            loginLabel.topAnchor.constraint(equalTo: emailButton.bottomAnchor, constant: 45),
            loginLabel.leadingAnchor.constraint(equalTo: emailButton.leadingAnchor),

            loginButton.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 22),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            loginButton.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
}

