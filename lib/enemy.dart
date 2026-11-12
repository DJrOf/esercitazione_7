import 'attacker.dart';
import 'damageable.dart';

class Enemy implements Attacker, Damageable {
  int hp;
  final int attackPower;
  Damageable? target;

  Enemy({this.hp = 80, this.attackPower = 15});

  @override
  void attack() {
    print('Enemy attacca!');
    target?.takeDamage(attackPower);
  }

  @override
  void takeDamage(int amount) {
    hp -= amount;
    if (hp < 0) hp = 0;
    print('Enemy subisce $amount danni.');
  }
}
