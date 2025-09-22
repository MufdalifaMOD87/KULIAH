import 'dart:io';

void main(){
  int ? angka ;

  stdout.write("Masukkan angka (1-7) : ");
  angka = int.parse(stdin.readLineSync()!);

  switch (angka){
    case 1 :
      print("Hari ini adalah senin");
      break;
    case 2 :
      print("Hari ini adalah selasa");
      break;
    case 3:
      print("Hari ini adalah rabu");
      break;
    case 4:
      print("Hari ini adalah kamis");
      break;
    case 5:
      print("Hari ini adalah jumat");
      break;
    case 6:
      print("Hari ini adalah sabtu");
      break;
    case 7:
      print("Hari ini adalah minggu");
      break;
    default:
    print("Angka tidak valid");
  }
}