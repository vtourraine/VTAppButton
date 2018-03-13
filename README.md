# VTAppButton

_`UIButton` looking like an app icon._

![Demo App Button](http://vtourraine.github.io/VTAppButton/img/VTAppButton-Demo.png)

## How to Use

You can create a `VTAppButton` with the custom initializer, then use it like any other `UIButton` (setting a frame, adding a target-action, and so on).

``` objc
UIButton *button = [VTAppButton appButtonWithAppIdentifier:@"579440241" title:@"1List" image:iconImage];
```

## Requirements

VTAppButton requires iOS 5.0 and above, and uses ARC.


## Credits

VTAppButton was created by [Vincent Tourraine](http://www.vtourraine.net).


## License

VTAppButton is available under the MIT license. See the LICENSE.txt file for more info.
