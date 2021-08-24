// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class GetAllFreaksQuery: GraphQLQuery {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
        """
        query GetAllFreaks {
          freaks {
            __typename
            edges {
              __typename
              node {
                __typename
                id
                firstName
                lastName
                description
                level {
                  __typename
                  name
                }
                norm {
                  __typename
                  name
                }
                role {
                  __typename
                  name
                }
                photo {
                  __typename
                  uri
                }
              }
            }
          }
        }
        """

    public let operationName: String = "GetAllFreaks"

    public init() {}

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Query"]

        public static var selections: [GraphQLSelection] {
            [
                GraphQLField("freaks", type: .nonNull(.object(Freak.selections))),
            ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
            resultMap = unsafeResultMap
        }

        public init(freaks: Freak) {
            self.init(unsafeResultMap: ["__typename": "Query", "freaks": freaks.resultMap])
        }

        public var freaks: Freak {
            get {
                Freak(unsafeResultMap: resultMap["freaks"]! as! ResultMap)
            }
            set {
                resultMap.updateValue(newValue.resultMap, forKey: "freaks")
            }
        }

        public struct Freak: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["FreakConnection"]

            public static var selections: [GraphQLSelection] {
                [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("edges", type: .list(.object(Edge.selections))),
                ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
                resultMap = unsafeResultMap
            }

            public init(edges: [Edge?]? = nil) {
                self.init(unsafeResultMap: ["__typename": "FreakConnection", "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
            }

            public var __typename: String {
                get {
                    resultMap["__typename"]! as! String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                }
            }

            /// A list of edges.
            public var edges: [Edge?]? {
                get {
                    (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
                }
                set {
                    resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
                }
            }

            public struct Edge: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["FreakEdge"]

                public static var selections: [GraphQLSelection] {
                    [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("node", type: .object(Node.selections)),
                    ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                    resultMap = unsafeResultMap
                }

                public init(node: Node? = nil) {
                    self.init(unsafeResultMap: ["__typename": "FreakEdge", "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
                }

                public var __typename: String {
                    get {
                        resultMap["__typename"]! as! String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                    }
                }

                /// The item at the end of the edge.
                public var node: Node? {
                    get {
                        (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
                    }
                    set {
                        resultMap.updateValue(newValue?.resultMap, forKey: "node")
                    }
                }

                public struct Node: GraphQLSelectionSet {
                    public static let possibleTypes: [String] = ["Freak"]

                    public static var selections: [GraphQLSelection] {
                        [
                            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                            GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
                            GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
                            GraphQLField("description", type: .nonNull(.scalar(String.self))),
                            GraphQLField("level", type: .nonNull(.object(Level.selections))),
                            GraphQLField("norm", type: .nonNull(.object(Norm.selections))),
                            GraphQLField("role", type: .nonNull(.object(Role.selections))),
                            GraphQLField("photo", type: .object(Photo.selections)),
                        ]
                    }

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                        resultMap = unsafeResultMap
                    }

                    public init(id: GraphQLID, firstName: String, lastName: String, description: String, level: Level, norm: Norm, role: Role, photo: Photo? = nil) {
                        self.init(unsafeResultMap: ["__typename": "Freak", "id": id, "firstName": firstName, "lastName": lastName, "description": description, "level": level.resultMap, "norm": norm.resultMap, "role": role.resultMap, "photo": photo.flatMap { (value: Photo) -> ResultMap in value.resultMap }])
                    }

                    public var __typename: String {
                        get {
                            resultMap["__typename"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var id: GraphQLID {
                        get {
                            resultMap["id"]! as! GraphQLID
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "id")
                        }
                    }

                    public var firstName: String {
                        get {
                            resultMap["firstName"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "firstName")
                        }
                    }

                    public var lastName: String {
                        get {
                            resultMap["lastName"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "lastName")
                        }
                    }

                    public var description: String {
                        get {
                            resultMap["description"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "description")
                        }
                    }

                    public var level: Level {
                        get {
                            Level(unsafeResultMap: resultMap["level"]! as! ResultMap)
                        }
                        set {
                            resultMap.updateValue(newValue.resultMap, forKey: "level")
                        }
                    }

                    public var norm: Norm {
                        get {
                            Norm(unsafeResultMap: resultMap["norm"]! as! ResultMap)
                        }
                        set {
                            resultMap.updateValue(newValue.resultMap, forKey: "norm")
                        }
                    }

                    public var role: Role {
                        get {
                            Role(unsafeResultMap: resultMap["role"]! as! ResultMap)
                        }
                        set {
                            resultMap.updateValue(newValue.resultMap, forKey: "role")
                        }
                    }

                    public var photo: Photo? {
                        get {
                            (resultMap["photo"] as? ResultMap).flatMap { Photo(unsafeResultMap: $0) }
                        }
                        set {
                            resultMap.updateValue(newValue?.resultMap, forKey: "photo")
                        }
                    }

                    public struct Level: GraphQLSelectionSet {
                        public static let possibleTypes: [String] = ["Level"]

                        public static var selections: [GraphQLSelection] {
                            [
                                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                                GraphQLField("name", type: .nonNull(.scalar(String.self))),
                            ]
                        }

                        public private(set) var resultMap: ResultMap

                        public init(unsafeResultMap: ResultMap) {
                            resultMap = unsafeResultMap
                        }

                        public init(name: String) {
                            self.init(unsafeResultMap: ["__typename": "Level", "name": name])
                        }

                        public var __typename: String {
                            get {
                                resultMap["__typename"]! as! String
                            }
                            set {
                                resultMap.updateValue(newValue, forKey: "__typename")
                            }
                        }

                        public var name: String {
                            get {
                                resultMap["name"]! as! String
                            }
                            set {
                                resultMap.updateValue(newValue, forKey: "name")
                            }
                        }
                    }

                    public struct Norm: GraphQLSelectionSet {
                        public static let possibleTypes: [String] = ["Norm"]

                        public static var selections: [GraphQLSelection] {
                            [
                                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                                GraphQLField("name", type: .nonNull(.scalar(String.self))),
                            ]
                        }

                        public private(set) var resultMap: ResultMap

                        public init(unsafeResultMap: ResultMap) {
                            resultMap = unsafeResultMap
                        }

                        public init(name: String) {
                            self.init(unsafeResultMap: ["__typename": "Norm", "name": name])
                        }

                        public var __typename: String {
                            get {
                                resultMap["__typename"]! as! String
                            }
                            set {
                                resultMap.updateValue(newValue, forKey: "__typename")
                            }
                        }

                        public var name: String {
                            get {
                                resultMap["name"]! as! String
                            }
                            set {
                                resultMap.updateValue(newValue, forKey: "name")
                            }
                        }
                    }

                    public struct Role: GraphQLSelectionSet {
                        public static let possibleTypes: [String] = ["Role"]

                        public static var selections: [GraphQLSelection] {
                            [
                                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                                GraphQLField("name", type: .nonNull(.scalar(String.self))),
                            ]
                        }

                        public private(set) var resultMap: ResultMap

                        public init(unsafeResultMap: ResultMap) {
                            resultMap = unsafeResultMap
                        }

                        public init(name: String) {
                            self.init(unsafeResultMap: ["__typename": "Role", "name": name])
                        }

                        public var __typename: String {
                            get {
                                resultMap["__typename"]! as! String
                            }
                            set {
                                resultMap.updateValue(newValue, forKey: "__typename")
                            }
                        }

                        public var name: String {
                            get {
                                resultMap["name"]! as! String
                            }
                            set {
                                resultMap.updateValue(newValue, forKey: "name")
                            }
                        }
                    }

                    public struct Photo: GraphQLSelectionSet {
                        public static let possibleTypes: [String] = ["Photo"]

                        public static var selections: [GraphQLSelection] {
                            [
                                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                                GraphQLField("uri", type: .nonNull(.scalar(String.self))),
                            ]
                        }

                        public private(set) var resultMap: ResultMap

                        public init(unsafeResultMap: ResultMap) {
                            resultMap = unsafeResultMap
                        }

                        public init(uri: String) {
                            self.init(unsafeResultMap: ["__typename": "Photo", "uri": uri])
                        }

                        public var __typename: String {
                            get {
                                resultMap["__typename"]! as! String
                            }
                            set {
                                resultMap.updateValue(newValue, forKey: "__typename")
                            }
                        }

                        public var uri: String {
                            get {
                                resultMap["uri"]! as! String
                            }
                            set {
                                resultMap.updateValue(newValue, forKey: "uri")
                            }
                        }
                    }
                }
            }
        }
    }
}

public final class FreaksQuery: GraphQLQuery {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
        """
        query Freaks {
          freaks {
            __typename
            edges {
              __typename
              node {
                __typename
                id
                firstName
                photo {
                  __typename
                  uri
                }
              }
            }
          }
        }
        """

    public let operationName: String = "Freaks"

    public init() {}

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Query"]

        public static var selections: [GraphQLSelection] {
            [
                GraphQLField("freaks", type: .nonNull(.object(Freak.selections))),
            ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
            resultMap = unsafeResultMap
        }

        public init(freaks: Freak) {
            self.init(unsafeResultMap: ["__typename": "Query", "freaks": freaks.resultMap])
        }

        public var freaks: Freak {
            get {
                Freak(unsafeResultMap: resultMap["freaks"]! as! ResultMap)
            }
            set {
                resultMap.updateValue(newValue.resultMap, forKey: "freaks")
            }
        }

        public struct Freak: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["FreakConnection"]

            public static var selections: [GraphQLSelection] {
                [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("edges", type: .list(.object(Edge.selections))),
                ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
                resultMap = unsafeResultMap
            }

            public init(edges: [Edge?]? = nil) {
                self.init(unsafeResultMap: ["__typename": "FreakConnection", "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
            }

            public var __typename: String {
                get {
                    resultMap["__typename"]! as! String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                }
            }

            /// A list of edges.
            public var edges: [Edge?]? {
                get {
                    (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
                }
                set {
                    resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
                }
            }

            public struct Edge: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["FreakEdge"]

                public static var selections: [GraphQLSelection] {
                    [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("node", type: .object(Node.selections)),
                    ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                    resultMap = unsafeResultMap
                }

                public init(node: Node? = nil) {
                    self.init(unsafeResultMap: ["__typename": "FreakEdge", "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
                }

                public var __typename: String {
                    get {
                        resultMap["__typename"]! as! String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                    }
                }

                /// The item at the end of the edge.
                public var node: Node? {
                    get {
                        (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
                    }
                    set {
                        resultMap.updateValue(newValue?.resultMap, forKey: "node")
                    }
                }

                public struct Node: GraphQLSelectionSet {
                    public static let possibleTypes: [String] = ["Freak"]

                    public static var selections: [GraphQLSelection] {
                        [
                            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                            GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
                            GraphQLField("photo", type: .object(Photo.selections)),
                        ]
                    }

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                        resultMap = unsafeResultMap
                    }

                    public init(id: GraphQLID, firstName: String, photo: Photo? = nil) {
                        self.init(unsafeResultMap: ["__typename": "Freak", "id": id, "firstName": firstName, "photo": photo.flatMap { (value: Photo) -> ResultMap in value.resultMap }])
                    }

                    public var __typename: String {
                        get {
                            resultMap["__typename"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var id: GraphQLID {
                        get {
                            resultMap["id"]! as! GraphQLID
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "id")
                        }
                    }

                    public var firstName: String {
                        get {
                            resultMap["firstName"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "firstName")
                        }
                    }

                    public var photo: Photo? {
                        get {
                            (resultMap["photo"] as? ResultMap).flatMap { Photo(unsafeResultMap: $0) }
                        }
                        set {
                            resultMap.updateValue(newValue?.resultMap, forKey: "photo")
                        }
                    }

                    public struct Photo: GraphQLSelectionSet {
                        public static let possibleTypes: [String] = ["Photo"]

                        public static var selections: [GraphQLSelection] {
                            [
                                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                                GraphQLField("uri", type: .nonNull(.scalar(String.self))),
                            ]
                        }

                        public private(set) var resultMap: ResultMap

                        public init(unsafeResultMap: ResultMap) {
                            resultMap = unsafeResultMap
                        }

                        public init(uri: String) {
                            self.init(unsafeResultMap: ["__typename": "Photo", "uri": uri])
                        }

                        public var __typename: String {
                            get {
                                resultMap["__typename"]! as! String
                            }
                            set {
                                resultMap.updateValue(newValue, forKey: "__typename")
                            }
                        }

                        public var uri: String {
                            get {
                                resultMap["uri"]! as! String
                            }
                            set {
                                resultMap.updateValue(newValue, forKey: "uri")
                            }
                        }
                    }
                }
            }
        }
    }
}
