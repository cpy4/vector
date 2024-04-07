/*import 'package:realm/realm.dart';
import 'sidebar.dart';

final config = Configuration.local([Car.schema]);
//final realm = Realm(config);
//final app = App(AppConfiguration('application-0-gatun'));
final app = App(AppConfiguration('devicesync-kkoej'));
// final car = Car(ObjectId(), 'Tesla', model: 'Model S', miles: 42);


openRealm() async {
  // Log in as an anonymous user
final user = await app.logIn(Credentials.anonymous());

// Configure and open the realm
final config = Configuration.flexibleSync(user, [Car.schema]);
final realm = Realm(config);

// Add subscription to sync all Car objects in the realm
realm.subscriptions.update((mutableSubscriptions) {
  mutableSubscriptions.add(realm.all<Car>());
});
// Sync all subscriptions
await realm.subscriptions.waitForSynchronization();

// Write data to realm and it automatically syncs with Atlas
// in the background.
return realm.write(() {
  realm.add(Car(ObjectId(), 'Toyota',miles: 200000, model: 'Rav 4'));
});
 
}


*/


