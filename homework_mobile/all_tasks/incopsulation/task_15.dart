import 'dart:io';

class Personddress {
  String _name;
  String _street;
  int _postal_code;
  Personddress(this._name, this._street, this._postal_code);
  set set_name(new_name) {
    _name = new_name;
  }

  set set_street(new_street) {
    _street = new_street;
  }

  set set_code(new_code) {
    _postal_code = new_code;
  }

  get get_name => this._name;
  get get_street => this._street;
  get get_postal_code => this._postal_code;
}

void main() {
  print("ism kiriting");
  String name = stdin.readLineSync()!;
  print("manzlni kiriting");
  String street = stdin.readLineSync()!;
  print("pochta indexini kiriting");
  int postal_index = int.parse(stdin.readLineSync()!);
  Personddress new_addres = Personddress(name, street, postal_index);
  print("ism: ${new_addres.get_name}");
  print("manzil ${new_addres.get_street}");
  print("pochta index: ${new_addres.get_postal_code}");
  new_addres._postal_code = 12;
}
