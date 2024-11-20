double calculateElectricityBill(int kwh) {
  double totalCost = 0;

  while (kwh > 0) {
    if (kwh > 300) {
      totalCost += (kwh - 300) * 2834;
      kwh = 300;
    } else if (kwh > 200) {
      totalCost += (kwh - 200) * 2536;
      kwh = 200;
    } else if (kwh > 100) {
      totalCost += (kwh - 100) * 2014;
      kwh = 100;
    } else if (kwh > 50) {
      totalCost += (kwh - 50) * 1734;
      kwh = 50;
    } else {
      totalCost += kwh * 1678;
      kwh = 0;
    }
  }

  return totalCost;
}

void main() {
  int soKwh = 350;
  double money = calculateElectricityBill(soKwh);
  print("Số tiền điện phải trả cho $soKwh kWh là: ${money.toStringAsFixed(0)} đồng");
}
