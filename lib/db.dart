import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

part 'db.g.dart';

final supabase = Supabase.instance.client;

@riverpod
Future secret(secretName, ref) async {
  var res = await supabase
      .schema('vault')
      .from('decrypted_secrets')
      .select('decrypted_secret')
      .match({'name': secretName});
  return res[0]['decrypted_secret'];
}

@riverpod
Future<List> docs(ref) async {
  List res = await supabase
      .schema('public')
      .from('vdocuments')
      .select('name');
  return res;
}

@riverpod
Future<String> supabaseCreds(ref) async {
  await dotenv.load(fileName: ".env");
  final supabaseURL = await dotenv.env['SUPABASE_OPS_URL'].toString();
  final supabaseKey = await dotenv.env['SUPABASE_OPS_KEY'].toString();
  final map = {
    'url': supabaseURL,
    'key': supabaseKey
  };
  return supabaseURL;
}





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


