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
                                    setState(() {
                                      couleur=!couleur;
                                    });
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
                                     couleur=!couleur;
                                  },
                                  child: Container(
                                    child: Text("Cameroune", style: TextStyle(color: (couleur)? Colors.white:Colors.grey),),
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
                  flex: 3,
                child: Container(
                 decoration: BoxDecoration(
                  
                
                 ),
                  // child: ListView.builder(
                  //    itemCount: datachaine.length,
                  //   itemBuilder: (context, index){

                  //     return Padding(
                  //       padding: const EdgeInsets.all(8.0),
                        
                  //         child: Container(
                  //           height: 200,
                  //           width: 150,
                  //           decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(10),
                  //             border: Border.all(color: Colors.grey)
                  //           ),
                  //           child: Expanded(
                  //             child: Row(
                  //               children: [
                  //                 Expanded(
                  //                   flex: 2,
                  //                   child: InkWell(
                  //                     onTap: (){
                  //                        Navigator.of(context).pushNamed(CoteD.routeName, arguments:datachaine[index].id );
                  //                     },
                                      
                                         
                  //                       child: Container(
                                            
                  //                          decoration: BoxDecoration(
                  //                             borderRadius: BorderRadius.circular(10),
                  //                             image: DecorationImage(image: AssetImage(datachaine[index].chaine,), fit: BoxFit.cover),
                  //               //border: Border.all(color: Colors.black)
                  //             ),
                  //                       ),
                                      
                  //                   ),
                  //                 ),
                  //                    Expanded(
                  //                      flex: 1,
                  //                      child: Container(
                               
                  //             child: Column(
                  //              crossAxisAlignment: CrossAxisAlignment.start,
                  //              mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(2),
                  //                   child: Container(
                  //                     child: Text(datachaine[index].chaineName),
                  //                   ),
                  //                 ),
                  //                  Padding(
                  //                    padding: const EdgeInsets.all(2),
                  //                    child: Row(
                  //                      children: [
                  //                        Container(
                  //                         child:  Icon(Icons.chat, color: Colors.grey,),
                  //                 ),
                  //                 SizedBox(width: 10,),
                  //                        Container(
                  //                         child: Text(datachaine[index].commentaire.toString()),
                  //                 ),
                  //                      ],
                  //                    ),
                  //                  ),
                  //                    Padding(
                  //                      padding: const EdgeInsets.all(2),
                  //                      child: Row(
                  //                        children: [
                  //                          Container(
                  //                   child: Icon(Icons.favorite_border, color: Colors.grey,),
                  //                 ),
                  //                 SizedBox(width: 10,),
                  //                         Container(
                  //                   child: Text(datachaine[index].jaime.toString())
                  //                 ),
                  //                        ],
                  //                      ),
                  //                    ),
                  //               ],
                  //             ),
                  //                 ),
                  //                    ),
                  //               ],
                  //             ),
                  //          ),
                  //         ),
                        
                  //     );
                  //   }
                  // ),
                  
                 
                  child: GridView.builder(
                   
                    itemCount: datachaine.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                      
                      mainAxisSpacing: 10), 
                    itemBuilder: (BuildContext cxt , int i)=> Card(
                        child: InkWell(
                          onTap: (){
                             Navigator.of(context).pushNamed(CoteD.routeName, arguments:datachaine[i].id );
                          },
                          child: Container(
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(10),
                            //   border: Border.all(color: Colors.black)
                            // ),
                  //           child: GridTile(
                  // //  child: Image.asset(datachaine[i].chaine, fit: BoxFit.cover,),
                  //           footer: GridTileBar(        
                             
                   
                            
                  //    )
                  //           ),
                  child: Column(
                    children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                           decoration: BoxDecoration(
                             
                             image: DecorationImage(image: AssetImage(datachaine[i].chaine ,))
                           ),
                          )),
                          Expanded(child: Container(
                             alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                               decoration:BoxDecoration(
                                 color: Color(0xFF777FFF).withOpacity(0.5),
                               ) ,
                             
                            child: Text(datachaine[i].chaineName,
                                style: TextStyle(
                                  color: Colors.white
                                ),
                                ),                           
                              
                               
                            
                          )
                          )
                    ],
                  ),
                          ),
                        ),
                      )
                    
                    ),
                ),
                )
            
              ],
            ),
          ),
    
      

    );
    
    
    
    
  
      
    
  }
}

