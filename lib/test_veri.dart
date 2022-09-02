
import 'package:bilgi_testi/soru.dart';
class test_veri{

  int _index=0;

  List<Soru> _sorular=[
    Soru(soru:'Titanic gelmiş geçmiş en büyük gemidir',yanit:false) ,
    Soru(soru:'Dünyadaki tavuk sayısı insan sayısından fazladır',yanit:true),
    Soru(soru:'Kelebeklerin ömrü bir gündür',yanit:false),
    Soru(soru:'Dünya düzdür',yanit:false),
    Soru(soru:'Kaju fıstığı aslında bir meyvenin sapıdır',yanit:true),
    Soru(soru:'Fatih Sultan Mehmet hiç patates yememiştir',yanit:true),
    Soru(soru:'Fransızlar 80 demek için, 4 - 20 der',yanit:true),

  ];

  String getSoru(){
    return _sorular[_index].soru;
  }

  bool getYanit(){
    return _sorular[_index].yanit;
  }

  void arttirma(){
    if(_index<_sorular.length-1){
      _index++;
  }
}

bool testbittimi(){
    if(_index>=_sorular.length-1){
      return true;
    }else{
      return false;
    }
}

void indexsifirla(){
    _index=0;
}


}
