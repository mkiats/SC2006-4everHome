import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

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
  return partial_ans * userLoanAmount;
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
  return ans;
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
  return partial_ans * userLoanAmount * noOfMonth + userDownPayment;
}

String? createEmail(
  String name,
  String listingName,
  String addressName,
  String postalCode,
  String listingType,
  String listingFloorNumber,
  String listingUnitNumber,
  int leaseDuration,
  int waitingTime,
  String? loanAgent,
  String? loanAgentCompany,
  double loanAmount,
  int? mortgageTerm,
  String? realtorAgent,
  String? realtorCompany,
  String? interiorAgent,
  String? interiorCompany,
  String listingID,
) {
  String loan = "";
  String realtor = "";
  String interior = "";

  if (loanAgent != "0" && loanAgentCompany != "0")
    loan =
        "Loan Agent: ${loanAgent}\nLoan Agent Company: ${loanAgentCompany}\nLoan Amount: ${loanAmount}\nMortgage Term: ${mortgageTerm}";
  if (realtorAgent != "0" && realtorCompany != "0")
    realtor =
        "Realtor Agent: ${realtorAgent}\nRealtor Agent Company: ${realtorCompany}\n";
  if (interiorAgent != "0" && interiorCompany != "0")
    interior =
        "Interior Agent: ${interiorAgent}\nInterior Designer Company: ${interiorCompany}\n";

  String email = """To ${name}\n
Thank you for purchasing your 4everHome. Here are the details of the property that you have just confirmed.\n
Listing ID: ${listingID}
Listing name: ${listingName}
Address: ${addressName}
Postal Code: ${postalCode}\n
Listing Type: ${listingType}
Floor Number: ${listingFloorNumber}
Unit Number: ${listingUnitNumber}
Lease Duration: ${leaseDuration}
Waiting Time: ${waitingTime}
${loan}
${realtor}
${interior}
  """;
  return email;
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
