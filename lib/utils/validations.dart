class Validations {
  String? validateEmail(String value) {
    if (value.isEmpty) return 'Email requis!';
    final RegExp nameExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!nameExp.hasMatch(value)) {
      return 'Veuillez renseigner une adresse email valide!';
    }
    return null;
  }

  String? validatePhone(String value) {
    if (value.isEmpty) return 'Numéro de téléphone réquis!';
    return null;
  }

  String? validateInput(value) {
    // final RegExp nameExp = RegExp("^[a-zA-Z0-9]*$");
    // if (nameExp.hasMatch(value)) return 'Champs invalide!';

    if (value.isEmpty) return 'Champs réquis!';
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) return 'Mot de passe réquis!';
    return null;
  }
}
