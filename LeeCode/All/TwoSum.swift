//
//  TwoSum.swift
//  LeeCode
//
//  Created by DerekYang on 2019/7/26.
//  Copyright © 2019 DKY. All rights reserved.
//

//Given an array of integers, return indices of the two numbers such that they add up to a specific target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//Example:
//
//Given nums = [2, 7, 11, 15], target = 9,
//
//Because nums[0] + nums[1] = 2 + 7 = 9,
//return [0, 1].

import Foundation

class TwoSum {
	//	Time complexity : O(n^2)
	//	Space complexity : O(1)
	func bruteForce(_ nums: [Int], _ target: Int) -> [Int] {
		for i in 0 ..< nums.count {
			for j in i+1 ..< nums.count {
				if(nums[j] == (target - nums[i])) {
					return [i,j]
				}
			}
		}
		return [Int]()
	}
	
	//	Time complexity : O(n)
	//	Space complexity : O(n)
	func twoPassHash(_ nums: [Int], _ target: Int) -> [Int] {
		var dict = [Int : Int]()//[Value : Index]
		for i in 0 ..< nums.count {
			dict[nums[i]] = i
		}
		for i in 0 ..< nums.count {
			let complement = target - nums[i]
			if let index = dict[complement],
			index != i {
				return [i, index]
			}
		}
		return [Int]()
	}
	
	//	Time complexity : O(n)
	//	Space complexity : O(n)
	func onePassHash(_ nums: [Int], _ target: Int) -> [Int] {
		var dict = [Int : Int]()//[Value : Index]
		for i in 0 ..< nums.count {
			let complement = target - nums[i]
			if let index = dict[complement] {
				return [index, i]
			}
			dict[nums[i]] = i
		}
		return [Int]()
	}
}
