//
//  TheConstraints.swift
//  TheConstraints
//
//  Created by levantAJ on 6/22/19.
//  Copyright © 2019 levantAJ. All rights reserved.
//

import UIKit

// MARK: - NSLayoutDimension

public struct LayoutDimension {
    let constraint: NSLayoutDimension
    let constant: CGFloat?
    let multiplier: CGFloat
}

extension NSLayoutDimension {
    @discardableResult
    public static func ==(lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
        let constraint = lhs.constraint(equalToConstant: rhs)
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public static func <=(lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
        let constraint = lhs.constraint(lessThanOrEqualToConstant: rhs)
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public static func >=(lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
        let constraint = lhs.constraint(greaterThanOrEqualToConstant: rhs)
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public static func ==(lhs: NSLayoutDimension, rhs: NSLayoutDimension) -> NSLayoutConstraint {
        let constraint = lhs.constraint(equalTo: rhs)
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public static func <=(lhs: NSLayoutDimension, rhs: NSLayoutDimension) -> NSLayoutConstraint {
        let constraint = lhs.constraint(lessThanOrEqualTo: rhs)
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public static func >=(lhs: NSLayoutDimension, rhs: NSLayoutDimension) -> NSLayoutConstraint {
        let constraint = lhs.constraint(greaterThanOrEqualTo: rhs)
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public static func ==(lhs: NSLayoutDimension, rhs: LayoutDimension) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        if let constant = rhs.constant {
            constraint = lhs.constraint(equalTo: rhs.constraint, multiplier: rhs.multiplier, constant: constant)
        } else {
            constraint = lhs.constraint(equalTo: rhs.constraint, multiplier: rhs.multiplier)
        }
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public static func <=(lhs: NSLayoutDimension, rhs: LayoutDimension) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        if let constant = rhs.constant {
            constraint = lhs.constraint(lessThanOrEqualTo: rhs.constraint, multiplier: rhs.multiplier, constant: constant)
        } else {
            constraint = lhs.constraint(lessThanOrEqualTo: rhs.constraint, multiplier: rhs.multiplier)
        }
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public static func >=(lhs: NSLayoutDimension, rhs: LayoutDimension) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        if let constant = rhs.constant {
            constraint = lhs.constraint(greaterThanOrEqualTo: rhs.constraint, multiplier: rhs.multiplier, constant: constant)
        } else {
            constraint = lhs.constraint(greaterThanOrEqualTo: rhs.constraint, multiplier: rhs.multiplier)
        }
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public static func + (lhs: NSLayoutDimension, rhs: CGFloat) -> LayoutDimension {
        return LayoutDimension(constraint: lhs, constant: rhs, multiplier: 1)
    }

    @discardableResult
    public static func - (lhs: NSLayoutDimension, rhs: CGFloat) -> LayoutDimension {
        return LayoutDimension(constraint: lhs, constant: -rhs, multiplier: 1)
    }

    @discardableResult
    public static func * (lhs: NSLayoutDimension, rhs: CGFloat) -> LayoutDimension {
        return LayoutDimension(constraint: lhs, constant: nil, multiplier: rhs)
    }

    @discardableResult
    public static func / (lhs: NSLayoutDimension, rhs: CGFloat) -> LayoutDimension {
        return LayoutDimension(constraint: lhs, constant: nil, multiplier: 1/rhs)
    }
}

// MARK: - LayoutXConstraint

public struct LayoutXConstraint {
    let constraint: NSLayoutXAxisAnchor
    let value: CGFloat
}

extension NSLayoutXAxisAnchor {
    @discardableResult
    public static func ==(lhs: NSLayoutXAxisAnchor, rhs: NSLayoutXAxisAnchor) -> NSLayoutConstraint {
        let constraint = lhs.constraint(equalTo: rhs)
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public static func ==(lhs: NSLayoutXAxisAnchor, rhs: LayoutXConstraint) -> NSLayoutConstraint {
        let constraint = lhs.constraint(equalTo: rhs.constraint, constant: rhs.value)
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public static func <=(lhs: NSLayoutXAxisAnchor, rhs: NSLayoutXAxisAnchor) -> NSLayoutConstraint {
        let constraint = lhs.constraint(lessThanOrEqualTo: rhs)
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public static func <=(lhs: NSLayoutXAxisAnchor, rhs: LayoutXConstraint) -> NSLayoutConstraint {
        let constraint = lhs.constraint(lessThanOrEqualTo: rhs.constraint, constant: rhs.value)
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public static func + (lhs: NSLayoutXAxisAnchor, rhs: CGFloat) -> LayoutXConstraint {
        return LayoutXConstraint(constraint: lhs, value: rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutXAxisAnchor, rhs: CGFloat) -> LayoutXConstraint {
        return LayoutXConstraint(constraint: lhs, value: -rhs)
    }
}

// MARK: - LayoutYConstraint

public struct LayoutYConstraint {
    let constraint: NSLayoutYAxisAnchor
    let value: CGFloat
}

extension NSLayoutYAxisAnchor {
    @discardableResult
    public static func ==(lhs: NSLayoutYAxisAnchor, rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
        let constraint = lhs.constraint(equalTo: rhs)
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public static func ==(lhs: NSLayoutYAxisAnchor, rhs: LayoutYConstraint) -> NSLayoutConstraint {
        let constraint = lhs.constraint(equalTo: rhs.constraint, constant: rhs.value)
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public static func <=(lhs: NSLayoutYAxisAnchor, rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
        let constraint = lhs.constraint(lessThanOrEqualTo: rhs)
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public static func <=(lhs: NSLayoutYAxisAnchor, rhs: LayoutYConstraint) -> NSLayoutConstraint {
        let constraint = lhs.constraint(lessThanOrEqualTo: rhs.constraint, constant: rhs.value)
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    public static func + (lhs: NSLayoutYAxisAnchor, rhs: CGFloat) -> LayoutYConstraint {
        return LayoutYConstraint(constraint: lhs, value: rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutYAxisAnchor, rhs: CGFloat) -> LayoutYConstraint {
        return LayoutYConstraint(constraint: lhs, value: -rhs)
    }
}

// MARK: - UIView

extension UIView {
    open var leading: NSLayoutXAxisAnchor {
        translatesAutoresizingMaskIntoConstraints = false
        return leadingAnchor
    }

    open var trailing: NSLayoutXAxisAnchor {
        translatesAutoresizingMaskIntoConstraints = false
        return trailingAnchor
    }

    open var left: NSLayoutXAxisAnchor {
        translatesAutoresizingMaskIntoConstraints = false
        return leftAnchor
    }

    open var right: NSLayoutXAxisAnchor {
        translatesAutoresizingMaskIntoConstraints = false
        return rightAnchor
    }

    open var top: NSLayoutYAxisAnchor {
        translatesAutoresizingMaskIntoConstraints = false
        return topAnchor
    }

    open var bottom: NSLayoutYAxisAnchor {
        translatesAutoresizingMaskIntoConstraints = false
        return bottomAnchor
    }

    open var width: NSLayoutDimension {
        translatesAutoresizingMaskIntoConstraints = false
        return widthAnchor
    }

    open var height: NSLayoutDimension {
        translatesAutoresizingMaskIntoConstraints = false
        return heightAnchor
    }

    open var centerX: NSLayoutXAxisAnchor {
        translatesAutoresizingMaskIntoConstraints = false
        return centerXAnchor
    }

    open var centerY: NSLayoutYAxisAnchor {
        translatesAutoresizingMaskIntoConstraints = false
        return centerYAnchor
    }

    open var firstBaseline: NSLayoutYAxisAnchor {
        translatesAutoresizingMaskIntoConstraints = false
        return firstBaselineAnchor
    }

    open var lastBaseline: NSLayoutYAxisAnchor {
        translatesAutoresizingMaskIntoConstraints = false
        return lastBaselineAnchor
    }
}

