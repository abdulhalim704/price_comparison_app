import 'package:provider/provider.dart';

import '../providers/stock_alice_provider.dart';

var providers = [
  ChangeNotifierProvider<StockAliasProvider>(
    create: (context) => StockAliasProvider(),
  ),
  ChangeNotifierProvider<DayWaysProvider>(
    create: (context) => DayWaysProvider(),
  ),
];
