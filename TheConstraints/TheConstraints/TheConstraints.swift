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
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func ==(lhs: NSLayoutDimension, rhs: Int) -> NSLayoutConstraint {
        return lhs == CGFloat(rhs)
    }

    @discardableResult
    public static func ==(lhs: NSLayoutDimension, rhs: Double) -> NSLayoutConstraint {
        return lhs == CGFloat(rhs)
    }

    @discardableResult
    public static func <=(lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
        let constraint = lhs.constraint(lessThanOrEqualToConstant: rhs)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func <=(lhs: NSLayoutDimension, rhs: Int) -> NSLayoutConstraint {
        return lhs <= CGFloat(rhs)
    }

    @discardableResult
    public static func <=(lhs: NSLayoutDimension, rhs: Double) -> NSLayoutConstraint {
        return lhs <= CGFloat(rhs)
    }

    @discardableResult
    public static func >=(lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
        let constraint = lhs.constraint(greaterThanOrEqualToConstant: rhs)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func >=(lhs: NSLayoutDimension, rhs: Int) -> NSLayoutConstraint {
        return lhs >= CGFloat(rhs)
    }

    @discardableResult
    public static func >=(lhs: NSLayoutDimension, rhs: Double) -> NSLayoutConstraint {
        return lhs >= CGFloat(rhs)
    }

    @discardableResult
    public static func ==(lhs: NSLayoutDimension, rhs: NSLayoutDimension) -> NSLayoutConstraint {
        let constraint = lhs.constraint(equalTo: rhs)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func <=(lhs: NSLayoutDimension, rhs: NSLayoutDimension) -> NSLayoutConstraint {
        let constraint = lhs.constraint(lessThanOrEqualTo: rhs)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func >=(lhs: NSLayoutDimension, rhs: NSLayoutDimension) -> NSLayoutConstraint {
        let constraint = lhs.constraint(greaterThanOrEqualTo: rhs)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
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
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
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
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
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
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func + (lhs: NSLayoutDimension, rhs: CGFloat) -> LayoutDimension {
        return LayoutDimension(constraint: lhs, constant: rhs, multiplier: 1)
    }

    @discardableResult
    public static func + (lhs: NSLayoutDimension, rhs: Int) -> LayoutDimension {
        return lhs + CGFloat(rhs)
    }

    @discardableResult
    public static func + (lhs: NSLayoutDimension, rhs: Double) -> LayoutDimension {
        return lhs + CGFloat(rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutDimension, rhs: CGFloat) -> LayoutDimension {
        return LayoutDimension(constraint: lhs, constant: -rhs, multiplier: 1)
    }

    @discardableResult
    public static func - (lhs: NSLayoutDimension, rhs: Int) -> LayoutDimension {
        return lhs - CGFloat(rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutDimension, rhs: Double) -> LayoutDimension {
        return lhs - CGFloat(rhs)
    }

    @discardableResult
    public static func * (lhs: NSLayoutDimension, rhs: CGFloat) -> LayoutDimension {
        return LayoutDimension(constraint: lhs, constant: nil, multiplier: rhs)
    }

    @discardableResult
    public static func * (lhs: NSLayoutDimension, rhs: Int) -> LayoutDimension {
        return lhs * CGFloat(rhs)
    }

    @discardableResult
    public static func * (lhs: NSLayoutDimension, rhs: Double) -> LayoutDimension {
        return lhs * CGFloat(rhs)
    }

    @discardableResult
    public static func / (lhs: NSLayoutDimension, rhs: CGFloat) -> LayoutDimension {
        return LayoutDimension(constraint: lhs, constant: nil, multiplier: 1/rhs)
    }

    @discardableResult
    public static func / (lhs: NSLayoutDimension, rhs: Int) -> LayoutDimension {
        return lhs / CGFloat(rhs)
    }

    @discardableResult
    public static func / (lhs: NSLayoutDimension, rhs: Double) -> LayoutDimension {
        return lhs / CGFloat(rhs)
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
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func ==(lhs: NSLayoutXAxisAnchor, rhs: LayoutXConstraint) -> NSLayoutConstraint {
        let constraint = lhs.constraint(equalTo: rhs.constraint, constant: rhs.value)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func <=(lhs: NSLayoutXAxisAnchor, rhs: NSLayoutXAxisAnchor) -> NSLayoutConstraint {
        let constraint = lhs.constraint(lessThanOrEqualTo: rhs)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func <=(lhs: NSLayoutXAxisAnchor, rhs: LayoutXConstraint) -> NSLayoutConstraint {
        let constraint = lhs.constraint(lessThanOrEqualTo: rhs.constraint, constant: rhs.value)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func >=(lhs: NSLayoutXAxisAnchor, rhs: NSLayoutXAxisAnchor) -> NSLayoutConstraint {
        let constraint = lhs.constraint(greaterThanOrEqualTo: rhs)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func >=(lhs: NSLayoutXAxisAnchor, rhs: LayoutXConstraint) -> NSLayoutConstraint {
        let constraint = lhs.constraint(greaterThanOrEqualTo: rhs.constraint, constant: rhs.value)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func + (lhs: NSLayoutXAxisAnchor, rhs: CGFloat) -> LayoutXConstraint {
        return LayoutXConstraint(constraint: lhs, value: rhs)
    }

    @discardableResult
    public static func + (lhs: NSLayoutXAxisAnchor, rhs: Int) -> LayoutXConstraint {
        return lhs + CGFloat(rhs)
    }

    @discardableResult
    public static func + (lhs: NSLayoutXAxisAnchor, rhs: Double) -> LayoutXConstraint {
        return lhs + CGFloat(rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutXAxisAnchor, rhs: CGFloat) -> LayoutXConstraint {
        return LayoutXConstraint(constraint: lhs, value: -rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutXAxisAnchor, rhs: Int) -> LayoutXConstraint {
        return lhs - CGFloat(rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutXAxisAnchor, rhs: Double) -> LayoutXConstraint {
        return lhs - CGFloat(rhs)
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
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func ==(lhs: NSLayoutYAxisAnchor, rhs: LayoutYConstraint) -> NSLayoutConstraint {
        let constraint = lhs.constraint(equalTo: rhs.constraint, constant: rhs.value)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func <=(lhs: NSLayoutYAxisAnchor, rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
        let constraint = lhs.constraint(lessThanOrEqualTo: rhs)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func <=(lhs: NSLayoutYAxisAnchor, rhs: LayoutYConstraint) -> NSLayoutConstraint {
        let constraint = lhs.constraint(lessThanOrEqualTo: rhs.constraint, constant: rhs.value)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func >=(lhs: NSLayoutYAxisAnchor, rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
        let constraint = lhs.constraint(greaterThanOrEqualTo: rhs)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func >=(lhs: NSLayoutYAxisAnchor, rhs: LayoutYConstraint) -> NSLayoutConstraint {
        let constraint = lhs.constraint(greaterThanOrEqualTo: rhs.constraint, constant: rhs.value)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func + (lhs: NSLayoutYAxisAnchor, rhs: CGFloat) -> LayoutYConstraint {
        return LayoutYConstraint(constraint: lhs, value: rhs)
    }

    @discardableResult
    public static func + (lhs: NSLayoutYAxisAnchor, rhs: Int) -> LayoutYConstraint {
        return lhs + CGFloat(rhs)
    }

    @discardableResult
    public static func + (lhs: NSLayoutYAxisAnchor, rhs: Double) -> LayoutYConstraint {
        return lhs + CGFloat(rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutYAxisAnchor, rhs: CGFloat) -> LayoutYConstraint {
        return LayoutYConstraint(constraint: lhs, value: -rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutYAxisAnchor, rhs: Int) -> LayoutYConstraint {
        return lhs - CGFloat(rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutYAxisAnchor, rhs: Double) -> LayoutYConstraint {
        return lhs - CGFloat(rhs)
    }
}

// MARK: - UIView

extension UIView {
    open var leading: NSLayoutXAxisAnchor {
        return leadingAnchor
    }

    open var trailing: NSLayoutXAxisAnchor {
        return trailingAnchor
    }

    open var left: NSLayoutXAxisAnchor {
        return leftAnchor
    }

    open var right: NSLayoutXAxisAnchor {
        return rightAnchor
    }

    open var top: NSLayoutYAxisAnchor {
        return topAnchor
    }

    open var bottom: NSLayoutYAxisAnchor {
        return bottomAnchor
    }

    open var width: NSLayoutDimension {
        return widthAnchor
    }

    open var height: NSLayoutDimension {
        return heightAnchor
    }

    open var centerX: NSLayoutXAxisAnchor {
        return centerXAnchor
    }

    open var centerY: NSLayoutYAxisAnchor {
        return centerYAnchor
    }

    open var firstBaseline: NSLayoutYAxisAnchor {
        return firstBaselineAnchor
    }

    open var lastBaseline: NSLayoutYAxisAnchor {
        return lastBaselineAnchor
    }
}

