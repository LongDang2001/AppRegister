//
//  DistrictsData.swift
//  Register
//
//  Created by admin on 4/4/20.
//  Copyright © 2020 Long. All rights reserved.
//

import Foundation
class DistrictsData {
    var name: String?
    var codeCity: Int?
    var codeDistricts: Int?
    init(name: String?, codeCity: Int?, codeDistricts: Int?) {
        self.name = name
        self.codeCity = codeCity
        self.codeDistricts = codeDistricts
    }
}
