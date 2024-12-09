import Foundation

class GameEntity {
    var health: Int
    var damage: Int
    var name: String

    init(health: Int, damage: Int, name: String) {
        self.health = health
        self.damage = damage
        self.name = name
    }

    var description: String {
        return "\(name) health: \(health) damage: \(damage)"
    }
}
