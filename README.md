## WKInterfacePicker Bug ##

This project shows a bug in WKInterfacePicker's `setSelectedItemIndex` method. When the list of `WKPickerItem`s is less than 8 items, setSelectedItemIndex seems to fail and always selects the first item in the list. Run the `WKInterfacePickerBug WatchKit Extension` watch app and see `InterfaceController` in the `WKInterfacePickerBug WatchKit Extension` for more details.
