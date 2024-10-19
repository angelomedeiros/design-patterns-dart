import 'package:design_patterns/state_pattern/pacman/ghost.dart';

import 'states.dart';

class ChasePacmanState implements GhostState {
  static final ChasePacmanState _instance = ChasePacmanState();

  static ChasePacmanState getInstance() => _instance;

  @override
  void eatenByPacman(Ghost ghost) {
    print("Are you joking? It's impossible to be eaten by a normal PacMan...");
  }

  @override
  void losePacman(Ghost ghost) {
    print("The Pacman ran away, let's find him again");
    ghost.setState(WanderMazeState.getInstance());
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
    print("I know, I'm already chasing him...");
  }
}
