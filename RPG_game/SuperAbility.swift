enum SuperAbility: CustomStringConvertible {
    case heal, criticalDamage, boost, blockDamageRevert

    var description: String {
        switch self {
        case .heal:
            return "Heal"
        case .criticalDamage:
            return "Critical Damage"
        case .boost:
            return "Boost"
        case .blockDamageRevert:
            return "Block Damage Revert"
        }
    }
}
