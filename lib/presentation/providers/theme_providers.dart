import 'package:flutter_riverpod/flutter_riverpod.dart';

final StateProvider<bool> isDarkmodeProvider = StateProvider((ref) => false);

final StateProvider<int> selectedColorProvider = StateProvider((ref) => 0);
