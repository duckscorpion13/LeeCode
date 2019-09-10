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
//		let sum = TwoSum()
//		print(sum.onePassHash([1,3,5,7,9], 12))
//		let lon = LongSubNoRepeat()
//		print(lon.slidWindowOpt("hfdshfuhnhhhfsdgghdf"))
		do {
			let pattern = "[0-9]"//".*:(\\d\\d).+"
			let str = "2014-10-29T20:44:00"
			let regex = try NSRegularExpression(pattern: pattern)
			let range = NSRange(location: 0, length: str.utf16.count)
			let matches = regex.matches(in: str, options: [], range: range)

			let strs = matches.map {	a -> String? in
				if let range = str.range(from: a.range) {
					return String(str[range])
				}
				return nil
			}
			print(strs)
//			let result = regex.stringByReplacingMatches(in: str, options: [], range: range, withTemplate: "$1$2")
//			print(result)
		} catch let e {
			print(e.localizedDescription)
		}
	}

	@IBAction func btnTap(_ sender: UIButton) {
		sender.tag += 1
		let title = (sender.tag%2 == 0) ? "Button2" : "Button3"
//		let title = sender.title(for: .normal) ?? "A"
		sender.setTitle(title, for: .normal)
//		sender.accessibilityIdentifier = title
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

extension String {
	func range(from nsRange: NSRange) -> Range<String.Index>? {
		guard
			let from16 = utf16.index(utf16.startIndex, offsetBy: nsRange.location,
									 limitedBy: utf16.endIndex),
			let to16 = utf16.index(from16, offsetBy: nsRange.length,
								   limitedBy: utf16.endIndex),
			let from = String.Index(from16, within: self),
			let to = String.Index(to16, within: self)
			else { return nil }
		return from ..< to
	}
}
