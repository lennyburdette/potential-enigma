// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class DragonsQuery: GraphQLQuery {
  public static let operationName: String = "Dragons"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query Dragons {
        dragons {
          __typename
          name
          first_flight
          diameter {
            __typename
            feet
          }
          launch_payload_mass {
            __typename
            lb
          }
        }
      }
      """#
    ))

  public init() {}

  public struct Data: SpaceX.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { SpaceX.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("dragons", [Dragon?]?.self),
    ] }

    public var dragons: [Dragon?]? { __data["dragons"] }

    /// Dragon
    ///
    /// Parent Type: `Dragon`
    public struct Dragon: SpaceX.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { SpaceX.Objects.Dragon }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("name", String?.self),
        .field("first_flight", String?.self),
        .field("diameter", Diameter?.self),
        .field("launch_payload_mass", Launch_payload_mass?.self),
      ] }

      public var name: String? { __data["name"] }
      public var first_flight: String? { __data["first_flight"] }
      public var diameter: Diameter? { __data["diameter"] }
      public var launch_payload_mass: Launch_payload_mass? { __data["launch_payload_mass"] }

      /// Dragon.Diameter
      ///
      /// Parent Type: `Distance`
      public struct Diameter: SpaceX.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SpaceX.Objects.Distance }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("feet", Double?.self),
        ] }

        public var feet: Double? { __data["feet"] }
      }

      /// Dragon.Launch_payload_mass
      ///
      /// Parent Type: `Mass`
      public struct Launch_payload_mass: SpaceX.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SpaceX.Objects.Mass }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("lb", Int?.self),
        ] }

        public var lb: Int? { __data["lb"] }
      }
    }
  }
}
