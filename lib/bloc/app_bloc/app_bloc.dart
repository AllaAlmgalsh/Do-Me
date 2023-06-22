import 'dart:async';

import 'package:equatable/equatable.dart';

import '../../models/user.dart';
import '../../repositories/auth_repository.dart';
import '../bloc_exports.dart';

part 'app_state.dart';

part 'app_event.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final AuthRepository _authRepository;
  late final StreamSubscription<User>? _userSubscription;

  AppBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(authRepository.currentUser.isNotEmpty
                ? AppState.authenticated(authRepository.currentUser)
                : const AppState.unauthenticated(User.empty)
            //this needs an argument and i put 'User.empty' by chance
            ) {
    on<AppUserChanged>(_onUserChanged);
    on<AppLogoutRequest>(_onLogoutRequest);
  }

  void _onUserChanged(
    AppUserChanged event,
    Emitter<AppState> emit,
  ) {
    emit(event.user.isNotEmpty
            ? AppState.authenticated(event.user)
            : AppState.unauthenticated(event
                .user) //this needs an argument and i put 'event.user' by chance
        );
  }

  void _onLogoutRequest(
    AppLogoutRequest event,
    Emitter<AppState> emit,
  ) {
    unawaited(_authRepository.logout());
  }
}
