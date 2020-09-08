import 'package:flutter/material.dart';
import 'package:refontnanews/Providers/Models/chaine.dart';


class Chaines with ChangeNotifier{
  final List<ChaineModel> _items=[
    ChaineModel(
      id: 0,
      chaineName: "RTI1",
      chaine: "images/RTI.jpg",
      imagePro: "images/RTI.jpg",
      jaime: 100,
      commentaire: 12,
      partage: 2,
      
    ),
        ChaineModel(
      id: 1,
      chaineName: "RTI2",
      chaine: "images/RTI2.jpg",
      imagePro: "images/RTI2.jpg",
      jaime: 290,
      commentaire: 120,
      partage: 4,
      
    ),
          ChaineModel(
      id: 2,
      chaineName: "RTI3",
      chaine: "images/RTI3.png",
      imagePro: "images/RTI3.png",
      jaime: 100,
      commentaire: 12,
      partage: 2,
      
    ),
          ChaineModel(
      id: 3,
      chaineName: "Live tv",
      chaine: "images/GHA4.jpg",
      imagePro: "images/RTI3.png",
      jaime: 600,
      commentaire: 42,
      partage: 5,
      
    ),
          ChaineModel(
      id: 4,
      chaineName: "A+ivoire",
      chaine: "images/RTI4.png",
      imagePro: "images/RTI4.png",
      jaime: 500,
      commentaire: 62,
      partage: 20,
      
    ),
          ChaineModel(
      id: 5,
      chaineName: "Trace Afrique",
      chaine: "images/traceAfri.png",
      imagePro: "images/traceAfri.png",
      jaime: 500,
      commentaire: 25,
      partage: 7,
      
    ),
          ChaineModel(
      id: 6,
      chaineName: "Trace Afrique",
      chaine: "images/traceAfri.png",
      imagePro: "images/traceAfri.png",
      jaime: 200,
      commentaire: 12,
      partage: 2,
      
    ),
          ChaineModel(
      id: 7,
      chaineName: "Trace Afrique",
      chaine: "images/traceAfri.png",
      imagePro: "images/traceAfri.png",
      jaime: 700,
      commentaire: 14,
      partage: 2,
      
    ),
           ChaineModel(
      id: 7,
      chaineName: "TF1",
      chaine: "images/TF1.png",
      imagePro: "images/TF1.png",
      jaime: 400,
      commentaire: 122,
      partage: 3,
      
    ),
              ChaineModel(
      id: 8,
      chaineName: "tv_RTB4",
      chaine: "images/tv_RTB4.png",
      imagePro: "images/tv_RTB4.png",
      jaime: 400,
      commentaire: 122,
      partage: 3,
      
    ),
               ChaineModel(
      id: 9,
      chaineName: "RTB5",
      chaine: "images/RTB5.png",
      imagePro: "images/RTB5.png",
      jaime: 100,
      commentaire: 22,
      partage: 32,
      
    ),
                  ChaineModel(
      id: 10,
      chaineName: "Joy-Prime",
      chaine: "images/GHA5.jpg",
      imagePro: "images/GHA5.jpg",
      jaime: 40,
      commentaire: 2,
      partage: 3,
      
    ),
                ChaineModel(
      id: 11,
      chaineName: "ADOM-tv",
      chaine: "images/GHA3.png",
      imagePro: "images/GHA3.png",
      jaime: 40,
      commentaire: 2,
      partage: 3,
      
    ),
               ChaineModel(
      id: 12,
      chaineName: "U-tv",
      chaine: "images/GHA2.jpg",
      imagePro: "images/GHA2.jpg",
      jaime: 500,
      commentaire: 200,
      partage: 35,
      
    ),
               ChaineModel(
      id: 13,
      chaineName: "Lve-Tv",
      chaine: "images/CHAIN4.jpg",
      imagePro: "images/CHAIN4.jpg",
      jaime: 300,
      commentaire: 100,
      partage: 35,
      
    ),
               ChaineModel(
      id: 14,
      chaineName: "RTB-2",
      chaine: "images/BURKINA2.png",
      imagePro: "images/BURKINA2.png",
      jaime: 500,
      commentaire: 10,
      partage: 35,
      
    ),
                 ChaineModel(
      id: 15,
      chaineName: "Canal+",
      chaine: "images/canal1.png",
      imagePro: "images/canal1.png",
      jaime: 600,
      commentaire: 100,
      partage: 35,
      
    ),
                ChaineModel(
      id: 16,
      chaineName: "images/Canal+",
      chaine: "images/canal1.png",
      imagePro: "images/canal1.png",
      jaime: 600,
      commentaire: 100,
      partage: 35,
      
    ),
                ChaineModel(
      id: 17,
      chaineName: "Canal2",
      chaine: "images/CAMEROU2.jpg",
      imagePro: "images/CAMEROU2.jpg",
      jaime: 100,
      commentaire: 20,
      partage: 3,
      
    ),
                ChaineModel(
      id: 18,
      chaineName: "ETV_News",
      chaine: "images/CAME3.jpg",
      imagePro: "images/CAME3.jpg",
      jaime: 200,
      commentaire: 100,
      partage: 5,
      
    ),
    
   
    
    

  ];
  List<ChaineModel> get items{
    return [..._items];
  }

  
   ChaineModel findById(String id){
    return _items.firstWhere((det) => det.id==id);
   }
    void addProduct(){
    notifyListeners();
  }
}