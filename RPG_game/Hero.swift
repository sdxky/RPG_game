class Hero: GameEntity, HavingSuperAbility {
    let ability: SuperAbility

    init(health: Int, damage: Int, name: String, ability: SuperAbility) {
        self.ability = ability
        super.init(health: health, damage: damage, name: name)
    }

    func attack(boss: Boss) {
        boss.health = max(0, boss.health - self.damage)
    }

    func applySuperPower(boss: Boss, heroes: [Hero]) {
        // Abstract method
    }
}
