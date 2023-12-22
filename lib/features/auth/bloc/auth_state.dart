/// Abstrakte Basisklasse für Authentifizierungsstatus
import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

/// Anfangszustand der Authentifizierung
class AuthInitial extends AuthState {
  @override
  List<Object> get props => [];
}

/// Zustand während der Authentifizierung lädt
class AuthLoading extends AuthState {
  @override
  List<Object> get props => [];
}

// Zustand, wenn die Authentifizierung erfolgreich ist
class Authenticated extends AuthState {
  final String email;
  final String message;
  const Authenticated(
    this.message,
    this.email,
  );
  @override
  List<Object> get props => [email, message];
}

/// Zustand, wenn die Authentifizierung fehlgeschlagen ist
class Unauthenticated extends AuthState {
  @override
  List<Object> get props => [];
}

