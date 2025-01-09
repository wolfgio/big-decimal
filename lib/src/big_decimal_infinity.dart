import 'big_decimal.dart';

class BigDecimalInfinity extends BigDecimal {
  BigDecimalInfinity() : super(intVal: BigInt.from(double.maxFinite), scale: 1);

  @override
  BigDecimal operator +(BigDecimal other) => BigDecimal.fromInfinity();

  @override
  BigDecimal operator *(BigDecimal other) => BigDecimal.fromInfinity();

  @override
  BigDecimal operator -(BigDecimal other) => BigDecimal.fromInfinity();

  @override
  BigDecimal operator -() => BigDecimal.fromInfinity(negative: true);

  @override
  BigDecimal abs() {
    return BigDecimal.fromInfinity();
  }

  @override
  BigDecimal divide(
    BigDecimal divisor, {
    RoundingMode roundingMode = RoundingMode.UNNECESSARY,
    int? scale,
  }) {
    return BigDecimal.fromInfinity();
  }

  @override
  BigDecimal pow(int n) {
    throw Exception('Invalid operation: Exponent should be between 0 and 999999999');
  }

  @override
  double toDouble() {
    return double.infinity;
  }

  @override
  BigInt toBigInt({RoundingMode roundingMode = RoundingMode.UNNECESSARY}) {
    throw UnsupportedError('Value must be finite: Infinity');
  }

  @override
  int toInt({RoundingMode roundingMode = RoundingMode.UNNECESSARY}) {
    throw UnsupportedError('Value must be finite: Infinity');
  }

  @override
  BigDecimal withScale(int newScale, {RoundingMode roundingMode = RoundingMode.UNNECESSARY}) {
    throw UnsupportedError('Value must be finite: Infinity');
  }

  @override
  int compareTo(BigDecimal other) {
    if (other is BigDecimalInfinity) {
      return 0;
    }

    return 1;
  }

  @override
  bool exactlyEquals(other) {
    if (other is BigDecimalInfinity) {
      return true;
    }

    return false;
  }

  @override
  String toString() => "Infinity";

  @override
  String toPlainString() => "Infinity";
}

class BigDecimalNegativeInfinity extends BigDecimal {
  BigDecimalNegativeInfinity() : super(intVal: BigInt.from(-double.maxFinite), scale: 1);

  @override
  BigDecimal operator +(BigDecimal other) => BigDecimal.fromInfinity();

  @override
  BigDecimal operator *(BigDecimal other) => BigDecimal.fromInfinity();

  @override
  BigDecimal operator -(BigDecimal other) => BigDecimal.fromInfinity();

  @override
  BigDecimal operator -() => BigDecimal.fromInfinity();

  @override
  BigDecimal abs() {
    return BigDecimal.fromInfinity();
  }

  @override
  BigDecimal divide(
    BigDecimal divisor, {
    RoundingMode roundingMode = RoundingMode.UNNECESSARY,
    int? scale,
  }) {
    return BigDecimal.fromInfinity();
  }

  @override
  BigDecimal pow(int n) {
    throw Exception('Invalid operation: Exponent should be between 0 and 999999999');
  }

  @override
  double toDouble() {
    return double.negativeInfinity;
  }

  @override
  BigInt toBigInt({RoundingMode roundingMode = RoundingMode.UNNECESSARY}) {
    throw UnsupportedError('Value must be finite: -Infinity');
  }

  @override
  int toInt({RoundingMode roundingMode = RoundingMode.UNNECESSARY}) {
    throw UnsupportedError('Value must be finite: -Infinity');
  }

  @override
  BigDecimal withScale(int newScale, {RoundingMode roundingMode = RoundingMode.UNNECESSARY}) {
    throw UnsupportedError('Value must be finite: -Infinity');
  }

  @override
  int compareTo(BigDecimal other) {
    if (other is BigDecimalInfinity) {
      return 0;
    }

    return 1;
  }

  @override
  bool exactlyEquals(other) {
    if (other is BigDecimalInfinity) {
      return true;
    }

    return false;
  }

  @override
  String toString() => "-Infinity";

  @override
  String toPlainString() => "-Infinity";
}
