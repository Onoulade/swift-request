//
//  File.swift
//  
//
//  Created by Carson Katri on 6/30/19.
//

import Foundation

/// Sets the URL of the `Request`.
/// - Precondition: Only use one URL in your `Request`. To group or chain requests, use a `RequestGroup` or `RequestChain`.
public struct Url: RequestParam {
    public var type: RequestParamType = .url
    public var key: String? = nil
    public var value: Any?
    public var children: [RequestParam]? = nil
    
    public init(_ value: String) {
        self.value = value
    }
    
    public init(`protocol` type: ProtocolType, url: String) {
        self.value = "\(type.rawValue)://\(url)"
    }
}
