abstract class Wallet {
  void send();
  bool isEmpty();
}

abstract class BitcoinInformationsWallet {
  String getBitconAddress();
}

class BitcoinWallet extends Wallet implements BitcoinInformationsWallet {
  @override
  String getBitconAddress() {
    return "3123012391239103103129";
  }

  @override
  bool isEmpty() {
    return false;
  }

  @override
  void send() {
    print("Sending Bitcoin");
  }
}

class EthereumWallet extends Wallet {
  @override
  bool isEmpty() {
    return false;
  }

  @override
  void send() {
    print("Sending Ethereum");
  }
}
