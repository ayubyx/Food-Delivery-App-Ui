import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  ListTile listTile(
      BuildContext context, String text, IconData? icon, VoidCallback onTap) {
    return ListTile(
      onTap: onTap,
      title: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 14),
      ),
      leading: icon != null
          ? Icon(
              icon,
              color: const Color(0xFFFF2884),
            )
          : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      children: [
        Builder(builder: (c) {
          return DrawerHeader(
              decoration: const BoxDecoration(color: Color(0xFFFF2884)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text(
                        "A",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFFF2884),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Text(
                    "Ayooub Amghar",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ));
        }),
        Column(
          children: [
            listTile(context, "Vouchers & Offers", Icons.local_offer_outlined,
                () {}),
            listTile(context, "Favourites", Icons.favorite_border, () {}),
            listTile(context, "Orders & & reordering",
                Icons.my_library_books_outlined, () {}),
            listTile(
                context, "Payemant methods ", Icons.payment_rounded, () {}),
            listTile(context, "Help Center", Icons.help_center_outlined, () {}),
            listTile(
                context, "Invite Friends", Icons.card_giftcard_outlined, () {}),
            const Divider(),
            listTile(context, "Settings", null, () {}),
            listTile(context, "Terms & Conditions", null, () {}),
            listTile(context, "Logout", null, () {}),
          ],
        )
      ],
    ));
  }
}
