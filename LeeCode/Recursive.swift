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
}
