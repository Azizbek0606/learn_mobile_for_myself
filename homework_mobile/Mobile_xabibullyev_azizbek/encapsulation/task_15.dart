import 'dart:io';

class PersonAddress {
  String _name;
  String _street;
  int _postalCode;

  PersonAddress(this._name, this._street, this._postalCode) {
    set_name = _name;
    set_street = _street;
    set_code = _postalCode;
  }

  set set_name(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    } else {
      _name = "default_name";
      print("Ism Noto'g'ri kiritildi");
    }
  }

  set set_street(String newStreet) {
    if (newStreet.isNotEmpty) {
      _street = newStreet;
    } else {
      _street = "default_street";
      print("Ko'cha nomi noto'g'ri kiritildi");
    }
  }

  set set_code(int newCode) {
    if (newCode > 99999) {
      _postalCode = newCode;
    } else {
      _postalCode = 112233;
      print("po'cta index noto'g'ri kiritildi");
    }
  }

  get get_name => _name;
  get get_street => _street;
  get get_postal_code => _postalCode;
}

void main() {
  print("ism kiriting");
  String name = stdin.readLineSync()!;
  print("manzlni kiriting");
  String street = stdin.readLineSync()!;
  print("pochta indexini kiriting");
  int postalIndex = int.parse(stdin.readLineSync()!);
  PersonAddress newAddress = PersonAddress(name, street, postalIndex);
  print("ism: ${newAddress.get_name}");
  print("manzil: ${newAddress.get_street}");
  print("pochta index: ${newAddress.get_postal_code}");
}
