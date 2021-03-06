import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:readaton/state/state.dart';
import 'package:readaton/modules/book_editor_page/book_editor_page.dart';

class AddToSectionButton extends StatelessWidget {
  static final _fabs = {
    AppSection.BOOKS: (BuildContext context) => new FloatingActionButton(
          child: const Icon(Icons.add),
          tooltip: 'Add a new book',
          onPressed: () => Navigator.push(
                context,
                new MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (_) => new BookEditorPage(),
                ),
              ),
        ),
    AppSection.GOALS: (BuildContext context) => new FloatingActionButton(
          child: const Icon(Icons.add),
          tooltip: 'Add a book',
          onPressed: () => Navigator.pushNamed(context, '/goals/add'),
        ),
    AppSection.STATS: (BuildContext context) => new Container(
          width: 0.0,
          height: 0.0,
        ),
  };

  final AppSection currentSection;

  AddToSectionButton({
    @required this.currentSection,
  });

  @override
  Widget build(BuildContext context) => _fabs[currentSection](context);
}
