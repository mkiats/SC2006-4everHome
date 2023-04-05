import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ForeverHomeFirebaseUser {
  ForeverHomeFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ForeverHomeFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ForeverHomeFirebaseUser> foreverHomeFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ForeverHomeFirebaseUser>(
      (user) {
        currentUser = ForeverHomeFirebaseUser(user);
        return currentUser!;
      },
    );
