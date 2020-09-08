import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refontnanews/Providers/Services/Chaines.dart';
import 'package:refontnanews/Providers/Services/details.dart';


class CoteD extends StatelessWidget {
   static const routeName="coteD";
  @override
  Widget build(BuildContext context) {
      final detailId= ModalRoute.of(context).settings.arguments as int;
   final provider= Provider.of<Details>(context,
   listen: false,
   ).findById(detailId);
   final providers=Provider.of<Chaines>(context);
   
   
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
           Container(
             height: 180,
             width: 400,
             decoration: BoxDecoration(
               color: Colors.indigo,
               borderRadius: BorderRadius.circular(10),
               image: DecorationImage(image: AssetImage(provider.imagePro,),fit: BoxFit.cover)
             ),
           ),
           Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column
                       (
                      children: <Widget>[
                 
                           Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Text(provider.chaineName,
                              style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              child: Icon(Icons.arrow_drop_down),
                            ),
                          ],
                        ),
                        
                           Row(
                          children: <Widget>[
                            Container(
                              child: Text("245K view ",
                              style: TextStyle(fontSize: 15,
                              color: Colors.grey
                              ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                                 child: Text("il y a une minute ",
                              style: TextStyle(fontSize: 15,
                              color: Colors.grey
                              ),
                              )
                            ),
                          ],
                        ),
                         SizedBox(height: 10,),
                         Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                           Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                 color: Color(0xFF777FFF).withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                             child: Row(
                               children: <Widget>[
                                 Container(child: IconButton(icon: Icon(Icons.thumb_up, color: Colors.white,), onPressed: (){})),
                                 Container(
                                 child: Text(provider.jaime.toString(),
                              style: TextStyle(fontSize: 15,
                              color: Colors.white
                              ),
                              )
                            ),
                               ],
                             ),
                           ),
                            SizedBox(width: 10,),
                                Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                             child: Row(
                               children: <Widget>[
                                 Container(child: IconButton(icon: Icon(Icons.thumb_up,color: Colors.grey,), onPressed: (){})),
                                 Container(
                                 child: Text("17K ",
                              style: TextStyle(fontSize: 15,
                              color: Colors.grey
                              ),
                              )
                            ),
                               ],
                             ),
                           ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(100),
                                  
                                ),
                              child: Center(child: IconButton(icon: Icon(Icons.share, color: Colors.grey,), onPressed: (){})), 
                            ),
                         
                              
                          ],
                        ),
                          Divider(),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                           Row(
                             children: <Widget>[
                               CircleAvatar(
                                 //child: AssetImage(provider.images),
                                 //child: Image.asset(provider.images, fit: BoxFit.cover,),
                                 backgroundImage: AssetImage(provider.imagePro,),
                               ),
                               SizedBox(width: 5,),
                                   Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[
                               Text(provider.chaineName),
                               Text("1,7 Abonnés",
                               style: TextStyle(
                                 color:Colors.grey
                               ),
                               )
                             ],
                           ),
                             ],
                           ),
                       
                                   Row(
                                     children: <Widget>[
                                       Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(100)
                              ),
                            child: Center(child: IconButton(icon: Icon(Icons.notification_important, color: Colors.red,), onPressed: (){})), 
                          ),
                          SizedBox(width: 3,),
                               Container(
                            
                            child: Center(child: Text("S'abonner",
                            style: TextStyle(
                              color:Colors.red,
                              fontWeight: FontWeight.bold
                            ),
                            )), 
                          ),
                                     ],
                                   ),
                            
                          ],
                        ) ,
                        Divider(),
                        Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount:providers.items.length,
                            itemBuilder: (context, index)=>
                             Padding(padding: const EdgeInsets.all(10),
                             child: Container(
                              height: 100,
                              width: 200,
                               
                               decoration: BoxDecoration(
                                 
                                 borderRadius: BorderRadius.circular(20),
                                 border: Border.all(color: Colors.grey),
                                image: DecorationImage(image: AssetImage(providers.items[index].imagePro),
                                fit: BoxFit.cover
                                )
                               ),
                             ),
                             )
                            ),
                        )
                      ],
                      
                     
                    ),
                  ),
                )
          ],
        ),
      ),
    );
  }
}