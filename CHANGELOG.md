# 0.1.2

- `URLSessionDataTaskOperation` now exposes its `request` property.

# 0.1.1

- `URLSessionDataTaskOperation.init(request:)` now accepts an optional value.

# Aloy (0.1.0)
![Aloy from Horizon: Zero Dawn](https://user-images.githubusercontent.com/11697241/33392376-0992300c-d523-11e7-8bd8-98d0387cc8af.jpg)

This is the first version of this library. It is a collection of common code between Bit2 Technology projects.

- `AdvancedOperation` is based on WWDC 2015 great session [Advanced NSOperations](https://developer.apple.com/videos/play/wwdc2015/226/).
- `CoreDataContainer` is a `NSPersistenceContainer` replacement with support for iOS 9.
- `CoreDataOperation` and `URLSessionDataTaskOperation` are subclasses of `AdvancedOperation` with helpers for Core Data and URL Session, respectively.
