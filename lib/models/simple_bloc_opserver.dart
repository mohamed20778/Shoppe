import 'package:flutter_bloc/flutter_bloc.dart';

class simpleBlocObserver extends BlocObserver {
  void onTransition(Bloc bloc, Transition transition) {
    print(transition);
  }

  void onChange(BlocBase bloc, Change change) {
    print(change);
  }
}
