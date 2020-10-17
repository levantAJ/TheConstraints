//
//  TheConstraints.swift
//  TheConstraints
//
//  Created by levantAJ on 6/22/19.
//  Copyright © 2019 levantAJ. All rights reserved.
//

import UIKit

// MARK: - NSLayoutDimension

extension NSLayoutDimension {
    public struct Dimension {
        let constraint: NSLayoutDimension
        let constant: CGFloat?
        let multiplier: CGFloat
    }

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
    public static func ==(lhs: NSLayoutDimension, rhs: Dimension) -> NSLayoutConstraint {
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
    public static func <=(lhs: NSLayoutDimension, rhs: Dimension) -> NSLayoutConstraint {
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
    public static func >=(lhs: NSLayoutDimension, rhs: Dimension) -> NSLayoutConstraint {
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
    public static func + (lhs: NSLayoutDimension, rhs: CGFloat) -> Dimension {
        return Dimension(constraint: lhs, constant: rhs, multiplier: 1)
    }

    @discardableResult
    public static func + (lhs: NSLayoutDimension, rhs: Int) -> Dimension {
        return lhs + CGFloat(rhs)
    }

    @discardableResult
    public static func + (lhs: NSLayoutDimension, rhs: Double) -> Dimension {
        return lhs + CGFloat(rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutDimension, rhs: CGFloat) -> Dimension {
        return Dimension(constraint: lhs, constant: -rhs, multiplier: 1)
    }

    @discardableResult
    public static func - (lhs: NSLayoutDimension, rhs: Int) -> Dimension {
        return lhs - CGFloat(rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutDimension, rhs: Double) -> Dimension {
        return lhs - CGFloat(rhs)
    }

    @discardableResult
    public static func * (lhs: NSLayoutDimension, rhs: CGFloat) -> Dimension {
        return Dimension(constraint: lhs, constant: nil, multiplier: rhs)
    }

    @discardableResult
    public static func * (lhs: NSLayoutDimension, rhs: Int) -> Dimension {
        return lhs * CGFloat(rhs)
    }

    @discardableResult
    public static func * (lhs: NSLayoutDimension, rhs: Double) -> Dimension {
        return lhs * CGFloat(rhs)
    }

    @discardableResult
    public static func / (lhs: NSLayoutDimension, rhs: CGFloat) -> Dimension {
        return Dimension(constraint: lhs, constant: nil, multiplier: 1/rhs)
    }

    @discardableResult
    public static func / (lhs: NSLayoutDimension, rhs: Int) -> Dimension {
        return lhs / CGFloat(rhs)
    }

    @discardableResult
    public static func / (lhs: NSLayoutDimension, rhs: Double) -> Dimension {
        return lhs / CGFloat(rhs)
    }
}

// MARK: - NSLayoutXAxisAnchor

extension NSLayoutXAxisAnchor {
    public struct Constraint {
        let constraint: NSLayoutXAxisAnchor
        let constant: CGFloat
    }

    @discardableResult
    public static func ==(lhs: NSLayoutXAxisAnchor, rhs: NSLayoutXAxisAnchor) -> NSLayoutConstraint {
        let constraint = lhs.constraint(equalTo: rhs)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func ==(lhs: NSLayoutXAxisAnchor, rhs: Constraint) -> NSLayoutConstraint {
        let constraint = lhs.constraint(equalTo: rhs.constraint, constant: rhs.constant)
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
    public static func <=(lhs: NSLayoutXAxisAnchor, rhs: Constraint) -> NSLayoutConstraint {
        let constraint = lhs.constraint(lessThanOrEqualTo: rhs.constraint, constant: rhs.constant)
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
    public static func >=(lhs: NSLayoutXAxisAnchor, rhs: Constraint) -> NSLayoutConstraint {
        let constraint = lhs.constraint(greaterThanOrEqualTo: rhs.constraint, constant: rhs.constant)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func + (lhs: NSLayoutXAxisAnchor, rhs: CGFloat) -> Constraint {
        return Constraint(constraint: lhs, constant: rhs)
    }

    @discardableResult
    public static func + (lhs: NSLayoutXAxisAnchor, rhs: Int) -> Constraint {
        return lhs + CGFloat(rhs)
    }

    @discardableResult
    public static func + (lhs: NSLayoutXAxisAnchor, rhs: Double) -> Constraint {
        return lhs + CGFloat(rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutXAxisAnchor, rhs: CGFloat) -> Constraint {
        return Constraint(constraint: lhs, constant: -rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutXAxisAnchor, rhs: Int) -> Constraint {
        return lhs - CGFloat(rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutXAxisAnchor, rhs: Double) -> Constraint {
        return lhs - CGFloat(rhs)
    }
}

// MARK: - NSLayoutYAxisAnchor

extension NSLayoutYAxisAnchor {
    public struct Constraint {
        let constraint: NSLayoutYAxisAnchor
        let value: CGFloat
    }

    @discardableResult
    public static func ==(lhs: NSLayoutYAxisAnchor, rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
        let constraint = lhs.constraint(equalTo: rhs)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func ==(lhs: NSLayoutYAxisAnchor, rhs: Constraint) -> NSLayoutConstraint {
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
    public static func <=(lhs: NSLayoutYAxisAnchor, rhs: Constraint) -> NSLayoutConstraint {
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
    public static func >=(lhs: NSLayoutYAxisAnchor, rhs: Constraint) -> NSLayoutConstraint {
        let constraint = lhs.constraint(greaterThanOrEqualTo: rhs.constraint, constant: rhs.value)
        constraint.isActive = true
        (constraint.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
        return constraint
    }

    @discardableResult
    public static func + (lhs: NSLayoutYAxisAnchor, rhs: CGFloat) -> Constraint {
        return Constraint(constraint: lhs, value: rhs)
    }

    @discardableResult
    public static func + (lhs: NSLayoutYAxisAnchor, rhs: Int) -> Constraint {
        return lhs + CGFloat(rhs)
    }

    @discardableResult
    public static func + (lhs: NSLayoutYAxisAnchor, rhs: Double) -> Constraint {
        return lhs + CGFloat(rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutYAxisAnchor, rhs: CGFloat) -> Constraint {
        return Constraint(constraint: lhs, value: -rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutYAxisAnchor, rhs: Int) -> Constraint {
        return lhs - CGFloat(rhs)
    }

    @discardableResult
    public static func - (lhs: NSLayoutYAxisAnchor, rhs: Double) -> Constraint {
        return lhs - CGFloat(rhs)
    }
}

// MARK: - LayoutCenterAnchor

public struct LayoutCenterAnchor {
    let centerX: NSLayoutXAxisAnchor
    let centerY: NSLayoutYAxisAnchor

    @discardableResult
    public static func ==(lhs: LayoutCenterAnchor, rhs: LayoutCenterAnchor) -> [NSLayoutConstraint] {
        let centerX = lhs.centerX == rhs.centerX
        let centerY = lhs.centerY == rhs.centerY
        return [centerX, centerY]
    }
}

// MARK: - LayoutEdgesAnchor

public struct LayoutEdgesAnchor {
    let top: NSLayoutYAxisAnchor
    let trailing: NSLayoutXAxisAnchor
    let bottom: NSLayoutYAxisAnchor
    let leading: NSLayoutXAxisAnchor

    public struct Constraint {
        let edges: LayoutEdgesAnchor
        let insets: UIEdgeInsets
    }

    @discardableResult
    public static func ==(lhs: LayoutEdgesAnchor, rhs: LayoutEdgesAnchor) -> [NSLayoutConstraint] {
        let top = lhs.top == rhs.top
        let trailing = lhs.trailing == rhs.trailing
        let bottom = lhs.bottom == rhs.bottom
        let leading = lhs.leading == rhs.leading
        return [top, trailing, bottom, leading]
    }

    @discardableResult
    public static func ==(lhs: LayoutEdgesAnchor, rhs: LayoutEdgesAnchor.Constraint) -> [NSLayoutConstraint] {
        let top = lhs.top == rhs.edges.top + rhs.insets.top
        let trailing = lhs.trailing == rhs.edges.trailing - rhs.insets.right
        let bottom = lhs.bottom == rhs.edges.bottom - rhs.insets.bottom
        let leading = lhs.leading == rhs.edges.leading + rhs.insets.left
        return [top, trailing, bottom, leading]
    }
}

public func inset(_ edges: LayoutEdgesAnchor, _ constant: CGFloat) -> LayoutEdgesAnchor.Constraint {
    let insets = UIEdgeInsets(top: constant, left: constant, bottom: constant, right: constant)
    return LayoutEdgesAnchor.Constraint(edges: edges, insets: insets)
}

public func inset(_ edges: LayoutEdgesAnchor, horizontal constant: CGFloat) -> LayoutEdgesAnchor.Constraint {
    let insets = UIEdgeInsets(top: 0, left: constant, bottom: 0, right: constant)
    return LayoutEdgesAnchor.Constraint(edges: edges, insets: insets)
}

public func inset(_ edges: LayoutEdgesAnchor, vertical constant: CGFloat) -> LayoutEdgesAnchor.Constraint {
    let insets = UIEdgeInsets(top: constant, left: 0, bottom: constant, right: 0)
    return LayoutEdgesAnchor.Constraint(edges: edges, insets: insets)
}

public func inset(_ edges: LayoutEdgesAnchor, horizontal: CGFloat, vertical: CGFloat) -> LayoutEdgesAnchor.Constraint {
    let insets = UIEdgeInsets(top: vertical, left: horizontal, bottom: vertical, right: horizontal)
    return LayoutEdgesAnchor.Constraint(edges: edges, insets: insets)
}

public func inset(_ edges: LayoutEdgesAnchor, insets: UIEdgeInsets) -> LayoutEdgesAnchor.Constraint {
    return LayoutEdgesAnchor.Constraint(edges: edges, insets: insets)
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

    open var mid: LayoutCenterAnchor {
        return LayoutCenterAnchor(centerX: centerX, centerY: centerY)
    }

    open var edges: LayoutEdgesAnchor {
        return LayoutEdgesAnchor(top: top, trailing: trailing, bottom: bottom, leading: leading)
    }
}

