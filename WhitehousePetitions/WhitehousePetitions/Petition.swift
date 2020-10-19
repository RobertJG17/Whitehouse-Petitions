//
//  Petition.swift
//  WhitehousePetitions
//
//  Created by Robert Guerra on 7/21/20.
//  Copyright © 2020 Robert Guerra. All rights reserved.
//

import UIKit

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}
