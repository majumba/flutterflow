import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BantengFirebaseUser {
  BantengFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

BantengFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BantengFirebaseUser> bantengFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BantengFirebaseUser>(
      (user) {
        currentUser = BantengFirebaseUser(user);
        return currentUser!;
      },
    );
