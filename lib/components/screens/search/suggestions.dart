import 'package:course_online/components/ui/header_section.dart';
import 'package:course_online/constants/color.dart';
import 'package:flutter/material.dart';

class Suggestions extends StatefulWidget {
  final List<String> recommendationsSearch;
  final int? initialSelectedIndex;
  final ValueChanged<int>? onSelected; // callback ke parent

  const Suggestions({
    super.key,
    required this.recommendationsSearch,
    this.initialSelectedIndex,
    this.onSelected,
  });

  @override
  State<Suggestions> createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  int? selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialSelectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderSection(
          title: "Suggestion",
          actionText: "",
        ),
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: List.generate(
            widget.recommendationsSearch.length,
            (index) {
              final isSelected = selectedIndex == index;
              return ChoiceChip(
                checkmarkColor: Colors.white,
                label: Text(
                  widget.recommendationsSearch[index],
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontWeight: isSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
                selected: isSelected,
                selectedColor: COLOR_PRIMARY,
                onSelected: (_) {
                  setState(() {
                    selectedIndex = index;
                  });
                  if (widget.onSelected != null) {
                    widget.onSelected!(index);
                  }
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
