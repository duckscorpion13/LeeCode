//
//  ViewController.swift
//  LeeCode
//
//  Created by DerekYang on 2019/7/26.
//  Copyright © 2019 DKY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
	}


	func testTwoSum() {
		let twoSum = AddTwoNumbers()
		let la1 = ListNode(7)
		let la2 = ListNode(3)
		let la3 = ListNode(8)
		la1.next = la2
		la2.next = la3
		
		let lb1 = ListNode(5)
		let lb2 = ListNode(9)
		let lb3 = ListNode(6)
		lb1.next = lb2
		lb2.next = lb3
		
		if let result = twoSum.elementaryMath(la1, lb1) {
			var curr: ListNode? = result
			while(curr != nil) {
				if let value = curr?.val {
					print(value)
				}
				curr = curr?.next
			}
		}
	}
}

