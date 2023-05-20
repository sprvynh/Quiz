import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Data/Models/Models.dart';

part 'AuthState.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState(status: AuthStatus.initial));

  void signInWithEmailAndPassword(String email, String password) async {
    emit(state.copyWith(status: AuthStatus.loading));
    await Future.delayed(const Duration(seconds: 1));
    if (email.isEmpty || password.isEmpty || password.length < 8) {
      emit(state.copyWith(status: AuthStatus.error, error: 'Invalid input'));
      emit(state.copyWith(status: AuthStatus.initial, error: null));
      return;
    }

    emit(
      state.copyWith(
        status: AuthStatus.loaded,
        user: const UserModel(
          id: '238956289',
          name: 'Vinh',
          role: 'User',
        ),
      ),
    );
  }

  void createAccount(String email, String password, String name) async {
    emit(state.copyWith(status: AuthStatus.loading));
    await Future.delayed(const Duration(seconds: 1));

    if (email.isEmpty || password.isEmpty || password.length < 8 || name.isEmpty) {
      emit(state.copyWith(status: AuthStatus.error, error: 'Invalid input'));
      emit(state.copyWith(status: AuthStatus.initial, error: null));
      return;
    }
    await Future.delayed(const Duration(seconds: 3));

    emit(state.copyWith(
      status: AuthStatus.loaded,
      user: UserModel(
        id: '238956289',
        name: name,
        role: 'User',
      ),
    ));
  }

  void checkAuth() async {
    emit(state.copyWith(status: AuthStatus.loading));
    await Future.delayed(const Duration(seconds: 3));
    emit(state.copyWith(status: AuthStatus.loaded));
  }
}
