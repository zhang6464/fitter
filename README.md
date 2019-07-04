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

If you wanna custom design resolution:

```
import 'package:fitter/fitter.dart'
import 'package:fitter/viewport/view_adpter.dart';

void main() {
    // reset the static value
    ViewAdapter.screeWidth = 375;
    
    InnerWidgetsFlutterBinding.ensureInitialized()
      ..attachRootWidget(new MyApp())
      ..scheduleWarmUpFrame();
}
```
## Old Versions

- If wanna support old version flutter sdk, please set `fitter` version `^0.1.0`
- `fitter` version `^1.0.0` required flutter sdk version to be above `1.2.0`

## Kown Bugs

* `UIKitView` components(like `webview` or `video`..) doesn't work as expected, and I'm not really clear about the reason now yet...
* Depend on `flutter sdk` 1.5+ version, error occurs on below versions, and also don't know why...

## Thanks To

Strong inspired by [@genius158](https://github.com/genius158/FlutterTest/blob/master/lib/main.dart) and his [post](https://juejin.im/post/5cb49e306fb9a068a3729b41).