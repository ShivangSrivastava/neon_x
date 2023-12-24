
# neon_x

A Flutter package that provides a collection of custom widgets and extensions for a neomorphic design style. This package includes custom icons, text styling options, and a timeline widget.

## Features

- **NxIcon**: A custom widget for displaying SVG icons with optional size, color, and scale.

- **NxFontSize**: Extension on VxTextBuilder for easy scaling of font sizes.

- **NxFontWeight**: Extension on VxTextBuilder for setting font weights.

- **NxFonts**: Extension on VxTextBuilder for setting custom fonts from Google Fonts.

- **NxTimeLine**: A timeline widget with customizable colors, size, and interactive taps.

## Getting started

To use this package, add `neon_x` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  neon_x: 
```

## Usage

### NxIcon

```dart
import 'package:neon_x/neon_x.dart';

NxIcon('assets/icon.svg', size: 24, color: Colors.blue, scaleValue: 1.2)
```

### NxFontSize

```dart
import 'package:neon_x/neon_x.dart';

'Hello'.text.s20.make()
```

### NxFontWeight

```dart
import 'package:neon_x/neon_x.dart';

'Bold Text'.text.w6.make()
```

### NxFonts

```dart
import 'package:neon_x/neon_x.dart';

'Text with Poppins Font'.text.poppins.make()
```

### NxTimeLine

```dart
import 'package:neon_x/neon_x.dart';

NxTimeLine(
  currentPosition: 2,
  size: 5,
  filledColor: Colors.blue,
  lineColor: Colors.grey,
  onTap: (index) {
    // Handle tap on timeline
  },
)
```

## Additional information

<!-- For more information, check the [example](https://github.com/ShivangSrivastava/neon_x) folder.  -->
Feel free to contribute or report issues on the [GitHub repository](https://github.com/ShivangSrivastava/neon_x).


