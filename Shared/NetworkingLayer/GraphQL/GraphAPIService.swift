import Apollo
import Foundation

class Network {
    static let shared = Network()
    lazy var apollo = ApolloClient(url: URL(string: "https://freaks-catalog.herokuapp.com/graphql")!)

    func getAllFreaks(completionHandler: @escaping ([Freak], Error?) -> Void) {
        apollo.fetch(query: GetAllFreaksQuery()) { result in
            switch result {
            case let .success(graphQLResult):
                guard let queryResult = graphQLResult.data?.freaks else {
                    return
                }
                let nodes = queryResult.nodes
                let freaks = nodes?.compactMap { Freak(freakNode: $0!) }
                completionHandler(freaks ?? [], nil)
            case let .failure(error):
                completionHandler([], error)
            }
        }
    }
}
