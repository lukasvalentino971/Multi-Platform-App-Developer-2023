import 'dart:io';

void main() {
  stdout.write('Masukkan suhu dalam Fahrenheit: ');
  var fahrenheit = num.parse(stdin.readLineSync()!);

  stdout.write('Pilih satuan suhu yang ingin Anda konversi (C/R/K): ');
  var choice = stdin.readLineSync();

  var celsius, reamur, kelvin;

  if (choice == 'C' || choice == 'c') {
    celsius = (fahrenheit - 32) * 5 / 9;
    print('$fahrenheit derajat Fahrenheit = $celsius derajat Celsius');
  } else if (choice == 'R' || choice == 'r') {
    reamur = (fahrenheit - 32) * 4 / 9;
    print('$fahrenheit derajat Fahrenheit = $reamur derajat Reamur');
  } else if (choice == 'K' || choice == 'k') {
    kelvin = (fahrenheit - 32) * 5 / 9 + 273.15;
    print('$fahrenheit derajat Fahrenheit = $kelvin derajat Kelvin');
  } else {
    print(
        'Pilihan suhu tidak valid. Silakan pilih C untuk Celsius, R untuk Reamur, atau K untuk Kelvin.');
  }
}
