import 'dart:io';

double celToFah(double celsius) {
  return (9 / 5) * celsius + 32;
}

double fahToCel(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

void main() {
  print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
  print("     Selamat Datang di Aplikasi Pengubah Suhu    ");
  print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");

  while (true) {
    print("\nPilih konversi yang diinginkan:");
    print("1. Celcius -> Fahrenheit");
    print("2. Fahrenheit -> Celcius");
    print("0. Keluar");
    stdout.write("\nPilihan Anda (0/1/2): ");
    String? choice = stdin.readLineSync();

    if (choice == '0') {
      print("\nTerima kasih telah menggunakan aplikasi ini!");
      print("=======================================================\n");
      break;
    }

    stdout.write("\nMasukkan nilai suhu: ");
    String? degree = stdin.readLineSync();

    if (degree == null) {
      print("\Suhu tidak valid. Masukkan angka yang benar.");
      continue;
    }

    double number = double.parse(degree);

    print("\n---------------------------------------");
    if (choice == '1') {
      double fahrenheit = celToFah(number);
      print("       $number°C sama dengan $fahrenheit°F");
    } else {
      double celsius = fahToCel(number);
      print("       $number°F sama dengan $celsius°C");
    }
    print("---------------------------------------");
  }
}
