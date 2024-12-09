class Medic: Hero {
    private let healPoints: Int

    init(health: Int, damage: Int, name: String, healPoints: Int) {
        self.healPoints = healPoints
        super.init(health: health, damage: damage, name: name, ability: .heal)
    }

    override func applySuperPower(boss: Boss, heroes: [Hero]) {
        for hero in heroes where hero.health > 0 && hero !== self {
            hero.health += healPoints
            print("\(name) healed \(hero.name) by \(healPoints) points")
        }
    }
}
