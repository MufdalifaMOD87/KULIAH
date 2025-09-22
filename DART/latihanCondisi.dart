import 'dart:io';

void main(){
  int? nilai;

stdout.write("masukkan nilai : ");
nilai= int.parse(stdin.readLineSync()!);
  if (nilai >= 80){
    print("Lulus dengan nilai A");
  } else if(nilai>=75){
    print("Lulus dengan nilai B");
  }else if(nilai>=65){
    print("Lulus dengan Nilai C");
  }else{
    print("anda tidak lulus");
  }
  

  
}