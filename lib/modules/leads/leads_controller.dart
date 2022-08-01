import 'package:iboon_application/models/response/leads_model.dart';
import 'package:get/get.dart';

import '../../api/api_repository.dart';

class LeadsController extends GetxController{
  final ApiRepository apiRepository;
  LeadsController({required this.apiRepository});

  var leads = Rxn<LeadsModel>();
  var lead = Rxn<Lead>();

  RxList LeadList = (List.of([])).obs;


  @override
  void onReady() async {
    super.onReady();

  }

  @override
  void onInit() async {
    super.onInit();

    loadLeads();

  }

  Future<void> loadLeads() async {
    // user = _users;
    var _leads = await apiRepository.getLeads();
    if (_leads!.data!.lead!.length > 0) {
      // leads.value = _leads;
      // leads.refresh();
      for (var i in _leads.data!.lead! ){
        LeadList.value.add(i);
      }

    }
    update();

  }
}