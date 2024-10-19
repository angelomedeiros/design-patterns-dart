import 'package:design_patterns/state_pattern/pacman/ghost.dart';

abstract class GhostState {
  void spotPacman(Ghost ghost);
  void losePacman(Ghost ghost);
  void pacmanTurnsSpecial(Ghost ghost);
  void pacmanTurnsNormal(Ghost ghost);
  void eatenByPacman(Ghost ghost);
  void reachTheBase(Ghost ghost);
}
