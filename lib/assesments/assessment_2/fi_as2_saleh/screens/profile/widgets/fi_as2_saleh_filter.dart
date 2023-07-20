import 'package:flutter/material.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  List<String> filters = ["Photos", "Video", "Tagged"];
  int selectedFilter = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [...filters.asMap().entries.map((i) {
          return ElevatedButton(
              onPressed: () => setState(() {
                    selectedFilter = i.key;
                  }),
              style: ElevatedButton.styleFrom(
                backgroundColor: i.key != selectedFilter ? const Color(0xFFFFFFFF):const Color(0xFF706C6C),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                elevation: 0
              ),
              child: Text(
                i.value,
                style: TextStyle(
                  color: i.key == selectedFilter ? const Color(0xFFEFEFEF):const Color(0xFF706C6C),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ));
        }),
        Padding(padding: EdgeInsets.only(left: 40), child: InkWell(child: Icon(Icons.more_horiz, size: 30,)),)
        ],
      ),
    );
  }
}
