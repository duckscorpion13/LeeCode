//
//  LongSubNoRepeat.swift
//  LeeCode
//
//  Created by DerekYang on 2019/7/29.
//  Copyright © 2019 DKY. All rights reserved.
//

//Given a string, find the length of the longest substring without repeating characters.
//
//Example 1:
//
//Input: "abcabcbb"
//Output: 3
//Explanation: The answer is "abc", with the length of 3.
//Example 2:
//
//Input: "bbbbb"
//Output: 1
//Explanation: The answer is "b", with the length of 1.
//Example 3:
//
//Input: "pwwkew"
//Output: 3
//Explanation: The answer is "wke", with the length of 3.
//Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

import Foundation





class LongSubNoRepeat {
	

	//	Time complexity : O(n^3)
	//	Space complexity : O(min(n, m)), The size of the Set is upper bounded by the size of the string nn and the size of the charset/alphabet mm.
	func bruteForce(_ str: String) -> Int {
		let n = str.count
		var ans = 0
		for i in 0 ..< n {
			for  j in (i+1) ... n {
				if (allUnique(str, start: i, end: j)) {
					ans = max(ans, j - i)
				}
			}
		}
		return ans
	}
	
	fileprivate func allUnique(_ str: String, start: Int, end: Int) -> Bool {
		var set = Set<Character>()
		for i in start ..< end {
			let ch = str[i]
			if (set.contains(ch)) {
				return false
			}
			set.insert(ch)
		}
		return true
	}
	
	//	Time complexity : O(2n) = O(n)
	//	Space complexity : O(min(m, n))
	func slidWindow(_ str: String) -> Int {
		let n = str.count
		var set = Set<Character>()
		var ans = 0, i = 0, j = 0
		while (i < n && j < n) {
			// try to extend the range [i, j]
			if (!set.contains(str[j])) {
				set.insert(str[j])
				j += 1
				ans = max(ans, j - i);
			} else {
				set.remove(str[i])
				i += 1
			}
		}
		return ans
	}
	
	
	//	Time complexity : O(n)
	//	Space complexity : O(min(m, n))
	func slidWindowOpt(_ str: String) -> Int {
		let n = str.count
		var ans = 0
		var dict = [Character : Int]() // current index of character
		// try to extend the range [i, j]
		var i = 0
		for j in 0 ..< n {
			if let index = dict[str[j]] {
				i = max(index, i)
			}
			ans = max(ans, j - i + 1)
			dict[str[j]] = j + 1
		}
		return ans
	}
	
}

extension String {
	subscript (i: Int) -> Character {
		return self[index(startIndex, offsetBy: i)]
	}
}
