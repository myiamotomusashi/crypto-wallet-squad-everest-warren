import 'package:hooks_riverpod/hooks_riverpod.dart';

final StateProvider<bool> visibilityProvider = StateProvider((ref) => true);

final StateProvider<int> indexProvider = StateProvider((ref) => 0);
