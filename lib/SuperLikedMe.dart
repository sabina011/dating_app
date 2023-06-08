import 'package:flutter/material.dart';

class SuperLikedMe extends StatefulWidget {
  const SuperLikedMe({super.key});

  @override
  State<SuperLikedMe> createState() => _SuperLikedMeState();
}

class _SuperLikedMeState extends State<SuperLikedMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: <Widget>[
               Padding(padding: const EdgeInsets.all(16),
                 child:Text("Super Liked Me",style: TextStyle(fontSize: 30.0)),
    ),

               TextField(
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(21),
                       borderSide: BorderSide(
                         color: Colors.deepOrange,
                       )),

                   hintText: 'Search Here',
                   prefixIcon: Icon(Icons.search),
                 ),
               ),
               SizedBox(height: 30,),
               const Row(
              children: <Widget>[
                Text('Super Likes'),
                  SizedBox(width: 20,),
                  CircleAvatar(
                 child: Text("5", ),
                    backgroundColor: Colors.red,
                    radius: 15,
                 ),
                 Spacer(),
                 Text('1h', style:TextStyle(fontWeight: FontWeight.bold,)),
              ],
    ),
               SizedBox(height: 30,),
               ListView.builder(
                 itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 14),


                     child: ListTile(
                      title: Text("Sabina", style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),
                       leading: CircleAvatar( backgroundImage:AssetImage("assets/images/i.jpg"),
                         radius: 30,
                       ),
                       trailing: Column(
                         children: [
                          Text('ONLINE',style: TextStyle(color: Colors.green),),
                           Icon(Icons.star,color: Colors.blue,),
                         ],
                       ),
                       subtitle: Row(
                         children: [
                           Icon(Icons.location_on,color: Colors.black,),

                           Text('34 Kilometers Away' ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
                         ],
                       ),
                       
                 ),
                  );
                 }
                 ),
    ]
           ),
         ),
       ),

  );
  }
}
