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

* UIKitView components(like webview or video..) doesn't work as expected, and I'm not really clear about the reason now yet..