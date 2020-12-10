//
//  RCSwitchState.swift
//  RCSwitch
//
//  Created by Rahul Chopra on 03/12/20.
//  Copyright © 2020 Rahul Chopra. All rights reserved.
//

import Foundation
import UIKit

struct RCSwitchPartState {
    var backMaskFrame: CGRect = .zero
}

struct RCSwitchState {
    var backgroundColor: UIColor = .clear
    var circleFrame: CGRect = .zero
    var leftPartState  = RCSwitchPartState()
    var rightPartState = RCSwitchPartState()
}
