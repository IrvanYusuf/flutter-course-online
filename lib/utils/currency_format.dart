import 'package:intl/intl.dart';

class CurrencyFormat {
  String formattedAmount(double amount) {
    return NumberFormat.currency(
      symbol: '\Rp ',
      locale: 'id',
      decimalDigits: 2,
    ).format(amount);
  }
}
