import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Message',
                  style: GoogleFonts.ubuntu(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),

                // round buttons
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.green.shade300),
                      child: IconButton(
                          iconSize: 20,
                          onPressed: () {},
                          icon: const Icon(Icons.camera_alt_outlined)),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.green.shade300),
                      child: IconButton(
                          iconSize: 20,
                          onPressed: () {},
                          icon: const Icon(Icons.post_add_rounded)),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),

            // search
            SizedBox(
              height: 40,
              child: TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: Colors.blueGrey,
                  hintText: 'search.....',
                  hintStyle: GoogleFonts.ubuntu(),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
