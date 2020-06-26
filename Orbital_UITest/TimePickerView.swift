//
//  TimePickerView.swift
//  Orbital_UITest
//
//  Created by Jerry Lin on 26/6/20.
//  Copyright © 2020 Jerry Lin. All rights reserved.
//

import SwiftUI

struct TimePickerView: View {
    @State var hour:Int16 = 0
    @State var minute:Int16 = 0
    var hours = Array(0 ..< 23)
    var minutes = Array(0 ..< 59)
    
    var body: some View {
        HStack {
            Picker(selection:self.$hour,label: Text("Hours")) {
                ForEach(0 ..< self.hours.count) {
                    Text("\(self.hours[$0])h")
                }
            }
            
            Picker(selection:self.$minute,label: Text("Minutes")) {
                ForEach(0 ..< self.minutes.count) {
                    Text("\(self.minutes[$0]) min")
                }
            }
        }
    }
}

struct TimePickerView_Previews: PreviewProvider {
    static var previews: some View {
        TimePickerView()
    }
}
