import 'package:esercitazione_7/player.dart';
import 'package:esercitazione_7/enemy.dart';
import 'package:test/test.dart';

void main() {
  test('Player attacca Enemy e Enemy non è Healer', () {
    final player = Player(hp: 100, attackPower: 25);
    final enemy = Enemy(hp: 80, attackPower: 15);

    player.target = enemy;
    enemy.target = player;

    player.attack();
    expect(enemy.hp, 55);

    enemy.attack();
    expect(player.hp, 85);

    player.heal(20);
    expect(player.hp, 105);
  });
}
