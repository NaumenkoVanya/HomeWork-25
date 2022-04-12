//
//  Enum.swift
//  HomeWork-25
//
//  Created by Ваня Науменко on 12.04.22.
//

import Foundation
import UIKit

// MARK: - AnimationType

enum AnimationType: String, CaseIterable {
    case shake
    case pop
    case morph
    case casesqueeze
    case wobble
    case swing
    case flipX
    case flipY
    case fall
    case squeezeLeft
    case squeezeRight
    case squeezeDown
    case squeezeUp
    case slideLeft
    case slideRight
    case slideDown
    case slideUp
    case fadeIn
    case fadeOut
    case fadeInLeft
    case fadeInRight
    case fadeInDown
    case fadeInUp
    case zoomIn
    case zoomOut
    case flash
}

// MARK: - Curve

enum Curve: String, CaseIterable {
    case spring
    case linear
    case easeIn
    case easeOut
    case easeInOut
}
