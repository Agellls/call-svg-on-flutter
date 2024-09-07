# How to call script svg in flutter ?

• First you need add package [flutter_svg](https://pub.dev/packages/flutter_svg)

• After that input your script svg, the example liek this [app_svg.dart](https://github.com/Agellls/call-svg-on-flutter/blob/master/app_svg.dart)

```dart
class AppSvg {
  static const String yournamesvg =
      'your script svg here'
}
```

• After that call your svg on your script, the example like this [example.dart](https://github.com/Agellls/call-svg-on-flutter/blob/master/example.dart)

```dart
SvgPicture.string(
    AppSvg.yournamesvg,
    width: yourwidth,
    height: yourheight,
    color: yourcolor,
),
```

• Dont forget import the package

```dart
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yourpath/app_svg.dart';
```

• Horayyy now you can call the svg for your project, Happy coding 😁😂
