[![CocoaPods](https://img.shields.io/cocoapods/p/TheConstraints.svg)](https://cocoapods.org/pods/TheConstraints)
[![CocoaPods](https://img.shields.io/cocoapods/v/TheConstraints.svg)](http://cocoapods.org/pods/TheConstraints)
[![Pod License](https://cocoapod-badges.herokuapp.com/l/TheConstraints/badge.png)](https://www.apache.org/licenses/LICENSE-2.0.html)
[![Build Status](https://travis-ci.org/levantAJ/TheConstraints.svg?branch=master)](https://travis-ci.org/levantAJ/TheConstraints)

# :iphone::triangular_ruler: The Constraints
The light weight to make constraints 

## Requirements

- iOS 9.0 or later
- Xcode 10.0 or later

## Installation
There is a way to use TheConstraints in your project:

- using CocoaPods

### Installation with CocoaPods

```
pod 'TheConstraints'
```
### Build Project

At this point your workspace should build without error. If you are having problem, post to the Issue and the
community can help you solve it.

## How To Use

```swift
import TheConstraints

view.addSubview(subView)
```

### Position:

```swift
subView.leading == view.leading
subView.trailing == view.trailing
subView.top == view.top - 100
subView.bottom == view.bottom + 100
```

### Size:

```swift
subView.width == 50
subView.width == view.width + 100
subView.width == view.width * 2

subView.height == 100
subView.height == view.height - 200
subView.height == view.height / 2
```

### Center:

```swift
subView.centerX == view.centerX + 100
subView.centerY == view.centerY - 200

subView.mid == view.mid // centerX + centerY
```

### Edges:

```swift
subView.edges == view.edges // top + trailing + bottom + leading
```

## Author
- [Tai Le](https://github.com/levantAJ)

## Communication
- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.

## Licenses

All source code is licensed under the [MIT License](https://raw.githubusercontent.com/levantAJ/TheConstraints/master/LICENSE).
