# Rate Limit

Simple utility for only executing code every so often.

This will only execute the block passed for a given `name` if the last time it was called is greater than `limit` or it has never been called.

Rate Limit is **fully thread-safe.** Released under the [MIT license](LICENSE).

## This Fork

This fork is intended as a server side utility. 

* It is Swift 3.0 and Swift Package Manager (SPM) ready.


## Usage

``` swift
RateLimit.execute(name: "RefreshTimeline", limit: 60) {
    // Do some work that runs a maximum of once per minute
}
```

Rate Limit doesn't persist limts across application launches. For most cases, this is ideal. If you need persistence, simply replace `RateLimit` with `PersistentRateLimit` for on disk persistence. Easy as that.

Open up the included [Xcode project](RateLimit.xcodeproj) for [tests](Tests). See the [code](RateLimit/RateLimit.swift) for full documentation.


## Installation

###Requirements

- Swift version 3.0


## Installation

### Install via Swift Package Manager

* Add the following to your `Package.swift` file:

``` swift
.Package(
    url: "https://github.com/iamjono/RateLimit.git", 
    majorVersion: 1, minor: 0
    ),
```

Then, regenerate your Xcode project:

```
swift package generate-xcodeproj
```

### Install Manually

- Download and drop 'RateLimit.swift' in your project.



