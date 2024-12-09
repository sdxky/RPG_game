import Foundation

class RPGGame {
    static var roundNumber = 0

    static func startGame() {
        let boss = Boss(health: 1000, damage: 50, name: "Skeleton")
        let heroes: [Hero] = [
            Medic(health: 250, damage: 5, name: "Dumbledore", healPoints: 15),
            Warrior(health: 290, damage: 15, name: "Achilles"),
            Magic(health: 270, damage: 10, name: "Skymag")
        ]

        showStatistics(boss: boss, heroes: heroes)
        while !isGameOver(boss: boss, heroes: heroes) {
            playRound(boss: boss, heroes: heroes)
        }
    }

    private static func playRound(boss: Boss, heroes: [Hero]) {
        roundNumber += 1
        print("\nROUND \(roundNumber) -----------------")
        boss.chooseDefence()
        boss.attack(heroes: heroes)

        for hero in heroes where hero.health > 0 && boss.health > 0 {
            if hero.ability != boss.defence {
                hero.attack(boss: boss)
                hero.applySuperPower(boss: boss, heroes: heroes)
            }
        }
        showStatistics(boss: boss, heroes: heroes)
    }

    private static func isGameOver(boss: Boss, heroes: [Hero]) -> Bool {
        if boss.health <= 0 {
            print("Heroes won!!!")
            return true
        }
        if heroes.allSatisfy({ $0.health <= 0 }) {
            print("Boss won!!!")
            return true
        }
        return false
    }

    private static func showStatistics(boss: Boss, heroes: [Hero]) {
        print(boss.description)
        heroes.forEach { print($0.description) }
    }
}
