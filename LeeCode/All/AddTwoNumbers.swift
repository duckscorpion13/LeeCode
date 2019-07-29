//
//  AddTwoNumbers.swift
//  LeeCode
//
//  Created by DerekYang on 2019/7/26.
//  Copyright © 2019 DKY. All rights reserved.
//

//You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
//
//You may assume the two numbers do not contain any leading zero, except the number 0 itself.
//
//Example:
//
//Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
//Output: 7 -> 0 -> 8
//Explanation: 342 + 465 = 807.

import Foundation

//* Definition for singly-linked list.
class ListNode {
	var val: Int
	var next: ListNode?
	
	init(_ val: Int) {
		self.val = val
		self.next = nil
	}
}


class AddTwoNumbers {
	//	Time complexity : O(max(m, n)), m & n represents the length of l1 & l2
	//	Space complexity : O(max(m, n))
	func elementaryMath(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
		let dummyHead = ListNode(0)
		var p = l1, q = l2, curr = dummyHead
		var carry = 0
		while ( p != nil || q != nil) {
			let x = p?.val ?? 0
			let y = q?.val ?? 0
			let sum = carry + x + y
			carry = sum / 10
			curr.next = ListNode(sum % 10)
			if let next = curr.next {
				curr = next
			}
			
			p = p?.next
			
			q = q?.next
			
		}
		if (carry > 0) {
			curr.next = ListNode(carry)
		}
		
		return dummyHead.next
	}
}
