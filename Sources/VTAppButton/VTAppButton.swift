//
// VTAppButton.swift
//
// Copyright (c) 2014-2022 Vincent Tourraine (https://www.vtourraine.net)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit

open class VTAppButton: UIButton {
    
    /**
     App Store identifier for the App.

     You can use this value in the touch action method to redirect the user to your app, for instance using a `SKStoreProductViewController`.
     */
    public var appIdentifier: Int?
    
    /**
     Creates a new app button configured with the given app identifier, title, and image.
     */
    public convenience init(for appIdentifier: Int, title: String, image: UIImage) {
        self.init(type: .custom)
        self.appIdentifier = appIdentifier
        
        setTitle(title, for: .normal)
        setImage(image, for: .normal)
        
        setTitleColor(.label, for: .normal)
        setTitleColor(.secondaryLabel, for: .highlighted)

        // Need Auto Layout
        // self.titleLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
        titleLabel?.font = UIFont.systemFont(ofSize: 11, weight: .regular)
    }
    
    struct K {
        static let radius: CGFloat = 12
        static let imagePadding: CGFloat = 8
        static let titleHeight: CGFloat = 20
        static let titleInsetX: CGFloat = -10
    }

    public override func layoutSubviews() {
        super.layoutSubviews()
        
        guard let imageView = imageView else {
            return
        }
        
        imageView.layer.cornerRadius = K.radius
        imageView.layer.cornerCurve = .continuous
        imageView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.width).insetBy(dx: K.imagePadding, dy: K.imagePadding)

        let titleLabelFrame = CGRect(x: 0, y: imageView.frame.maxY, width: frame.width, height: K.titleHeight)
        titleLabel?.frame = titleLabelFrame.insetBy(dx: K.titleInsetX, dy: 0)
        titleLabel?.textAlignment = .center
    }
}
