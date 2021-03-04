//
//  RequestError.swift
//  BikeShare
//

import Foundation

enum RequestError: Error {
    case invalidUrl
    case undefined
}

extension RequestError: LocalizedError {
    private enum LocalizedUIText {
        static let invalidUrl = NSLocalizedString(
            "RequestError.invalidUrl",
            value: "Seemed to be an issue, please try again later",
            comment: "An invalid url was passed"
        )
        static let undefined = NSLocalizedString(
            "RequestError.undefined",
            value: "Seemed to be an issue, please try later",
            comment: "No error nor data came back and we are just left with some sort of undefined state"
        )
    }

    var errorDescription: String? {
        switch self {
        case .invalidUrl:
            return LocalizedUIText.invalidUrl
        case .undefined:
            return LocalizedUIText.undefined
        }
    }
}

