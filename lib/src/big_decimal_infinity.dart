import 'big_decimal.dart';

class BigDecimalInfinity extends BigDecimal {
  BigDecimalInfinity() : super(intVal: BigInt.from(0), scale: 0);
}
