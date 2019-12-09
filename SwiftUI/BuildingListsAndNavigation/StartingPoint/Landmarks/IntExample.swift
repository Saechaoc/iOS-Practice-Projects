//
//  IntExample.swift
//  Landmarks
//
//  Created by Chris on 12/6/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct IntExample: View {
    var num: Int = 1
    var body: some View {
        Text(num.sayHello())
    }
}

struct IntExample_Previews: PreviewProvider {
    static var previews: some View {
        IntExample()
    }
}

extension Int {
    func sayHello() -> String {
        return "Hello I'm \(self)"
    }
}

class Ex {
    func hello() {
        print("Hello World!")
    }
}
