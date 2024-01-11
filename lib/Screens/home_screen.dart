import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp',style: TextStyle(color: Colors.white),),
            centerTitle: false,
            backgroundColor: Colors.teal,
            actions: [
              const Icon(Icons.camera_alt_outlined,color: Colors.white,),
              const SizedBox(width: 10,),
              const Icon(Icons.search_outlined, color: Colors.white,),
              const SizedBox(width: 10,),

              PopupMenuButton(
                icon:  const Icon(Icons.more_vert_outlined, color: Colors.white,),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text('New group'),),
                  const PopupMenuItem(
                    value: 2,
                    child: Text('New broadcast'),),
                  const PopupMenuItem(
                    value: 3,
                    child: Text('Linked devices'),),
                  const PopupMenuItem(
                    value: 4,
                    child: Text('Starred Messages'),),
                  const PopupMenuItem(
                    value: 5,
                    child: Text('Settings'),),
                ],
              ),
            ],
            bottom: const TabBar(tabs: [


              Tab(child:Icon(Icons.groups, color: Colors.white,),),
              Tab(child:Text('Chats',style: TextStyle(color: Colors.white),),),
              Tab(child:Text('Status',style: TextStyle(color: Colors.white),),),
              Tab(child:Text('Calls',style: TextStyle(color: Colors.white),),),
            ]
            ),
          ),
          body: const TabBarView(children: [
            Icon(Icons.groups),
            Text('Chats'),
            Text('Status'),
            Text('Calls'),
          ]),
        )
    );
  }
}
