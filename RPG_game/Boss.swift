import Foundation

class Boss: GameEntity {
    var defence: SuperAbility?

    func chooseDefence() {
        let allAbilities: [SuperAbility] = [.heal, .criticalDamage, .boost, .blockDamageRevert]
        defence = allAbilities.randomElement()
    }

    func attack(heroes: [Hero]) {
        for hero in heroes where hero.health > 0 {
            let damageDealt: Int
            if let magicHero = hero as? Magic, defence != .blockDamageRevert {
                let block = (Int.random(in: 1...2)) * 5
                damageDealt = max(0, damage - block)
            } else {
                damageDealt = damage
            }
            hero.health = max(0, hero.health - damageDealt)
        }
    }
    
    override var description: String {
        return "BOSS \(super.description) defence: \(defence?.description ?? "None")"
    }
}
