import 'package:design_patterns/state_pattern/pacman/ghost.dart';

import 'states.dart';

class WanderMazeState implements GhostState {
  static final WanderMazeState _instance = WanderMazeState();

  static WanderMazeState getInstance() => _instance;

  @override
  void eatenByPacman(Ghost ghost) {
    print("Are you joking? It's impossible to be eaten by a normal PacMan...");
  }

  @override
  void losePacman(Ghost ghost) {
    print("How to lose what I haven't found?");
  }

  @override
  void pacmanTurnsNormal(Ghost ghost) {
    print("But he was normal already...");
  }

  @override
  void pacmanTurnsSpecial(Ghost ghost) {
    print("Oh no! We have a Super PacMan now, better hide!");
    ghost.setState(FleePacmanState.getInstance());
  }

  @override
  void reachTheBase(Ghost ghost) {
    print("I wasn't going to the base...");
  }

  @override
  void spotPacman(Ghost ghost) {
    print("I've just spot the pacman, let's chase him!");
    ghost.setState(ChasePacmanState.getInstance());
  }
}
