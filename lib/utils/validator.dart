bool emailValidate(_email) {
  String email = _email.text;
  bool emailIsValid =
      RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(email);
  return emailIsValid;
}

// dynamic nicValidate(String nic) {
//   bool nicIsValid =
//       RegExp(r"^(?:19|20)?\d{2}[0-9]{10}|[0-9]{9}[x|X|v|V]$").hasMatch(nic);
//   // return nicIsValid;
//   if (nicIsValid) {
//     return null;
//   } else {
//     return 'NIC is invalid!';
//   }
// }

String Function(String) nicValidator() {
  return (value) {
    bool nicIsValid =
        RegExp(r"^(?:19|20)?\d{2}[0-9]{10}|[0-9]{9}[x|X|v|V]$").hasMatch(value);
    if (!nicIsValid) {
      return 'Enter Valid NIC number!';
    } else {
      return null;
    }
  };
}
