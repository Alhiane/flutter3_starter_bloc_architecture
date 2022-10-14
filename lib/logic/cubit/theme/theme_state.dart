part of 'theme_cubit.dart';

abstract class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props => [];
}

@immutable
class ThemeInitial extends ThemeState {
  final ThemeMode themeMode;

  const ThemeInitial({required this.themeMode});
}
