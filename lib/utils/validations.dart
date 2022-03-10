class Validations {
  String? validateInput(value) {
    if (value.isEmpty) return 'Champs réquis!';
    return null;
  }
}
