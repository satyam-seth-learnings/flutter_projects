import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/pages/message_page.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key});

  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('images/no_image.jpg'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.0),
              child: Text('Rahul'),
            )
          ],
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.video_call),
              onPressed: () {
                print('Video Call Button Clicked');
              }),
          IconButton(
              icon: const Icon(Icons.call),
              onPressed: () {
                print('Call Button Clicked');
              }),
          IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                print('Three Dot Button Clicked');
              }),
        ],
      ),
      body: Column(
        children: [
          const Expanded(child: MessagePage()),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 5,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0),
                      ),
                      hintText: 'Type a message',
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
