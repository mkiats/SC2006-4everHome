import 'dart:math' as math;

List<String> uniqueStr(List<String> curStr) {
  final uniqueStr = curStr.toSet().toList();
  return uniqueStr;
}

int listingApplicationIncrement(int counter) {
  return counter += 1;
}

double calcuationLoanAmount(
  double userDownPayment,
  double propertyPrice,
) {
  if (propertyPrice >= userDownPayment) {
    return propertyPrice - userDownPayment;
  } else
    return 0;
}

double calculateMonthlyInstallment(
  double userTenure,
  double userInterest,
  double userLoanAmount,
) {
  double monthlyRate = userInterest / 1200;
  double noOfMonth = userTenure * 12;
  double partial_ans = (monthlyRate * math.pow((1 + monthlyRate), noOfMonth)) /
      (math.pow((1 + monthlyRate), noOfMonth) - 1);
  double ans = partial_ans * userLoanAmount;
  double result = (ans * 100).roundToDouble() / 100;
  return result;
}

double calculateTotalInterest(
  double userInterest,
  double userTenure,
  double userLoanAmount,
) {
  double monthlyRate = userInterest / 1200;
  double noOfMonth = userTenure * 12;
  double partial_ans = (monthlyRate * math.pow((1 + monthlyRate), noOfMonth)) /
      (math.pow((1 + monthlyRate), noOfMonth) - 1);

  double monthlyInstallment = partial_ans * userLoanAmount;
  double ans = (monthlyInstallment * noOfMonth) - userLoanAmount;
  double result = (ans * 100).roundToDouble() / 100;
  return result;
}

double calculateTotalCost(
  double userInterest,
  double userTenure,
  double userLoanAmount,
  double userDownPayment,
) {
  double monthlyRate = userInterest / 1200;
  double noOfMonth = userTenure * 12;
  double partial_ans = (monthlyRate * math.pow((1 + monthlyRate), noOfMonth)) /
      (math.pow((1 + monthlyRate), noOfMonth) - 1);
  double ans = partial_ans * userLoanAmount * noOfMonth + userDownPayment;
  double result = (ans * 100).roundToDouble() / 100;
  return result;
}

bool withinRange(
  double userAmount,
  double upperBoundary,
  double lowerBoundary,
) {
  if ((userAmount < upperBoundary) && (userAmount > lowerBoundary)) {
    return true;
  } else {
    return false;
  }
}

double textToDouble(String string) {
  if (string.contains('€')) {
    string = string.replaceAll('€', "");
    string = string.replaceAll(' ', "");
  }

  // string to double
  if (string.contains('%')) {
    string = string.replaceAll('%', "");
    var ret = double.parse(string);
    return ret / 100;
  } else if (!string.contains(',')) {
    return double.parse(string);
  } else if (string.contains(',') && !string.contains('.')) {
    string = string.replaceAll(',', ".");
    return double.parse(string);
  } else if (!string.contains('.') && !string.contains(',')) {
    return double.parse(string);
  } else if ((string.contains(',') && string.contains('.')) ||
      (string.contains(',') &&
          string.contains('.') &&
          string.split(',')[1].length == 3)) {
    return double.parse(string);
  } else if (string.contains(',') && string.split(',')[1].length == 2) {
    String before = string.substring(0, string.indexOf(','));
    String end = string.substring(string.indexOf(',') + 1);
    var doubleVal = double.parse(before);
    doubleVal += .01 * double.parse(end);
    print(doubleVal);
    return doubleVal;
  } else {
    return 0.00;
  }
}

double calculateTotalPayable(
  double downPayment,
  double stampDutyFee,
  double optionFee,
  double legelFee,
  double valuationFee,
  double insuranceFee,
  double buyerAgentFee,
) {
  return downPayment +
      stampDutyFee +
      optionFee +
      legelFee +
      valuationFee +
      insuranceFee +
      buyerAgentFee;
}
