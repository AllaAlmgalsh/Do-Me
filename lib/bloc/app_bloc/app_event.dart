part of 'app_bloc.dart';

abstract class AppEvent {
  const AppEvent();
}

class AppLogoutRequest extends AppEvent {
  const AppLogoutRequest();
}

class AppUserChanged extends AppEvent {
  const AppUserChanged(this.user);
  final User user;
}
