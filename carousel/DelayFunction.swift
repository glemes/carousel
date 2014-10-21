//
//  DelayFunction.swift
//  carousel
//
//  Created by Giovana Lemes on 10/20/14.
//  Copyright (c) 2014 Giovana Lemes. All rights reserved.
//

import Foundation

func delay(delay:Double, closure:()->()) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}
