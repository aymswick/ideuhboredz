import 'package:flutter/foundation.dart';
import 'package:ideuhboredz/app/app.dart';
import 'package:ideuhboredz/bootstrap.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
      url: 'https://sliugmgtwkmeqqglyisp.supabase.co',
      anonKey: String.fromEnvironment('SUPABASE_PUBLIC_ANON_KEY'));

  bootstrap(() => const App());
}
