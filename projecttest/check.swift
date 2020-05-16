//
//  check.swift
//  projecttest
//
//  Created by sarah alshammari on 5/15/20.
//  Copyright © 2020 sarah alshammari. All rights reserved.
//

import SwiftUI

struct check: View {
    @State var total = 0
    var body: some View {
       Text("your total is \(total)")
    }
}

struct check_Previews: PreviewProvider {
    static var previews: some View {
        check()
    }
}
