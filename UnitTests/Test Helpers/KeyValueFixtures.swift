//
//  KeyValueFixtures.swift
//  UnitTests
//
//  Created by Matthew Lorentz on 1/19/22.
//  Copyright © 2022 Verse Communications Inc. All rights reserved.
//

import Foundation

/// Easy access to `KeyValue` data for testing.
struct KeyValueFixtures {
    static let keyValueWithReceivedSeq = keyValue(fromFixture: "KeyValueWithReceivedSeq.json")
    
    static func keyValue(author: Identity) -> KeyValue {
        return KeyValue(
            key: Identifier("TestPostId=.ed25519"),
            value: Value(
                author: author,
                content: Content(from: Post(text: "post")),
                hash: "hash",
                previous: nil,
                sequence: 0,
                signature: Identifier("signature"),
                timestamp: 2684029486000 // 2055
            ),
            timestamp: 2684029486000, // 2055
            receivedSeq: 55555,
            hashedKey: "hashedKey"
        )
    }
    
    static var bigTextPost: KeyValue {
        let bigText = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Et molestie ac feugiat sed lectus vestibulum mattis ullamcorper. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus in. Cras tincidunt lobortis feugiat vivamus at augue eget arcu dictum. Interdum velit euismod in pellentesque massa placerat duis. Maecenas ultricies mi eget mauris pharetra et ultrices neque. Ipsum dolor sit amet consectetur adipiscing elit ut aliquam. Fringilla ut morbi tincidunt augue interdum velit. Volutpat est velit egestas dui id. Mattis rhoncus urna neque viverra justo. Et pharetra pharetra massa massa. Aenean sed adipiscing diam donec adipiscing tristique. Ultricies tristique nulla aliquet enim tortor at auctor urna. Nisi quis eleifend quam adipiscing vitae proin sagittis. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Urna neque viverra justo nec ultrices dui sapien eget. Sagittis id consectetur purus ut.

        Parturient montes nascetur ridiculus mus mauris vitae ultricies leo integer. Etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus. Purus sit amet volutpat consequat mauris nunc congue. Sed egestas egestas fringilla phasellus faucibus. Porttitor eget dolor morbi non. Lectus urna duis convallis convallis tellus id. Lectus vestibulum mattis ullamcorper velit sed ullamcorper. Vel orci porta non pulvinar neque laoreet suspendisse. Semper viverra nam libero justo laoreet sit amet cursus. Eget mi proin sed libero enim sed faucibus turpis in. Congue nisi vitae suscipit tellus mauris a diam maecenas. Commodo quis imperdiet massa tincidunt nunc pulvinar sapien et ligula. Quisque id diam vel quam. Sed blandit libero volutpat sed cras ornare arcu dui. Dolor morbi non arcu risus quis. Accumsan lacus vel facilisis volutpat est velit egestas dui id.

        Nibh ipsum consequat nisl vel pretium. Egestas sed tempus urna et pharetra pharetra massa. Libero justo laoreet sit amet cursus sit amet dictum. Bibendum est ultricies integer quis. Laoreet non curabitur gravida arcu ac tortor dignissim convallis. Et netus et malesuada fames ac turpis egestas integer eget. Volutpat odio facilisis mauris sit. Donec et odio pellentesque diam volutpat. Nibh praesent tristique magna sit amet. Tincidunt vitae semper quis lectus nulla at volutpat diam ut. Turpis tincidunt id aliquet risus. Parturient montes nascetur ridiculus mus. In egestas erat imperdiet sed euismod. Vivamus arcu felis bibendum ut tristique et egestas.

        Eu non diam phasellus vestibulum lorem sed risus. Id venenatis a condimentum vitae sapien pellentesque habitant morbi tristique. Sit amet volutpat consequat mauris nunc congue nisi vitae. Gravida arcu ac tortor dignissim. Integer feugiat scelerisque varius morbi enim nunc faucibus a pellentesque. Magnis dis parturient montes nascetur ridiculus mus mauris. Egestas congue quisque egestas diam. Suspendisse interdum consectetur libero id. Et egestas quis ipsum suspendisse ultrices gravida dictum. Ipsum dolor sit amet consectetur adipiscing elit ut aliquam.

        Nisl nunc mi ipsum faucibus vitae aliquet nec. Vel elit scelerisque mauris pellentesque pulvinar pellentesque. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec. Ut enim blandit volutpat maecenas volutpat blandit aliquam. Vitae justo eget magna fermentum. Tristique senectus et netus et malesuada fames ac. At risus viverra adipiscing at in tellus integer feugiat scelerisque. Sit amet mauris commodo quis. Sem viverra aliquet eget sit. Nulla pellentesque dignissim enim sit amet venenatis urna. Id semper risus in hendrerit gravida. Augue mauris augue neque gravida in fermentum et sollicitudin ac. Ut faucibus pulvinar elementum integer. In metus vulputate eu scelerisque. Morbi quis commodo odio aenean sed. Est pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat. Pulvinar proin gravida hendrerit lectus.
        """
        
        return KeyValue(
            key: Identifier("TestPostId=.ed25519"),
            value: Value(
                author: "TestAuthor=.ed25519",
                content: Content(from: Post(text: bigText)),
                hash: "hash",
                previous: nil,
                sequence: 0,
                signature: Identifier("signature"),
                timestamp: 2684029486000 // 2055
            ),
            timestamp: 2684029486000, // 2055
            receivedSeq: 55555,
            hashedKey: "hashedKey"
        )
    }
    
    // Convenience func to load and return JSON resource file as Data.
    static func keyValue(fromFixture jsonResourceName: String) -> KeyValue {
        let url = Bundle.current.url(forResource: jsonResourceName, withExtension: nil)!
        let data = try! Data(contentsOf: url)
        return try! JSONDecoder().decode(KeyValue.self, from: data)
    }
}
