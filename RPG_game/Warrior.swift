class Warrior: Hero {
    init(health: Int, damage: Int, name: String) {
        super.init(health: health, damage: damage, name: name, ability: .criticalDamage)
    }

    override func applySuperPower(boss: Boss, heroes: [Hero]) {
        let coefficient = Int.random(in: 2...5)
        let criticalDamage = coefficient * self.damage
        boss.health = max(0, boss.health - criticalDamage)
        print("Warrior \(name) dealt CRIT_DAMAGE of \(criticalDamage)")
    }
}
