# fitter

UI Responsive fitting approach according to screent width!

## Getting Started

Include codes below, and it works:
your app will automatically scale itself like `rem` does in web...

```
import 'package:fitter/fitter.dart';

void main() {
    // maybe your old code here?
    // runApp(MyApp());

    // and just change your code as below
    InnerWidgetsFlutterBinding.ensureInitialized()
      ..attachRootWidget(new MyApp())
      ..scheduleWarmUpFrame();
}
```

## Kown Bugs

* `UIKitView` components(like `webview` or `video`..) doesn't work as expected, and I'm not really clear about the reason now yet..

## Thanks To

Strong inspired by [@genius158](https://github.com/genius158/FlutterTest/blob/master/lib/main.dart) and his [post](https://juejin.im/post/5cb49e306fb9a068a3729b41).