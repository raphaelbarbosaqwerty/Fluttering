abstract class Courier {
  deliveryProduct();
  calculateTotal();
}

class PostalCourier implements Courier {
  @override
  calculateTotal() {
    throw UnimplementedError();
  }

  @override
  deliveryProduct() {
    throw UnimplementedError();
  }
}

class FedexCourier implements Courier {
  @override
  calculateTotal() {
    throw UnimplementedError();
  }

  @override
  deliveryProduct() {
    throw UnimplementedError();
  }
}

class DhlCourier implements Courier {
  @override
  calculateTotal() {
    throw UnimplementedError();
  }

  @override
  deliveryProduct() {
    throw UnimplementedError();
  }
}
