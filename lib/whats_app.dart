import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {
  WhatsApp({Key? key}) : super(key: key);

  Widget openPopUp() {
    return PopupMenuButton(
      itemBuilder: (context) {
        return List.generate(
            4,
            (index) => const PopupMenuItem(
                  child: Text('Setting'),
                ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            actions: [
              InkWell(child: const Icon(Icons.search), onTap: () {}),
              PopupMenuButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(child: Text('New Group')),
                    const PopupMenuItem(child: Text('New Broadcast')),
                    const PopupMenuItem(child: Text('Linked Devices')),
                    const PopupMenuItem(child: Text('Starred Messages')),
                    const PopupMenuItem(child: Text('Settings')),
                  ];
                },
              ),
            ],
            elevation: 0.0,
            title: const Text('WhatsApp '),
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xff128C7E),
            bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                    iconMargin: EdgeInsets.all(100),
                    child: Icon(
                      Icons.camera_alt_rounded,
                    )),
                Tab(
                  child: Text('CHATS', style: TextStyle(color: Colors.white)),
                ),
                Tab(
                  child: Text('STATUS', style: TextStyle(color: Colors.white)),
                ),
                Tab(
                  child: Text('CALLS', style: TextStyle(color: Colors.white)),
                )
              ],
              labelColor: Colors.white,
            )),
      ),
    );
  }
}
