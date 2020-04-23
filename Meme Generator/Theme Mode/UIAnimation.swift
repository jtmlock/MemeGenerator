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

class UIAnimation {
        // @note: Function that animates an Imageview
        //
        // @param   imageview that will be animated
        static func animatedImages(imageview: UIImageView) {
            let currentYCoordinate: CGFloat = 34
            let DELAY : TimeInterval = 0
            let MAX_DURATION : TimeInterval = 1.0
            let FRAME_PNT : [TimeInterval] = [0.0, 0.2, 0.4, 0.8]
            let TRANSACTION_PNT : [CGFloat] = [10, 20]
            
            UIView.animateKeyframes(withDuration: MAX_DURATION, delay: DELAY, options: [], animations: {
                // Keyframe 1
                UIView.addKeyframe(withRelativeStartTime: FRAME_PNT[0], relativeDuration: FRAME_PNT[1],
                animations: {
                        // change location
                        imageview.frame.origin.y += TRANSACTION_PNT[0]
                })
                
                // Keyframe 2
                UIView.addKeyframe(withRelativeStartTime: FRAME_PNT[1], relativeDuration: FRAME_PNT[2],
                animations: {
                        // change location
                        imageview.frame.origin.y -= TRANSACTION_PNT[1]
                    })
                
                // Keyframe 3
                UIView.addKeyframe(withRelativeStartTime: FRAME_PNT[2], relativeDuration: FRAME_PNT[3],
                animations: {
                // change location
                    imageview.frame.origin.y = currentYCoordinate
                })
            },  completion: nil)
       }
}

/*
 official documentation
 src: https://developer.apple.com/documentation/uikit/uiview/1622451-animate
 src: https://developer.apple.com/documentation/uikit/uiview/1622552-animatekeyframes/
 */
/*
 src: https://stackoverflow.com/questions/43081055/best-way-to-execute-multiple-animations-synchronously/43081291
 */
