import 'dart:async';
import 'package:sub_manage/models/Subscription.dart';
import 'db_provider.dart';

class SubscriptionBloc {

  final _subscriptionController = StreamController<List<Subscription>>();
  Stream<List<Subscription>> get subscriptionStream => _subscriptionController.stream;

  getSubscriptions() async {
    _subscriptionController.sink.add(await DBProvider.db.getAllSubscriptions());
  }

  SubscriptionBloc() {
    getSubscriptions();
  }

  dispose() {
    _subscriptionController.close();
  }

  create(Subscription subscription) {
    subscription.assignUUID();
    DBProvider.db.createSubscription(subscription);
    getSubscriptions();
  }

  update(Subscription subscription) {
    DBProvider.db.updateSubscription(subscription);
    getSubscriptions();
  }

  delete(String id) {
    DBProvider.db.deleteSubscription(id);
    getSubscriptions();
  }
}