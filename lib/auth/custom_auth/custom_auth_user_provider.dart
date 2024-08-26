import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class MscAppAuthUser {
  MscAppAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MscAppAuthUser> mscAppAuthUserSubject =
    BehaviorSubject.seeded(MscAppAuthUser(loggedIn: false));
Stream<MscAppAuthUser> mscAppAuthUserStream() =>
    mscAppAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
