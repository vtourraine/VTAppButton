# VTAppButton

_`UIButton` looking like an app icon._

![Demo App Button](http://vtourraine.github.io/VTAppButton/img/VTAppButton-Demo.png)

## How to Use

The `VTAcknowledgementsViewController` instance is usually pushed to an existing `UINavigationController`.

``` objc
UIButton *button = [VTAppButton appButtonWithAppIdentifier:@"579440241"
                                                     title:@"1List"
                                                     image:iconImage];
```

## Requirements

VTAppButton requires iOS 5.0 and above, and uses ARC.


## Credits

VTAppButton was created by [Vincent Tourraine](http://www.vtourraine.net).


## License

VTAppButton is available under the MIT license. See the LICENSE file for more info.
