abstract class Wallet {
  void send();
  bool isEmpty();
  String getBitconAddress();
}

class BitcoinWallet extends Wallet {
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
  String getBitconAddress() {
    throw UnimplementedError();
  }

  @override
  bool isEmpty() {
    return false;
  }

  @override
  void send() {
    print("Sending Ethereum");
  }
}

main() {
  Wallet wallet = BitcoinWallet();
  wallet.getBitconAddress();
  wallet = EthereumWallet();
  wallet.getBitconAddress();
}
