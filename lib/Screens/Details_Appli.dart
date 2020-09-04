

import 'package:flutter/material.dart';
import 'package:refontnanews/Widgets/AppBar_Details.dart';

class DetailAppli extends StatefulWidget {
  @override
  _DetailAppliState createState() => _DetailAppliState();
}

class _DetailAppliState extends State<DetailAppli> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: Column(
          children: [
            Container(
              height: 75,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.amber),
              child: AppBarDetail(),
            ),
            Expanded(child:
             ListView(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(child: Text("Présidentielle en Côte d'Ivoire: à la découverte des candidats",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                        ),
                        ),
                        SizedBox(height: 10,),
                        Card(
                          
                          elevation: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 20,
                                child: Text("Fraternite matin"),),
                              Container(
                                height: 20,
                                child: Text("04-sept.2020"),),
                            ],
                          ),
                        ),
                         SizedBox(height: 10,),
                        
                        Container(
                          
                          height: 200,
                          width: 300,
                          color: Colors.blue,

                        ),
                         Container(
                           height: 50,
                            width: 300,
                           child: Text("La Côte d'Ivoire se dirige vers une élection pleine d'incertitude",
                           style: TextStyle(
                             
                           ),
                           ),
                           ),
                            Container(
                           height: 110,
                            width: 300,
                           child: Text(" Les partis traditionnels de la scène politique ivoirienne auront leurs candidats en lice pour l'élection présidentielle d'octobre, mais il faudra compter avec les candidats indépendants qui tentent de briser le cycle de la configuration politique classique que le pays connait depuis l'avènement du multipartisme.",
                           style: TextStyle(
                            fontWeight:FontWeight.bold
                           ),
                           ),
                           ),
                           SizedBox(height: 10,),
                              Container(
                           height: 110,
                            width: 300,
                           child: Text(" Les partis traditionnels de la scène politique ivoirienne auront leurs candidats en lice pour l'élection présidentielle d'octobre, mais il faudra compter avec les candidats indépendants qui tentent de briser le cycle de la configuration politique classique que le pays connait depuis l'avènement du multipartisme.",
                           style: TextStyle(
                            fontWeight:FontWeight.bold
                           ),
                           ),
                           ),
                            SizedBox(height: 10,),
                              Container(
                           height: 110,
                            width: 300,
                           child: Text(" Les partis traditionnels de la scène politique ivoirienne auront leurs candidats en lice pour l'élection présidentielle d'octobre, mais il faudra compter avec les candidats indépendants qui tentent de briser le cycle de la configuration politique classique que le pays connait depuis l'avènement du multipartisme.",
                           style: TextStyle(
                            fontWeight:FontWeight.bold
                           ),
                           ),
                           ),
                            SizedBox(height: 10,),
                              Container(
                           height: 110,
                            width: 300,
                           child: Text(" Les partis traditionnels de la scène politique ivoirienne auront leurs candidats en lice pour l'élection présidentielle d'octobre, mais il faudra compter avec les candidats indépendants qui tentent de briser le cycle de la configuration politique classique que le pays connait depuis l'avènement du multipartisme.",
                           style: TextStyle(
                            fontWeight:FontWeight.bold
                           ),
                           ),
                           ),
                          

                        
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: 
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(100)
                            ),
                          ),
                           Container(
                            
                            child: Text("J'aime"),
                          )
                        ],
                      ),
                      ),
                    ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                      child: 
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(100)
                          ),
                        ),
                         Container(
                          
                          child: Text("J'aime"),
                        )
                      ],
                    ),
                    ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                      child: 
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(100)
                          ),
                        ),
                         Container(
                          
                          child: Text("J'aime"),
                        )
                      ],
                    ),
                    ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                      child: 
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(100)
                          ),
                        ),
                         Container(
                          
                          child: Text("J'aime"),
                        )
                      ],
                    ),
                    ),
                            ),
                  ],
                ),
                SizedBox(height: 10,),
                Card(
                  elevation: 5,
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child:IconButton(icon: Icon(Icons.ac_unit, color: Colors.red,), onPressed: (){})
                                  ),
                                   Container(
                                
                                child: Text("Trending video"),
                              )
                                ],
                              ),
                            ),
                                 Container(
                                
                                child: Text("Plus",
                                style: TextStyle(
                                  color: Colors.blue
                                ),
                                ),
                              ),
                          ],
                        ),
                        Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 150,
                                  width: 300,
                                  color: Colors.pink,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 20,
                                            width: 50,
                                            color: Colors.black,
                                            child: Center(
                                              child: Text("01:09",
                                              style: TextStyle(
                                                color:Colors.white
                                              ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                      ),
                                      SizedBox(height: 90,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left:8.0),
                                            child: Container(
                                              child: Text("Moi quand je suis en train de conduire une fille",
                                              style: TextStyle(
                                                color: Colors.white
                                              ),
                                              ),
                                            ),
                                          ),
                                              Container(
                                        child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Container(child:  Icon(Icons.favorite)),
                                                 Container(child: Text("6.1k"),)
                                              ],
                                            ),
                                          ),
                                        ),
                                         Padding(
                                           padding: const EdgeInsets.all(8.0),
                                           child: Container(
                                            child: Row(
                                              children: [
                                                Container(child: Icon(Icons.favorite)),
                                                 Container(child: Text("6.1k"),)
                                              ],
                                            ),
                                        ),
                                         ),
                                         Padding(
                                           padding: const EdgeInsets.all(8.0),
                                           child: Container(
                                            child: Row(
                                              children: [
                                                Container(child: Icon(Icons.favorite)),
                                                 Container(child: Text("6.1k"),)
                                              ],
                                            ),
                                        ),
                                         ),
                                      ],
                                        ),
                                      ),
                                        ],
                                      ),
                                    
                                    

                                    ],
                                  ),
                                ),
                              ),
                               Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 150,
                                  width: 300,
                                  color: Colors.pink,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 20,
                                            width: 50,
                                            color: Colors.black,
                                            child: Center(
                                              child: Text("01:09",
                                              style: TextStyle(
                                                color:Colors.white
                                              ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                      ),
                                      SizedBox(height: 90,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left:8.0),
                                            child: Container(
                                              child: Text("Moi quand je suis en train de conduire une fille",
                                              style: TextStyle(
                                                color: Colors.white
                                              ),
                                              ),
                                            ),
                                          ),
                                              Container(
                                        child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Container(child:  Icon(Icons.favorite)),
                                                 Container(child: Text("6.1k"),)
                                              ],
                                            ),
                                          ),
                                        ),
                                         Padding(
                                           padding: const EdgeInsets.all(8.0),
                                           child: Container(
                                            child: Row(
                                              children: [
                                                Container(child: Icon(Icons.favorite)),
                                                 Container(child: Text("6.1k"),)
                                              ],
                                            ),
                                        ),
                                         ),
                                         Padding(
                                           padding: const EdgeInsets.all(8.0),
                                           child: Container(
                                            child: Row(
                                              children: [
                                                Container(child: Icon(Icons.favorite)),
                                                 Container(child: Text("6.1k"),)
                                              ],
                                            ),
                                        ),
                                         ),
                                      ],
                                        ),
                                      ),
                                        ],
                                      ),
                                    
                                    

                                    ],
                                  ),
                                ),
                              ),
                               Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 150,
                                  width: 300,
                                  color: Colors.pink,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 20,
                                            width: 50,
                                            color: Colors.black,
                                            child: Center(
                                              child: Text("01:09",
                                              style: TextStyle(
                                                color:Colors.white
                                              ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                      ),
                                      SizedBox(height: 90,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left:8.0),
                                            child: Container(
                                              child: Text("Moi quand je suis en train de conduire une fille",
                                              style: TextStyle(
                                                color: Colors.white
                                              ),
                                              ),
                                            ),
                                          ),
                                              Container(
                                        child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Container(child:  Icon(Icons.favorite)),
                                                 Container(child: Text("6.1k"),)
                                              ],
                                            ),
                                          ),
                                        ),
                                         Padding(
                                           padding: const EdgeInsets.all(8.0),
                                           child: Container(
                                            child: Row(
                                              children: [
                                                Container(child: Icon(Icons.favorite)),
                                                 Container(child: Text("6.1k"),)
                                              ],
                                            ),
                                        ),
                                         ),
                                         Padding(
                                           padding: const EdgeInsets.all(8.0),
                                           child: Container(
                                            child: Row(
                                              children: [
                                                Container(child: Icon(Icons.favorite)),
                                                 Container(child: Text("6.1k"),)
                                              ],
                                            ),
                                        ),
                                         ),
                                      ],
                                        ),
                                      ),
                                        ],
                                      ),
                                    
                                    

                                    ],
                                  ),
                                ),
                              ),

                              
                            ],
                          ),
                        ),
                        Divider(
                          height: 4,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  color: Colors.black,
                                ),
                                Container(
                                  height: 80,
                                  width: 250,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Text("le ministre Hamede Bakayoko a change le nom de la comune abobo "),
                                        ),
                                      ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                           
                                          child: Text("Benson il y a 16h",
                                          style: TextStyle(
                                            color: Colors.black38
                                          ),
                                          ),
                                      ),
                                        )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  color: Colors.black,
                                ),
                                Container(
                                  height: 80,
                                  width: 250,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Text("le ministre Hamede Bakayoko a change le nom de la comune abobo "),
                                        ),
                                      ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                           
                                          child: Text("Benson il y a 16h",
                                          style: TextStyle(
                                            color: Colors.black38
                                          ),
                                          ),
                                      ),
                                        )
                                    ],
                                  ),
                                )
                              ],
                            ),
                        ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  color: Colors.black,
                                ),
                                Container(
                                  height: 80,
                                  width: 250,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Text("le ministre Hamede Bakayoko a change le nom de la comune abobo "),
                                        ),
                                      ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                           
                                          child: Text("Benson il y a 16h",
                                          style: TextStyle(
                                            color: Colors.black38
                                          ),
                                          ),
                                      ),
                                        )
                                    ],
                                  ),
                                )
                              ],
                            ),
                        ),
                          )
                      ],
                    ),
                  ),
                )
              ],
            )
            )
          ],
        ),
      ),
    );
  }
}
