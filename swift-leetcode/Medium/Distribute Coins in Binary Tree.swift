//
//  Distribute Coins in Binary Tree.swift
//  swift-leetcode
//
//  Created by Q YiZhong on 2019/3/3.
//  Copyright © 2019 YiZhong Qi. All rights reserved.
//

import Foundation

var moveCount = 0

func distributeCoins(_ root: TreeNode?) -> Int {
    _ = conisDfs(root)
    return moveCount
}

func conisDfs(_ root: TreeNode?) -> Int {
    guard root != nil else {
        return 0
    }
    let left = conisDfs(root?.left)
    let right = conisDfs(root?.right)
    
    moveCount += abs(left) + abs(right)
    return root!.val + left + right - 1
}
