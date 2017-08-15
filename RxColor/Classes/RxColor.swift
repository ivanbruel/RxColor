//
//  RxColor.swift
//
//  Created by Ivan Bruel on 06/06/16.
//  Copyright © 2016 Faber Ventures. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

extension Reactive where Base: UILabel {

    public var textColor: UIBindingObserver<Base, UIColor?> {
        return UIBindingObserver<Base, UIColor?>(UIElement: self.base) { (label, color) -> () in
            label.textColor = color
        }
    }
}

extension Reactive where Base: UIButton {

    public func titleColor(for controlState: UIControlState = []) -> UIBindingObserver<Base, UIColor?> {
        return UIBindingObserver<Base, UIColor?>(UIElement: self.base) { (button, color) -> () in
            button.setTitleColor(color, for: controlState)
        }
    }
}

extension Reactive where Base: UIView {

    public var backgroundColor: UIBindingObserver<Base, UIColor?> {
        return UIBindingObserver<Base, UIColor?>(UIElement: self.base) { (view, color) -> () in
            view.backgroundColor = color
        }
    }

    public var tintColor: UIBindingObserver<Base, UIColor?> {
        return UIBindingObserver<Base, UIColor?>(UIElement: self.base) { (view, color) -> () in
            view.tintColor = color
        }
    }
}
