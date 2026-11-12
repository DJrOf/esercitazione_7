import 'attacker.dart';
import 'damageable.dart';
import 'healer.dart';

class Player implements Attacker, Damageable, Healer {
  int hp;
  final int attackPower;
  Damageable? target;

  Player({this.hp = 100, this.attackPower = 25});

  @override
  void attack() {
    print('Player attacca!');
    target?.takeDamage(attackPower);
  }

  @override
  void takeDamage(int amount) {
    hp -= amount;
    if (hp < 0) hp = 0;
    print('Player subisce $amount danni.');
  }

  @override
  void heal(int amount) {
    hp += amount;
    print('Player si cura di $amount HP.');
  }
}
