part of 'app_bloc.dart';

enum AppStatus { authenticated, unauthenticated }

class AppState extends Equatable {


  const AppState._({
    required this.Status,
    this.user = User.empty,
  });

  const AppState.authenticated(User user)
      : this._(Status: AppStatus.authenticated, user: user);

  const AppState.unauthenticated(User user) : this._(Status: AppStatus.unauthenticated);
  final AppStatus Status;
  final User user;
  @override
  List<Object?> get props => [Status, user];
}
