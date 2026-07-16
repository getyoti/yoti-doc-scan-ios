# Theming

Build a custom theme with `YotiSDKThemeBuilder` and pass it as the `theme` when creating your [`YotiSDKConfiguration`](./README.md#3-specify-a-configuration). Every builder property is optional; anything you leave unset keeps its default. To use the default theme instead, pass `nil` for `theme` (or leave it out).
```swift
let theme = YotiSDKThemeBuilder {
    $0.lightPrimaryColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) // UIColor
    $0.darkPrimaryColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)  // UIColor
    $0.lightColorTheme = LightColorTheme()                              // YotiSDKColorTheme
    $0.darkColorTheme = DarkColorTheme()                                // YotiSDKColorTheme
    $0.typographyTheme = TypographyTheme()                              // YotiSDKTypographyTheme
    $0.spacingMode = .regular                                           // YotiSDKSpacingMode
    $0.shapeTheme = ShapeTheme()                                        // YotiSDKShapeTheme
    $0.iconTheme = IconTheme()                                          // YotiSDKIconTheme
    $0.illustrationTheme = IllustrationTheme()                          // YotiSDKIllustrationTheme
}.build()
```

Make sure to import `YotiSDKDesign` to use the theming API.

## Colors
Our SDK supports theming for both light and dark modes and switches automatically based on the system's appearance, if your app supports dark mode.

### Primary colors
When you set `lightPrimaryColor` and/or `darkPrimaryColor`, the SDK derives a few related tokens from it (e.g. `actionPrimary`); every other token keeps its default value.

### Color themes
To set a color theme for light and/or dark mode, implement `YotiSDKColorTheme` providing a `UIColor` for every token, and then assign it to `lightColorTheme` or `darkColorTheme`. If both a color theme and a primary color are set for the same mode, the color theme takes priority.
```swift
struct LightColorTheme: YotiSDKColorTheme {
    let actionEmphasisPrimaryPressed = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    let actionPrimary = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    ...
}
```

## Typography
Implement `YotiSDKTypographyTheme` to return a `YotiSDKTypographyStyle` for each of six roles (e.g. headline) at each of three scales (`.small`, `.medium` and `.large`). For a custom font, set `customFontName` and make sure the font is bundled and registered in your target's `Info.plist` under [`UIAppFonts`](https://developer.apple.com/documentation/bundleresources/information_property_list/uiappfonts). Leave `customFontName` as `nil` to use the system font, configured with `systemFontDesign` and `systemFontWeight`.
```swift
struct TypographyTheme: YotiSDKTypographyTheme {
    func headline(scale: YotiSDKTypographyScale) -> YotiSDKTypographyStyle {
        HeadlineStyle(scale: scale)
    }
    ...
}

struct HeadlineStyle: YotiSDKTypographyStyle {
    let systemFontDesign: UIFontDescriptor.SystemDesign? = .rounded
    let systemFontWeight: UIFont.Weight? = .bold
    ...
}
```

## Spacing
Choose a `spacingMode` (`YotiSDKSpacingMode`) to control how densely content is laid out.

Mode | Density
:-- | :--
`.compact` | Tightest spacing; fits more on screen
`.regular` | Balanced spacing (default)
`.relaxed` | Most generous spacing

## Shape
Implement `YotiSDKShapeTheme` to set the corner radii and border widths of buttons, containers, and inputs (e.g. checkboxes).
```swift
struct ShapeTheme: YotiSDKShapeTheme {
    let buttonBorderWidth = CGFloat(0)
    let buttonCornerRadius = CGFloat(0)
    ...
}
```

## Icons
Replace any of the SDK's icons by implementing `YotiSDKIconTheme`. Each property is an optional `YotiSDKIcon` — provide one to override that icon, or leave it `nil` to keep the default. An icon can be a system SF Symbol, or your own custom vector or custom SF Symbol loaded from an asset catalog in a bundle. Both initializers also accept an optional `weight` and `locale`; these apply only to custom SF Symbols, and localizing them requires iOS 17+.
```swift
struct IconTheme: YotiSDKIconTheme {
    let camera: YotiSDKIcon? = YotiSDKIcon(systemName: "camera")
    let document: YotiSDKIcon? = nil
    ...
}
```

## Illustrations
To use your own illustrations, implement `YotiSDKIllustrationTheme`. Set any property to a `YotiSDKIllustration` to replace that illustration, or leave it `nil` to fall back to the SDK's default. Each illustration is a custom vector from an asset catalog in a bundle, with separate light and dark appearances defined in the asset.
```swift
struct IllustrationTheme: YotiSDKIllustrationTheme {
    let checkmark: YotiSDKIllustration? = YotiSDKIllustration(bundleIdentifier: Bundle.main.bundleIdentifier!, name: "custom-checkmark-illustration")
    let landscape: YotiSDKIllustration? = nil
    ...
}
```
