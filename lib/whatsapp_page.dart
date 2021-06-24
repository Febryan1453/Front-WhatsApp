import 'package:flutter/material.dart';
import 'package:whatsapp/screen/call_screen.dart';
import 'package:whatsapp/screen/chat_screen.dart';
import 'package:whatsapp/screen/status_page.dart';

class WhatsAppPage extends StatefulWidget {
  const WhatsAppPage({Key? key}) : super(key: key);

  @override
  _WhatsAppPageState createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage>
    with SingleTickerProviderStateMixin {
  Color whatsAppGreen = Color.fromRGBO(18, 140, 126, 1.0);
  Color whatsAppLightGreen = Color.fromRGBO(37, 211, 102, 1.0);

  late TabController _tabController;

  var fabIcon;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this)
      ..addListener(() {
        setState(() {
          switch (_tabController.index) {
            case 0:
              fabIcon = Icons.camera;
              break;
            case 1:
              fabIcon = Icons.message;
              break;
            case 2:
              fabIcon = Icons.camera_enhance;
              break;
            case 3:
              fabIcon = Icons.call;
              break;
            default:
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(
              color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w600),
        ),
        backgroundColor: whatsAppGreen,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.more_vert),
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('CHATS'),
            ),
            Tab(
              child: Text('STATUS'),
            ),
            Tab(
              child: Text('CALL'),
            ),
          ],
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Icon(Icons.camera_alt),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: (fabIcon == Icons.camera)
          ? null
          : FloatingActionButton(
              onPressed: () {},
              child: Icon(fabIcon),
              backgroundColor: whatsAppLightGreen,
            ),
    );
  }
}
