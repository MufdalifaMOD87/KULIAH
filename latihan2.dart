import 'dart:io';
void main(){
  int ? umur;

  stdout.write("Masukkan Umur Anda : ");
  umur = int.parse(stdin.readLineSync()!);

    if (umur<= 12){
      print("Anda termasuk Kategori Anak-anak");
    }else if( umur <= 17){
      print("Anda Masih Remaja");
    }else if (umur <= 59){
      print("Anda Masuk kategori Dewasa");
    }else{
      print("Anda masuk Ke kategori Lansia");
    }
}