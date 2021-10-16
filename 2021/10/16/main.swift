//
//  main.swift
//  LeetCode01TwoNumAdd
//
//  Created by LongDengYu on 2021/10/16.
//

import Foundation


/*
    暴力求解
 提交结果    执行用时    内存消耗    语言    提交时间    备注
 通过         80 ms    13.9 MB    Swift
 
 */
class Solution {
    static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count{
            for j in (i + 1)..<nums.count{
                if(nums[i] + nums[j] == target){
                    return [i,j]
                }
            }
        }
        return [0 ,0]
    }
}

//print(Solution.twoSum([2,7,11,15], 9))

/*
 
 查找表法  数据结构HashMap
 
 */
class Solution2 {
    static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map: Dictionary<Int,Int> = [:]
        map[nums[0]] = 0
        for i in 1..<nums.count{
            let anther:Int = target - nums[i]
            if map[anther] != nil{
                return [map[anther]!,i]
            }
            map[nums[i]] = i
        }
        return [0 ,0]
    }
}
//print(Solution2.twoSum([2,7,11,15], 9))
//var test = ["name":"xixi","age":"18"]
//print(test["name"]!)
//print(test["sex"])

class Solution3 {
    static func reverse(_ x: Int) -> Int {
        var num = x
        var temp = 0
        var result = 0
        while(num != 0){
            temp = num % 10
            num /= 10
            result = result * 10 + temp
        }
        if Int64(result) <= Int32.min || Int64(result) >= Int32.max{
            return 0
        }
        return result
    }
}

//print(Solution3.reverse(1534236469))
////print(Int32.min)
////print(Int32.max)
////print(Int64.max)
//if Int64(9646324351) >= Int32.max{
//    print("yes")
//}else{
//    print("no")
//}

class Solution4 {
    static func isPalindrome(_ x: Int) -> Bool {
        if x < 0{
            return false
        }
        var result = 0
        var num = x
        while num != 0{
            result = result * 10 + num % 10
            num /= 10
        }
        
        return result == x
    }
}

print(Solution4.isPalindrome(121))
