import 'dart:io';

class TemperatureConverter {
  String _farOrCel;
  double _weather;
  TemperatureConverter(this._farOrCel, this._weather);

  void convert() {
    if (_farOrCel.toLowerCase() == "c") {
      _celsiusToFahrenheit(_weather);
    } else if (_farOrCel.toLowerCase() == "f") {
      _fahrenheitToCelsius(_weather);
    } else {
      print("Noto'g'ri format: 'c' yoki 'f' kiriting.");
    }
  }

  void _celsiusToFahrenheit(double celsius) {
    print("${celsius}°C = ${(celsius * 9 / 5) + 32}°F");
  }

  void _fahrenheitToCelsius(double fahrenheit) {
    print("${fahrenheit}°F = ${(fahrenheit - 32) * 5 / 9}°C");
  }
}

void main() {
  print("Haroratni kiriting:");
  double _weather = double.parse(stdin.readLineSync()!);
  print("Farangeytga o'tkazish uchun 'f', Selsiyga o'tkazish uchun 'c' ni kiriting:");
  String _farOrCel = stdin.readLineSync()!;
  TemperatureConverter converter = TemperatureConverter(_farOrCel, _weather);
  converter.convert();
}
