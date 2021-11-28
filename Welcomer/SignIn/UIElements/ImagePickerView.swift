//
//  ImagePickerView.swift
//  Welcomer
//
//  Created by Branimir Markovic on 13.11.21..
//

import UIKit

protocol ProfileImagePickerDelegate: AnyObject {
    func imagePicked(image: UIImage?)
}

class ProfileImagePickerVC {

    weak var delegate: ProfileImagePickerDelegate?
    var view: ProfileImagePickerView? {
        didSet {
            configureActions()
        }
    }

    func configureActions() {
        view?.imagePickButton.addTarget(self, action: #selector(pickImageButtonTapped), for: .touchUpInside)
    }

    @objc func pickImageButtonTapped() {
        // TODO: Open image picker
        
    }

}

class ProfileImagePickerView: UIView {

    let backgroundView : UIView = {
        let view = UIView()
        view.layer.masksToBounds = true
        return view
    }()

    let imageView: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(systemName: "person.fill")?.withRenderingMode(.alwaysTemplate)
        imageView.contentMode = .scaleAspectFit
        imageView.image = image
        return imageView
    }()

    let imagePickButton: ImagePickButton = {
        let button = ImagePickButton()
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        configureLayout()
    }

    required init() {
        super.init(frame: .zero)
        addSubviews()
        configureLayout()

    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    private func addSubviews() {
        addSubview(backgroundView)
        addSubview(imageView)
        addSubview(imagePickButton)

    }

    private func configureLayout() {
        constraintBackgroundView()
        constraintImageView()
        constraintImagePickerButton()

    }

    private func constraintBackgroundView() {
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }

    private func constraintImageView() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor,constant: -5),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -10),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])

    }

    private func constraintImagePickerButton() {
        imagePickButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imagePickButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            imagePickButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            imagePickButton.widthAnchor.constraint(equalToConstant: 55),
            imagePickButton.heightAnchor.constraint(equalToConstant: 55)
        ])

        imagePickButton.layer.cornerRadius = 27.5
        imagePickButton.clipsToBounds = true

    }


}

