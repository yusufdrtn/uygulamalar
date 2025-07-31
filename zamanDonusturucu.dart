import 'dart:io';
// bu uygulama girilen saniyeyi saat:dakika:saniye formatına çevirir.
void main(List<String> args) {
  int saniye, dk, saat, topSaniye;

  print("saate cevirmek istediginiz saniyeyi giriniz: ");
  topSaniye = int.parse(stdin.readLineSync()!);

  saat = topSaniye ~/ 3600;
  dk = (topSaniye % 3600) ~/ 60;
  saniye = (topSaniye % 3600) % 60;

  print("girdiğiniz saniye = $topSaniye, çevrilmiş hali = $saat:$dk:$saniye");
}
