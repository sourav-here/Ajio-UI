import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
AppBar CommonAppbar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 231, 238, 242),
      leading: const Icon(Icons.menu_rounded),
      title: const Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text('AJIO')
            ),
            Icon(Icons.arrow_drop_down_rounded)
          ],
        ),
      ),
      actions: const [Icon(Icons.notifications)],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: Colors.white,
            ),
            width: 340,
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'search by product, brand & name...',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera_alt_outlined),
                  iconColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
            ),
          ),
        ),
      ),
    );
  }