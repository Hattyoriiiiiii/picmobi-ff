import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ApplicationFirebaseUser {
  ApplicationFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ApplicationFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ApplicationFirebaseUser> applicationFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ApplicationFirebaseUser>(
      (user) {
        currentUser = ApplicationFirebaseUser(user);
        return currentUser!;
      },
    );
