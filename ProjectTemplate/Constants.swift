//
//  Constants.swift
//  POPPY
//
//  Created by Naresh Reddy Yadulla on 05/10/15.
//  Copyright © 2015 Menlo. All rights reserved.
//

import Foundation

#if DEBUG
    
let BASE_URL = "https://status.github.com/"
let test = "debug"
    
#else

let BASE_URL = "https://status.github.com/"
let test  = "release"
    
#endif
