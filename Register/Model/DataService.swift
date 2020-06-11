//
//  DataService.swift
//  Register
//
//  Created by admin on 4/4/20.
//  Copyright © 2020 Long. All rights reserved.
//

import Foundation

typealias JSON = Dictionary<AnyHashable, Any>
class DataService {
    static var shared = DataService()
    var cities: [CityData] = []
    var districts: [DistrictsData] = []
    
    func setCityData() {
        guard let plistPath = Bundle.main.path(forResource: "Cities", ofType: "plist") else { return }
        guard let plistDict = NSDictionary(contentsOfFile: plistPath) as? JSON else { return }
        guard let plistArray = plistDict["Cities"] as? [JSON] else { return }
        for city in plistArray {
            let apend = CityData(name: city["Name"] as? String, codeCity: city["CityCode"] as? Int)
            cities.append(apend)
        }
    }
    
    func setDistrictsData() {
        guard let plistPath = Bundle.main.path(forResource: "Districts", ofType: "plist") else { return }
        guard let plistDict = NSDictionary(contentsOfFile: plistPath) as? JSON else { return }
        guard let plistArray = plistDict["Districts"] as? [JSON] else { return }
        for _districts in plistArray {
            let apend = DistrictsData(name: _districts["Name"] as? String, codeCity: _districts["CityCode"] as? Int, codeDistricts: _districts["DistrictCode"] as? Int)
            districts.append(apend)
        }
    }
    
    func plistSelecter(cityCode: Int) -> [DistrictsData] {
        setDistrictsData()
        var fileDistricts: [DistrictsData] = []
        for cound in districts {
            if cound.codeCity == cityCode {
                fileDistricts.append(cound)
            }
        }
        return fileDistricts
    }
}
