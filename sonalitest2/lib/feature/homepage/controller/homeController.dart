import 'package:get/get.dart';
import 'package:sonalitest2/core/repository/homepage/homepage_repo.dart';
import '../../../core/repository/homepage/homepaage_repo_impl.dart';

class HomeController extends GetxController{

  var selectedIndex = 0.obs;

  void changeIndex(int index){
    print(index);
    selectedIndex.value = index;
  }

  late HomepageRepo _homepageRepo;

  HomeController() {_homepageRepo = Get.find<HomepageRepoImpl>();}

  RxString name = ''.obs;

  RxBool loader = true.obs;

//  get selectedIndex => null;



  @override
  void onInit() {
    // TODO: implement onInit
    fetchData();
    super.onInit();
  }

  fetchData()async{
    loader.value=true;
    final response = await _homepageRepo.fetchDataAPI();
    print("Line Number 21");
    print(response![0].name);
    name.value = response[0].name!;
    loader.value=false;
  }

}