import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_network/ui/specialties/SpecialityListItem.dart';
import 'package:flutter_network/ui/specialties/SpecialityViewModel.dart';
import 'package:provider/provider.dart';

class SpecialtiesList extends StatefulWidget {
  @override
  _SpecialtiesListState createState() => _SpecialtiesListState();
}

class _SpecialtiesListState extends State<SpecialtiesList> {
  SpecialityViewModel viewModel;

  bool isFirstLoad = true;

  @override
  Widget build(BuildContext context) {
    viewModel = Provider.of<SpecialityViewModel>(context);
    return futures();
  }

  Widget renderAppBar() {
    return SliverAppBar(
//      elevation: 3,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      pinned: true,
      backgroundColor: Colors.white,
      flexibleSpace: const FlexibleSpaceBar(
        title: Text(
          'Specialties',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  futures() {
    if (isFirstLoad) {
      isFirstLoad = false;
      Future(() => viewModel.getSpecialties());
    }
    return Scaffold(
        body: SafeArea(
          child:
          viewModel.specialties == null ? renderLoader() : renderSpecialties(),
        ));
  }

  renderLoader() {
    return Center(
      child:
      Container(height: 80, width: 80, child: CircularProgressIndicator()),
    );
  }

  renderSpecialties() {
    ScrollController _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.maxScrollExtent == _scrollController.position.pixels) {
        if (!viewModel.isLoading()) {
          Future(() => viewModel.getSpecialties());
        }
      }
    });
    return CustomScrollView(controller: _scrollController, slivers: <Widget>[
      renderAppBar(),
      SliverList(
        delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                if (index == viewModel.listOfSpeciality.length) {
                  return Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(height : 20, width: 20,child: CircularProgressIndicator()),
                      ),
                    ],
                  );
                }
            return SpecialityListItem(
              speciality: viewModel.listOfSpeciality[index],
            );
          },
          childCount: viewModel.listOfSpeciality.length + 1,
        ),
      ),
    ]);
  }
}
