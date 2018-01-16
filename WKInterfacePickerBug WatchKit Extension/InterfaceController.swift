//
//  InterfaceController.swift
//  WKInterfacePickerBug WatchKit Extension
//
//  Created by Jason Ji on 1/16/18.
//  Copyright © 2018 Jason Ji. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var picker: WKInterfacePicker!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
//        let titles = ["0", "1", "2", "3", "4", "5", "6", "7"]     // shows "1" as expected
//        let titles = ["0", "1", "2", "3", "4", "5", "6"]          // shows "0" not as expected
//        let titles = ["A", "B", "C", "D", "E", "F", "G", "H"]     // shows "B" as expected
        let titles = ["A", "B", "C", "D", "E", "F", "G"]          // shows "A" not as expected
        
        let pickerItems: [WKPickerItem] = titles.map { title in
            let item = WKPickerItem()
            item.title = title
            item.caption = title
            return item
        }
        picker.setItems(pickerItems)
        picker.setSelectedItemIndex(1)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
