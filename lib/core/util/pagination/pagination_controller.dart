import 'package:flutter/widgets.dart';

class PaginationScrollController {
  late ScrollController scrollController;
  bool isLoading = false;
  bool stopLoading = false;
  int currentPage = 1;
  double boundaryOffset = 0.5;
  late Function(int pageNo) loadAction;

  void init({required loadAction}) {
    loadAction = loadAction(currentPage);
    scrollController = ScrollController()..addListener(scrollListener);
  }

  void dispose() {
    scrollController.removeListener(scrollListener);
    scrollController.dispose();
  }

  void scrollListener() {
    if (!stopLoading) {
      //load more data
      if (scrollController.offset >=
              scrollController.position.maxScrollExtent * boundaryOffset &&
          !isLoading) {
        isLoading = true;
        loadAction(currentPage).then((shouldStop) {
          isLoading = false;
          currentPage++;
          boundaryOffset = 1 - 1 / (currentPage * 2);
          if (shouldStop == true) {
            stopLoading = true;
          }
        });
      }
    }
  }
}
