import 'package:design_patterns/state_pattern/pacman/ghost.dart';

import 'states.dart';

class FleePacmanState implements GhostState {
  static final FleePacmanState _instance = FleePacmanState();

  static FleePacmanState getInstance() => _instance;

  @override
  void eatenByPacman(Ghost ghost) {
    print("Oh no! I'll be back!");
    ghost.setState(ReturnToBaseState.getInstance());
  }

  @override
  void losePacman(Ghost ghost) {
    print("Actually, he loses ME...");
  }

  @override
  void pacmanTurnsNormal(Ghost ghost) {
    print("That was close, I'll find him again!");
    ghost.setState(WanderMazeState.getInstance());
  }

  @override
  void pacmanTurnsSpecial(Ghost ghost) {
    print("I know! I'm already running...");
  }

  @override
  void reachTheBase(Ghost ghost) {
    print("I wasn't going to the base... yet!");
  }

  @override
  void spotPacman(Ghost ghost) {
    print("I don't wanna see him, turn back...");
  }
}
