//
//  UIAnimation.swift
//  Meme Generator
//
//  Created by vagrant on 4/23/20.
//  Copyright © 2020 Mac. All rights reserved.
//
//  @author: Raul Rivero Rubio

import Foundation
import UIKit

// An container with the animate function paramaters
struct AnimateParams {
    var duration: TimeInterval
    var delay : TimeInterval
    var options : UIView.AnimationOptions = []
    
    init(duration: TimeInterval, delay: TimeInterval, options: UIView.AnimationOptions ) {
        self.duration = duration
        self.delay = delay
        self.options = options
    }
}

// An container with x and y for coordinates
struct Coordinates {
    var x: CGFloat
    var y: CGFloat
    
    init(xcoord: CGFloat, ycoord: CGFloat) {
        self.x = xcoord
        self.y = ycoord
    }
}

// official documentation
/* src: https://developer.apple.com/documentation/swift/dictionary
    src: https://docs.swift.org/swift-book/LanguageGuide/Initialization.html
 */

class UIAnimation {
        // @note: Function that animates an Imageview
        //
        // @param   imageview that will be animated
        // @param   params      An container with the animate function paramaters
        // @param   coord       An container with x and y for coordinates
        //
        // @return      The state of the function completion. true -> complete,
        //                                                    false -> incomplete
        static func animatedImages(imageview: UIImageView, params: AnimateParams, coord: Coordinates) -> Bool {
            var completed = false       // flag animation being completed
            
            // Animation process
            UIView.animate(withDuration: params.duration, delay: params.delay, options: params.options, animations: {
                // change location
                imageview.frame.origin.y = coord.y
            }, completion: {(finished: Bool) in
                completed = finished
            })
            return completed
       }
}

/*
 official documentation
 src: https://developer.apple.com/documentation/uikit/uiview/1622451-animate */
