import Foundation

public enum HTTPResponseResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPResponseResult) -> Void)
}
