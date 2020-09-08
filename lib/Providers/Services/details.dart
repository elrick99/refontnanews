import 'package:flutter/material.dart';

import 'package:refontnanews/Providers/Models/detail.dart';


class Details with ChangeNotifier{
  final List<ChaineDModel> _item=[
  ChaineDModel(
      idD: 0,
      chaineName: "RTI1",
      imagePro: "images/RTI.jpg",
      jaime: 100,
      commentaire: 12,
      partage: 2,
      pays: "Toute les chaine"
      
    ),
        ChaineDModel(
      idD: 1,
      chaineName: "RTI2",
      imagePro: "images/RTI2.jpg",
      jaime: 290,
      commentaire: 120,
      partage: 4,
       pays: "Cote d'Ivoire"
      
    ),
         ChaineDModel(
      idD: 2,
      chaineName: "RTI3",
      imagePro: "images/RTI3.jpg",
      jaime: 100,
      commentaire: 12,
      partage: 2,
       pays: "Burkina-Faso"
      
    ),
         ChaineDModel(
      idD: 3,
      chaineName: "RTI2",
      imagePro: "images/RTI3.png",
      jaime: 600,
      commentaire: 42,
      partage: 5,
       pays: "Ghana"
      
    ),
          ChaineDModel(
      idD: 4,
      chaineName: "A+ivoire",
      imagePro: "images/RTI4.png",
      jaime: 500,
      commentaire: 62,
      partage: 20,
       pays: "Cameroune"
      
    ),
          ChaineDModel(
      idD: 5,
      chaineName: "Trace Afrique",
      imagePro: "images/traceAfri.png",
      jaime: 500,
      commentaire: 25,
      partage: 7,
       pays: "Canal"
    ),
         ChaineDModel(
      idD: 6,
      chaineName: "Trace Afrique",
      imagePro: "images/traceAfri.png",
      jaime: 200,
      commentaire: 12,
      partage: 2,
      
    ),
         ChaineDModel(
      idD: 7,
      chaineName: "Trace Afrique",
      imagePro: "images/traceAfri.png",
      jaime: 700,
      commentaire: 14,
      partage: 2,
      
    ),
           ChaineDModel(
      idD: 7,
      chaineName: "TF1",
      imagePro: "images/TF1.png",
      jaime: 400,
      commentaire: 122,
      partage: 3,
      
    ),
              ChaineDModel(
      idD: 8,
      chaineName: "tv_RTB4",
      imagePro: "images/tv_RTB4.png",
      jaime: 400,
      commentaire: 122,
      partage: 3,
      
    ),
               ChaineDModel(
      idD: 9,
      chaineName: "RTB5",
      imagePro: "images/RTB5.png",
      jaime: 100,
      commentaire: 22,
      partage: 32,
      
    ),
                  ChaineDModel(
      idD: 10,
      chaineName: "Joy-Prime",
      imagePro: "images/GHA5.jpg",
      jaime: 40,
      commentaire: 2,
      partage: 3,
      
    ),
                ChaineDModel(
      idD: 11,
      chaineName: "ADOM-tv",
      imagePro: "images/GHA3.png",
      jaime: 40,
      commentaire: 2,
      partage: 3,
      
    ),
               ChaineDModel(
      idD: 12,
      chaineName: "U-tv",
      imagePro: "images/GHA2.jpg",
      jaime: 500,
      commentaire: 200,
      partage: 35,
      
    ),
               ChaineDModel(
      idD: 13,
      chaineName: "Lve-Tv",
      imagePro: "images/CHAIN4.jpg",
      jaime: 300,
      commentaire: 100,
      partage: 35,
      
    ),
               ChaineDModel(
      idD: 14,
      chaineName: "RTB-2",
      imagePro: "images/BURKINA2.png",
      jaime: 500,
      commentaire: 10,
      partage: 35,
      
    ),
                 ChaineDModel(
      idD: 15,
      chaineName: "Canal+",
      imagePro: "images/canal1.png",
      jaime: 600,
      commentaire: 100,
      partage: 35,
      
    ),
                ChaineDModel(
      idD: 16,
      chaineName: "images/Canal+",
      imagePro: "images/canal1.png",
      jaime: 600,
      commentaire: 100,
      partage: 35,
      
    ),
               ChaineDModel(
      idD: 17,
      chaineName: "Canal2",
      imagePro: "images/CAMEROU2.jpg",
      jaime: 100,
      commentaire: 20,
      partage: 3,
      
    ),
                ChaineDModel(
      idD: 18,
      chaineName: "ETV_News",
      imagePro: "images/CAME3.jpg",
      jaime: 200,
      commentaire: 100,
      partage: 5,
      
    ),
    
   
    
    

  ];
  List<ChaineDModel> get item{
    return [..._item];
  }

  
   ChaineDModel findById(int idD){
    return _item.firstWhere((det) => det.idD==idD);
   }
    void addProduct(){
    notifyListeners();
  }
}