import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
   @override
  Widget build (BuildContext context) {
     return Scaffold(

       drawer: Drawer(

      child: ListView(

        children:[
         const  UserAccountsDrawerHeader(
              accountName: Text('Aditya Verma'),
              accountEmail: Text('adityaverma15.cs@gmail.com'),
          currentAccountPicture: CircleAvatar(


            backgroundImage: AssetImage("assets/images/IMG-20230930-WA0012.jpg"),
          ),

          ),
       const   Divider(),
       const   SizedBox(
            height: 5,

          ),
       const   ListTile(
            leading: Icon(Icons.folder),
            title: Text("My Files"),

          ),
       const   ListTile(
            leading: Icon(Icons.people),
            title: Text("Shared with me"),
          ),

      const    ListTile(
            leading: Icon(Icons.star_outlined),
            title: Text('Stared'),
          ),
      const ListTile(
            leading: Icon(Icons.watch_later_outlined),
            title: Text('Recent'),
          ),
      const ListTile(
            leading: Icon(Icons.offline_pin),
            title: Text('Offline'),
          ),
       const   ListTile(
            leading: Icon(Icons.upload),
            title: Text('Uploads'),
          ),
          ListTile(
            leading: Icon(Icons.backup),
            title: Text('Backups'),
           
            onTap: (){

            },
          ),
       const   Divider(),
          ListTile(

            title: const Text('Sign Out'),
            trailing:const Icon(Icons.logout_rounded,
            color: Colors.red,),
           onTap: (){
            Navigator.pop(context);
           },
          ),

        ],

      ),
       ),
       appBar: AppBar(

         title: Text('Drawer_App'),
         centerTitle: true,
         backgroundColor: Colors.deepPurple,

     ),
       body:const Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [Text('Hello Aditya ? How Are you')],
         ),
       ),
     );
   }
}