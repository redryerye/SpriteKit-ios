//
//  SKSpriteNode+AspectFill.swift
//  SpriteKit-demo
//
//  Created by Yuki Yamamoto on 2019/02/07.
//  Copyright © 2019 Yuki Yamamoto. All rights reserved.
//

import Foundation
import SpriteKit

extension SKSpriteNode {
    
    func aspectFillToSize(fillSize: CGSize) {
        
        if texture != nil {
            self.size = texture!.size()
            
            let verticalRatio = fillSize.height / self.texture!.size().height
            let horizontalRatio = fillSize.width /  self.texture!.size().width
            
            let scaleRatio = horizontalRatio > verticalRatio ? horizontalRatio : verticalRatio
            
            self.setScale(scaleRatio)
        }
    }
    
}
