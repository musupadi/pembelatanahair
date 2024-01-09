import 'dart:core';

List<String> CategoryImage =  ['https://www.lg.com/id/images/kulkas/md07580353/md07580353-350x350.jpg','https://www.lg.com/id/images/kulkas/md07580353/md07580353-350x350.jpg','https://www.lg.com/id/images/kulkas/md07580353/md07580353-350x350.jpg','https://www.lg.com/id/images/kulkas/md07580353/md07580353-350x350.jpg'];
List<String> CategoryName =  ['Gadget','Baju','Furnitur','Kendaraan'];


String SpaceURL(){
  return "%20";
}
String NewLine(){
  return "%0A";
}
String NumberWA(){
  return "6285814094214";
}
String MottoBIK(){
  return "Kami adalah sebuah PT yang membantu masyarakat dalam melakukan Kredit";
}
String BaseURLWA(){
  return "whatsapp://send?phone=";
}
String BaseURLWA2(){
  return "https://api.whatsapp.com/send?phone=";
}
String WAme(String id){
  return BaseURLWA()+NumberWA()+Chat(id);
}
String WAme2(String id){
  return BaseURLWA2()+NumberWA()+Chat(id);
}
String Chat(String IDFormulir){
  return "&text=Halo"+
      SpaceURL()+
      "Saya"+
      SpaceURL()+
      "Ingin"+
      SpaceURL()+
      "Kredit"+
      SpaceURL()+
      "Barang"+
      SpaceURL()+
      "dengan"+
      SpaceURL()+
      "Kode"+
      SpaceURL()+
      "Formulir"+
      SpaceURL()+
      "$IDFormulir";
}