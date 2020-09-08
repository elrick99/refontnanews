// import 'package:flutter/material.dart';

// class Video extends StatelessWidget {
//    int _index = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        body: DefaultTabController(
//         length: 6,
//         child: Column(
//           children: <Widget>[
//             Container(
//               constraints: BoxConstraints.expand(height: 50),
//               child: TabBar(tabs: [
//                 Tab(text: "Toute les chaine"),
//                 Tab(text: "Cote D'Ivoire"),
//                 Tab(text: "Burkina-faso"),
//                  Tab(text: "Ghana"),
//                 Tab(text: "Cameroune"),
//                 Tab(text: "Canal"),
//               ]),
//             ),
//             Expanded(
//               child: Container(
//                 child: TabBarView(children: [
//                   Container(
//                     child: Text("Toute les chaine"),
//                   ),
//                   Container(
//                     child: Text("Cote D'Ivoire"),
//                   ),
//                   Container(
//                     child: Text("Burkina-faso"),
//                   ),
//                    Container(
//                     child: Text("Ghana"),
//                   ),
//                    Container(
//                     child: Text("Cameroune"),
//                   ),
//                    Container(
//                     child: Text("Canal"),
//                   ),
//                 ]),
//               ),
//             )
//           ],
//         ),
//       ),
      
      
//     );
//   }
// }

import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:refontnanews/Providers/Services/Chaines.dart';
import 'package:refontnanews/Providers/Services/details.dart';
import 'package:refontnanews/Screens/coteD.dart';

class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  bool couleur = false;
  bool couleur1 = false;
  bool couleur2 = false;
  bool couleur3 = false;
  bool couleur4 = false;
  bool couleur5 = false;
  bool couleur6 = false;

  @override
  Widget build(BuildContext context) {
     final provider = Provider.of<Chaines>(context);
     final providers=Provider.of<Details>(context);
    final datachaine = provider.items;
    return Scaffold(
      body:    
          Container(
            child: Column(
         //textBaseline: TextBaseline.alphabetic,
              children: [
               
                        Container(
                color: Color(0xFF777FFF),
                height: 70,
                child: Column(
                  children: [
                   SizedBox(height: 25,),
                    Expanded(
                      flex: 0,
                    child: Container(
        child: Column(
            children: [
              Container(
               height: 30,
                child:  Container(          
                     
                      alignment: Alignment.bottomCenter,
                        child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [        
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: (){
                                   //  Navigator.pushNamed(context, "chainePays");
                                  },
                                  child: Container(
                                    child: Text("Toute les chaine", style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                                
                              ),
                                Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, "chainePays");
                                  },
                                  child: Container(
                                    child: Text("Cote d'Ivoire", style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                                
                              ),

                                Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: (){
                                     Navigator.pushNamed(context, "chainePaysB");
                                  },
                                  child: Container(
                                    child: Text("Burkina-faso", style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                                
                              ),
                                Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                   onTap: (){
                                     Navigator.pushNamed(context, "chainePaysC");
                                  },
                                  child: Container(
                                    child: Text("Cameroune", style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                                
                              ),
                                Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                   onTap: (){
                                     Navigator.pushNamed(context, "chainePaysG");
                                  },
                                  child: Container(
                                    child: Text("Ghana", style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                                
                              ),
                                Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                   onTap: (){
                                     Navigator.pushNamed(context, "chainePaysCa");
                                  },
                                  child: Container(
                                    child: Text("Canal", style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                                
                              ),
                            ],
                            ),
                         
                      ),
              ),
                         ],
                          
                            ),
                         
                      ),
                    )
                  ],
                ),
              ),
                
                Expanded(
                  child: Container(
                    child: GridView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: datachaine.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 3/2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10), 
                      itemBuilder: (BuildContext cxt , int i)=> Card(
                          child: InkWell(
                            onTap: (){
                               Navigator.of(context).pushNamed(CoteD.routeName, arguments:datachaine[i].id );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black)
                              ),
                              child: GridTile(
                     child: Image.asset(datachaine[i].chaine, fit: BoxFit.cover,),
                              footer: GridTileBar(        
                              backgroundColor: Colors.black54,
                     
                              
                      )
                              ),
                            ),
                          ),
                        )
                      
                      ),
                  ),
                ),
              ],
            ),
          ),
    
      

    );
    
    
    
    
  
      
    
  }
}

// Container(
//         child: Column(
//           children: [
//             Container(
//               color: Color(0xFF777FFF),
//               height: 60,
//               child: Column(
//                 children: [
//                   SizedBox(height: 20,),
//                   Expanded(
//                     flex: 0,
//                     child: Container(          
//                     height: 30,
//                       child: ListView(
//                             scrollDirection: Axis.horizontal,
//                             children: [
                             
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 child: Text("Toute les chaine", style: TextStyle(color: Colors.white),),
//                               ),
                              
//                             ),
//                               Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 child: Text("Cote d'Ivoire", style: TextStyle(color: Colors.white),),
//                               ),
                              
//                             ),

//                               Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 child: Text("Burkina-faso", style: TextStyle(color: Colors.white),),
//                               ),
                              
//                             ),
//                               Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 child: Text("Cameroune", style: TextStyle(color: Colors.white),),
//                               ),
                              
//                             ),
//                               Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 child: Text("Ghana", style: TextStyle(color: Colors.white),),
//                               ),
                              
//                             ),
//                               Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 child: Text("Canal", style: TextStyle(color: Colors.white),),
//                               ),
                              
//                             ),
//                           ],
//                           ),
                       
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(child: Container())

//           ],
//         ),
//       ),