class Magic: Hero {
    init(health: Int, damage: Int, name: String) {
        super.init(health: health, damage: damage, name: name, ability: .boost)
    }

    override func applySuperPower(boss: Boss, heroes: [Hero]) {
        print("\(name) used BOOST ability")
    }
}
