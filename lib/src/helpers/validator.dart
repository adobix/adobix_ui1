part of 'helper.dart';

class Validator {
  static String? inCharge(String? value) => value!.isEmpty || value.length < 4
      ? 'Please enter name of In-charge'
      : null;

  static String? mechanic(String? value) => value!.isEmpty || value.length < 4
      ? 'Please enter name of Mechanic'
      : null;

  static String? action(String? value) =>
      value!.isEmpty || value.length < 4 ? 'Please enter your action' : null;

  static String? part(value) =>
      value == 'Select Part' ? 'Please select a part' : null;

  static String? complain(String? val) =>
      val!.isEmpty || val.length < 4 ? 'Please enter your complain' : null;

  static String? location(String? val) =>
      val!.isEmpty || val.length < 4 ? 'Please enter your location' : null;

  static String? vehicle(value) =>
      value == 'Select Vehicle' ? 'Please select vehicle number' : null;

  static String? driver(value) =>
      value == 'Select Driver' ? 'Please select driver' : null;

  static String? route(value) =>
      value == 'Select Route' ? 'Please select a route' : null;

  static String? username(value) => value!.isEmpty || value.length < 4
      ? 'Please enter a valid username'
      : null;

  static String? password(value) => value!.isEmpty || value.length < 4
      ? 'Please enter a valid password'
      : null;

  static String? firstName(value) => value!.isEmpty || value.length < 4
      ? 'Please enter your first name'
      : null;

  static String? lastName(value) =>
      value!.isEmpty || value.length < 4 ? 'Please enter your last name' : null;

  static String? dob(value) => value!.isEmpty || value.length < 4
      ? 'Please enter your date of birth'
      : null;

  static String? def(val) =>
      val!.isEmpty || val.length < 1 ? 'Please enter def in liters' : null;

  static String? fuel(val) =>
      val!.isEmpty || val.length < 4 ? 'Please enter fuel in liters' : null;

  static String? receipt(val) =>
      val!.isEmpty || val.length < 4 ? 'Please enter receipt no' : null;

  static String? card(val) =>
      val!.isEmpty || val.length < 4 ? 'Please enter card no.' : null;

  static String? amount(val) =>
      val!.isEmpty || val.length < 4 ? 'Please enter amount in rupees' : null;

  static String? odometer(val) =>
      val!.isEmpty || val.length < 1 ? 'Please enter odometer' : null;

  static String? validateEmail(String? value) {
    if (value!.isEmpty) 'Email is required';

    final emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
    return !emailRegex.hasMatch(value) ? 'Enter a valid email address' : null;
  }

  static String? validateMobile(String? value) {
    if (value!.isEmpty) 'Mobile number is required';

    final mobileRegex = RegExp(r'^[0-9]{10}$');
    return !mobileRegex.hasMatch(value)
        ? 'Enter a valid 10-digit mobile number'
        : null;
  }

  static String? validStopType(val) => val == 'Select Stop Types' || val == ""
      ? 'Please select a stop type'
      : null;

  static String? validStops(val) =>
      val == 'Select Stops' || val == "" ? 'Please select a stop name' : null;
}
