import 'package:esercitazione_7/player.dart';
import 'package:esercitazione_7/enemy.dart';

void main(List<String> arguments) {
  final player = Player(hp: 100, attackPower: 25);
  final enemy = Enemy(hp: 80, attackPower: 15);

  player.target = enemy;
  enemy.target = player;

  print('--- Inizio turno ---');
  print('Player HP: ${player.hp} | Enemy HP: ${enemy.hp}');
  print('');

  player.attack();
  print('Dopo Player.attack() -> Player HP: ${player.hp} | Enemy HP: ${enemy.hp}');
  print('');

  enemy.attack();
  print('Dopo Enemy.attack() -> Player HP: ${player.hp} | Enemy HP: ${enemy.hp}');
  print('');

  player.heal(20);
  print('Dopo Player.heal() -> Player HP: ${player.hp} | Enemy HP: ${enemy.hp}');
}
