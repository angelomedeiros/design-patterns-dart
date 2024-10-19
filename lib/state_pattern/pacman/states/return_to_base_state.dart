import 'package:design_patterns/state_pattern/pacman/ghost.dart';

import 'states.dart';

class ReturnToBaseState implements GhostState {
  static final ReturnToBaseState _instance = ReturnToBaseState();

  static ReturnToBaseState getInstance() => _instance;

  @override
  void eatenByPacman(Ghost ghost) {
    print("Again? No!");
  }

  @override
  void losePacman(Ghost ghost) {
    print("I was hopping this before...");
  }

  @override
  void pacmanTurnsNormal(Ghost ghost) {
    print("Too late!");
  }

  @override
  void pacmanTurnsSpecial(Ghost ghost) {
    print("I saw!");
  }

  @override
  void reachTheBase(Ghost ghost) {
    print("It's clear now! I want my Revenge!");
    ghost.setState(WanderMazeState.getInstance());
  }

  @override
  void spotPacman(Ghost ghost) {
    print("I'll haunt him, now that I'm a ghost of a ghost...");
  }
}
