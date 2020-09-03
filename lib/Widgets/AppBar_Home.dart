import 'package:flutter/material.dart';

class AppBarHome extends StatefulWidget {
  @override
  _AppBarHomeState createState() => _AppBarHomeState();
}

class _AppBarHomeState extends State<AppBarHome> {

  bool couleur= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Column(
          children: [
            Expanded(  
              flex: 1,
              child: Container(
                color: Colors.red,
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                              child:  Row(children: [
                                      Container(
                                height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)
                              ),
                              ),
                                 Container(child: Icon(Icons.local_library, size: 10, color: Colors.white,),)
                                ],
                                )
                              ),
                            ],
                          ),
                         
                          Container(
                            height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          ),
                          Container(
                           child:  Icon(Icons.file_download, color: Colors.white,),
                          ),
                           Container(
                           child: Icon(Icons.enhanced_encryption, color: Colors.white,),
                          )
                        ],
                      ),
                      SizedBox(height: 8,),

                     Expanded(

                       child: Container(
                         child: Row(
                           children: [
                             Expanded(
                               flex: 5,
                               child: Container(
                                 color: Colors.white,
                                 child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: InkWell(
                                          onTap: (){
                                            couleur=!couleur;
                                          },
                                          child: Container(child: Text( 
                                            "La maison",
                                           style: TextStyle(
                                            color:Colors.grey
                                          ),
                                          ),),
                                        ),
                                      ),
                                        Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(child: Text("La maison",
                                         style: TextStyle(
                                          color:Colors.black87,
                                          fontWeight: FontWeight.bold
                                        ),
                                        ),),
                                      ),
                                        Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(child: Text("La maison",
                                         style: TextStyle(
                                          color:Colors.grey
                                        ),
                                        ),),
                                      ),
                                        Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(child: Text( "La maison",
                                        style: TextStyle(
                                          color:Colors.grey
                                        ),
                                        ),),
                                      ),
                                        Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(child: Text("La maison",
                                         style: TextStyle(
                                          color:Colors.grey
                                        ),
                                        ),),
                                      ),
                                         Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(child: Text("La maison",
                                         style: TextStyle(
                                          color:Colors.grey
                                        ),
                                        ),),
                                      ),
                                         Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(child: Text("La maison",
                                         style: TextStyle(
                                          color:Colors.grey
                                        ),
                                        ),),
                                      )
                                    ],
                                  ),
                               ),
                             ),
                             Expanded(
                               flex: 1,
                               child: Container(
                                 color: Colors.white,
                                 child: Column(
                                    children: [
                                      Icon(Icons.add, color:Colors.red),
                                   ],
                                 ),
                               ),
                             )
                           ],
                         )
                       )
                       )
                  ],
                ),
              ),
            ),
          
          ],
        ),
      ),
      
    );
  }
}