//
//  Recursive.swift
//  recursive
//
//  Created by DerekYang on 2019/12/4.
//  Copyright © 2019 DKY. All rights reserved.
//

import Foundation

class Recursive {
	class func fibonacci(_ n: Int, result: Int = 1, next: Int = 1) -> Int {
		return  (n <= 1) ? result : fibonacci(n-1, result: next, next: result + next)
	}
	
	class func factorial(_ n: Int, result: Int = 1) -> Int {
		return  (n <= 1) ? result : factorial(n-1, result: n * result)
	}
	
	class func  hannoi(_ n: Int, from: String, buffer: String, to: String) {
		if n == 0 {
			return
		} else {
			hannoi(n - 1, from: from, buffer: to, to: buffer)
			print("Move disk \(n) from \(from) to \(to)")
			hannoi(n - 1, from: buffer, buffer: from, to: to)
		}
	}
}
