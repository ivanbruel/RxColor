//
//  RxColor.swift
//
//  Created by Ivan Bruel on 06/06/16.
//  Copyright © 2016 Faber Ventures. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

extension UILabel {

  var rx_textColor: AnyObserver<UIColor> {
    return UIBindingObserver(UIElement: self) { label, color in
      label.textColor = color
      }.asObserver()
  }
}

extension UIButton {

  var rx_titleColor: AnyObserver<UIColor> {
    return UIBindingObserver(UIElement: self) { button, color in
      button.setTitleColor(color, forState: .Normal)
      }.asObserver()
  }

  var rx_color: AnyObserver<UIColor> {
    return UIBindingObserver(UIElement: self) { button, color in
      button.setTitleColor(color, forState: .Normal)
      button.tintColor = color
      }.asObserver()
  }
}

extension UIView {
  var rx_backgroundColor: AnyObserver<UIColor> {
    return UIBindingObserver(UIElement: self) { view, color in
      view.backgroundColor = color
      }.asObserver()
  }
}
