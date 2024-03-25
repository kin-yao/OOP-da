import 'dart:io';

// Interface for scoring
abstract class Scorer {
  int calculateScore();
}

// Base class for players
class Player implements Scorer {
  String name;
  int skillLevel;

  Player(this.name, this.skillLevel);

  @override
  int calculateScore() {
    // Basic score calculation based on skill level
    return skillLevel * 10;
  }
}

// Subclass for professional players
class ProfessionalPlayer extends Player {
  ProfessionalPlayer(String name, int skillLevel) : super(name, skillLevel);

  @override
  int calculateScore() {
    // Override score calculation for professional players
    return skillLevel * 15;
  }
}

void main() {
  // Simulate loading player data from a file
  List<Player> players = loadPlayersFromFile('players.txt');

  // Simulate multiple rounds of dart throwing
  for (int round = 1; round <= 3; round++) {
    print('Round $round');
    for (var player in players) {
      int score = player.calculateScore();
      print('${player.name} scored $score points.');
    }
    print('');
  }
}

// Function to load players from a file
List<Player> loadPlayersFromFile(String filePath) {
  List<Player> players = [];
  try {
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();
    for (var line in lines) {
      List<String> data = line.split(',');
      if (data.length == 2) {
        String name = data[0];
        int skillLevel = int.tryParse(data[1]) ?? 0;
        players.add(Player(name, skillLevel));
      }
    }
  } catch (e) {
    print('Error loading players: $e');
  }
  return players;
}
