import Apollo
import Foundation

class Network {
    static let shared = Network()
    lazy var apollo = ApolloClient(url: URL(string: "https://freaks-catalog.herokuapp.com/graphql")!)

    func getAllFreaks(completionHandler: @escaping (FreakItem, Error?) -> Void) {
        apollo.fetch(query: GetAllFreaksQuery()) { result in
            switch result {
            case let .success(graphQLResult):
                guard let queryResult = graphQLResult.data?.freaks else {
                    return
                }
                completionHandler(queryResult, nil)
            case let .failure(error):
                print("Failure! Error: \(error)")
            }
        }
    }
}
