import 'dart:io';

void main(List<String> args) {
  print("kullanici adinizi giriniz: ");
  String isim = stdin.readLineSync()!;

  int bakiye = 1000;
  int islem = 0;
  do {
    print("sayin $isim yapmak istediğiniz işlemi seçin:");
    print("bakiye ogrenmek icin 1'i tuslayin");
    print("para yatirmak icin 2'yi tuslayin");
    print("para cekmek icin 3'u tuslayin");
    print("cikis yapmak icin 4'u tuslayin");

    islem = int.parse(stdin.readLineSync()!);

    switch (islem) {
      case 1:
        print("hesabinizin bakiyesi $bakiye TL dir.");
        print("");
        break;
      case 2:
        print("yatirmak istediginiz tutari giriniz: ");
        int tutar = int.parse(stdin.readLineSync()!);
        bakiye = bakiye + tutar;
        print("yeni bakiyeniz= $bakiye");
        print("");
        break;
      case 3:
        print("cekmek istediginiz tutari giriniz: ");
        int tutar = int.parse(stdin.readLineSync()!);
        bakiye = bakiye - tutar;
        if (bakiye >= 0) {
          print("yeni bakiyeniz= $bakiye");
          print("");
        } else {
          print("mevcut bakiyenin uzerinde bir tutar cekemezsiniz");
          print("");
        }
        break;
      case 4:
        print("iyi gunler dileriz $isim");
        print("");
        break;
      default:
        print("hatali islem girisi");
        break;
    }
  } while (islem != 4);
}
