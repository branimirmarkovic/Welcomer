//
//  ImagePickButton.swift
//  Welcomer
//
//  Created by Branimir Markovic on 13.11.21..
//

import UIKit

class ImagePickButton: UIButton {


    override init(frame: CGRect) {
        super.init(frame: frame)
        theme()
    }

    required init() {
        super.init(frame: .zero)
        theme()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    private func theme() {
        guard var image = UIImage(systemName: "camera.fill") else {return}
        image = image.withRenderingMode(.alwaysTemplate)
        setImage(image, for: .normal)
        imageView?.contentMode = .scaleAspectFit
    }
}
