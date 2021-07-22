bool emailValidate(_email) {
  String email = _email.text;
  bool emailIsValid =
      RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(email);
  return emailIsValid;
}

dynamic nicValidate(_nic) {
  String nic = _nic.text;
  bool nicIsValid =
      RegExp(r"^(?:19|20)?\d{2}[0-9]{10}|[0-9]{9}[x|X|v|V]$").hasMatch(nic);
  // return nicIsValid;
  if (nicIsValid) {
    return null;
  } else {
    return 'NIC is invalid!';
  }
}
