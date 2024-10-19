import 'states/states.dart';

class Ghost implements GhostState {
  GhostState _state = WanderMazeState.getInstance();

  GhostState getState() => _state;

  void setState(GhostState state) {
    print("Changing from ${_state.runtimeType} to ${state.runtimeType}");
    _state = state;
  }

  @override
  void eatenByPacman(_) {
    _state.eatenByPacman(this);
  }

  @override
  void losePacman(_) {
    _state.losePacman(this);
  }

  @override
  void pacmanTurnsNormal(_) {
    _state.pacmanTurnsNormal(this);
  }

  @override
  void pacmanTurnsSpecial(_) {
    _state.pacmanTurnsSpecial(this);
  }

  @override
  void reachTheBase(_) {
    _state.reachTheBase(this);
  }

  @override
  void spotPacman(_) {
    _state.spotPacman(this);
  }
}
