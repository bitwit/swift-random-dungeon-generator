import Foundation
import SpriteKit

public protocol DungeonRoom: class {
    var rect: Rect { get set }
    init(rect: Rect)
}

public protocol DungeonHallway: class {
    var points: [Point] { get set }
    var rects: [Rect] { get set }
    init(points: [Point])
}


extension DungeonRoom where Self: CustomStringConvertible {

    public var description: String {
        return rect.center.description
    }
}

extension DungeonRoom where Self: Hashable {

    public var hashValue: Int {
        return rect.center.description.hashValue
    }
    
}
