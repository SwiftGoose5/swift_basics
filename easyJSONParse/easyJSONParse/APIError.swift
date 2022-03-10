//
//  APIError.swift
//  easyJSONParse
//
//  Created by Elliot Giese on 3/10/22.
//

import Foundation

enum APIError: Error {
    case invalidURL
    case invalidServerResponse
    case invalidData
}

extension APIError: CustomStringConvertible {
    public var description: String {
        switch self {
        case .invalidURL:
            return "Bad URL"
        case .invalidServerResponse:
            return "The server did not return 200"
        case .invalidData:
            return "The server returned bad data"
        }
    }
}
