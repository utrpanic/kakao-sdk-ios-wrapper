# kakao-sdk-ios-wrapper
[KakaoSDK](https://developers.kakao.com/docs/latest/ko/sdk-download/ios) supports Swift Package Manager

## Installation

### Swift Package Manager

Add the KakaoSDKWrapper package to your dependencies in `Package.swift`:

```swift
dependencies: [
    .package(
        name: "KakaoSDKWrapper", 
        url: "https://github.com/utrpanic/kakao-sdk-ios-wrapper.git", 
        .upToNextMajor(from: "2.0.0")
    ),
]
```

### Supported KakaoSDK Versions
- v2.5.4
- v2.5.2
