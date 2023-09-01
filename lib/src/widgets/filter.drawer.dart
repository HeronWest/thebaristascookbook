import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum SearchFilters {
  pessoas,
  cafes,
  espresso,
  latte,
  chocolate,
  chas,
  smoothies,
  shakes,
  sucos,
  sodas,
  drinks,
  licores,
}

class CustomEndDrawerFilter extends StatefulWidget {
  const CustomEndDrawerFilter({super.key});

  @override
  State<CustomEndDrawerFilter> createState() => _CustomEndDrawerFilterState();
}

class _CustomEndDrawerFilterState extends State<CustomEndDrawerFilter> {
  Set<SearchFilters> _filters = <SearchFilters>{};

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: FractionallySizedBox(
      widthFactor: 0.8,
      heightFactor: 0.6,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            'Filtros',
            style: GoogleFonts.cormorantGaramond(
                color: const Color(0xff8F542E), fontSize: 52, height: 1.25),
          ),
        ),
        Wrap(
          runSpacing: 5,
          spacing: 8,
          alignment: WrapAlignment.center,
          children: SearchFilters.values.map((SearchFilters type) {
            return FilterChip(
              label: Text(type.name),
              onSelected: (bool selected) {
                setState(() {
                  if (selected) {
                    _filters.add(type);
                  } else {
                    _filters.remove(type);
                  }
                });
              },
              selected: _filters.contains(type),
              backgroundColor: const Color(0xffEBDACC).withOpacity(0.3),
              selectedColor: const Color(0xffEBDACC).withOpacity(0.8),
              checkmarkColor: const Color(0xff8F542E),
              // avatar: CircleAvatar(
              //   backgroundColor: const Color(0xff8F542E),
              //   child: const Icon(
              //     Icons.person,
              //     color: Colors.white,
              //   ),
              // ),
              shadowColor: const Color(0xff8F542E),
              padding: const EdgeInsets.all(8),
              elevation: 4,
            );
          }).toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: FractionallySizedBox(
              widthFactor: 0.9,
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                      Color(0xff8F542E),
                    ),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Aplicar',
                    style: GoogleFonts.cormorantGaramond(
                        fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
