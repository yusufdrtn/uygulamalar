import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("kilonuzu giriniz");
  int kilo = int.parse(stdin.readLineSync()!);

  print("boyunuzu giriniz");
  double boy = double.parse(stdin.readLineSync()!);

  double bmi = bmiHesapla(kilo, boy);

  if (bmi < 18.5) {
    print("vucut kitle indeksiniz = $bmi (zayif)");
  } else if (18.5 <= bmi && bmi < 25) {
    print("vucut kitle indeksiniz = $bmi (normal)");
  } else if (25 <= bmi && bmi < 30) {
    print("vucut kitle indeksiniz = $bmi (kilolu)");
  } else if (30 <= bmi && bmi < 35) {
    print("vucut kitle indeksiniz = $bmi (1. derece obez)");
  } else if (35 <= bmi && bmi < 40) {
    print("vucut kitle indeksiniz = $bmi (2. derece obez)");
  } else {
    print("vucut kitle indeksiniz = $bmi (3. derece obez)");
  }
}

double bmiHesapla(int kilo, double boy) {
  double bmi = kilo / pow(boy, 2);
  return bmi;
}
