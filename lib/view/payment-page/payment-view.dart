import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sggrocery/view/widget/custom_back_button.dart';

class PaymentViewpage extends StatelessWidget {
  const PaymentViewpage({super.key});

  @override
  Widget build(BuildContext context) {
    final RxInt selectedAddress = 1.obs;
    final RxInt selectedPaymentMethod = 1.obs;
    final RxString selectedAddressType = "Home".obs;
    return Scaffold(
      backgroundColor: const Color(0xff55AB60),
      appBar: AppBar(
        backgroundColor: const Color(0xff55AB60),
        scrolledUnderElevation: 0,
        leading: const CustomBackButton(color: Colors.white),
        title: const Text(
          "Payment",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Contact Details",
                      style: TextStyle(
                        color: Color(0xff424242),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        hoverColor: Colors.transparent,
                        fillColor: const Color(0xffF5F5F5),
                        filled: true,
                        hintText: "First name",
                        hintStyle: const TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ), // First Name
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        hoverColor: Colors.transparent,
                        fillColor: const Color(0xffF5F5F5),
                        filled: true,
                        hintText: "Last name",
                        hintStyle: const TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ), // Last Name
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        hoverColor: Colors.transparent,
                        fillColor: const Color(0xffF5F5F5),
                        filled: true,
                        hintText: "Email",
                        hintStyle: const TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ), // Email
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 51,
                          width: 70,
                          decoration: const BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                          ),
                          child: DropdownButton(
                            alignment: AlignmentGeometry.center,
                            icon: Image.asset("assets/dropdown.png", height: 25, width: 25),
                            isExpanded: true,
                            underline: const SizedBox(),
                            hint: Image.asset("assets/ban.png", height: 25, width: 25),
                            items: [
                              {"code": "+880", "img": "assets/ban.png"},
                              {"code": "+91", "img": "assets/ind.png"},
                              {"code": "+54", "img": "assets/arg.png"},
                            ].map((item) => DropdownMenuItem(
                              value: item,
                              child: Row(
                                children: [
                                  Image.asset(item['img']!, width: 20),
                                  const SizedBox(width: 6),
                                  Text(item['code']!),
                                ],
                              ),
                            )).toList(),
                            onChanged: (value) {},
                          ),
                        ),
                        Container(
                          height: 51,
                          width: 1,
                          color: const Color(0xffD3D3D3),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hoverColor: Colors.transparent,
                              fillColor: const Color(0xffF5F5F5),
                              filled: true,
                              hintText: "Phone Number",
                              hintStyle: const TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        )
                      ],
                    ), // Phone number
                    const SizedBox(height: 15),
                    const Text(
                      "Choose Delivery Address",
                      style: TextStyle(
                        color: Color(0xff424242),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Obx(
                      () => Row(
                        children: [
                          Radio<int>(
                            value: 1,
                            groupValue: selectedAddress.value,
                            onChanged: (val) {
                              if (val != null) selectedAddress.value = val;
                            },
                            activeColor: const Color(0xff55AB60),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                selectedAddress.value = 1;
                              },
                              child: Card(
                                elevation: 7,
                                color: Colors.white,
                                shadowColor: Colors.white,
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: selectedAddress.value == 1
                                        ? Border.all(color: const Color(0xff55AB60), width: 1.5)
                                        : null,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset("assets/home.png", height: 15, width: 15),
                                              const SizedBox(width: 10),
                                              const Text("Home", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              InkWell(
                                                hoverColor: Colors.transparent,
                                                onTap: () {},
                                                child: Image.asset("assets/edit.png", height: 15, width: 15),
                                              ),
                                              const SizedBox(width: 10),
                                              InkWell(
                                                hoverColor: Colors.transparent,
                                                onTap: () {},
                                                child: Image.asset("assets/delete.png", height: 15, width: 15),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 25),
                                        child: Text("House 12, Road 5, Block B, Dhaka"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ), // Home address
                    const SizedBox(height: 15),
                    Obx(
                      () => Row(
                        children: [
                          Radio<int>(
                            value: 2,
                            groupValue: selectedAddress.value,
                            onChanged: (val) {
                              if (val != null) selectedAddress.value = val;
                            },
                            activeColor: const Color(0xff55AB60),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                selectedAddress.value = 2;
                              },
                              child: Card(
                                elevation: 7,
                                color: Colors.white,
                                shadowColor: Colors.white,
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: selectedAddress.value == 2
                                        ? Border.all(color: const Color(0xff55AB60), width: 1.5)
                                        : null,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset("assets/office.png", height: 15, width: 15),
                                              const SizedBox(width: 10),
                                              const Text("Office", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              InkWell(
                                                hoverColor: Colors.transparent,
                                                onTap: () {},
                                                child: Image.asset("assets/edit.png", height: 15, width: 15),
                                              ),
                                              const SizedBox(width: 10),
                                              InkWell(
                                                hoverColor: Colors.transparent,
                                                onTap: () {},
                                                child: Image.asset("assets/delete.png", height: 15, width: 15),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 25),
                                        child: Text("Level 4, Corporate Tower, Gulshan, Dhaka"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ), // office address
                    const SizedBox(height: 15),
                    InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return Container(
                              padding: const EdgeInsets.all(10),
                              height: MediaQuery.of(context).size.height * 0.85,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Get.back();
                                            },
                                            child: Container(
                                              height: 23,
                                              width: 23,
                                              decoration: BoxDecoration(
                                                border: Border.all(width: 2),
                                                borderRadius: BorderRadius.circular(50),
                                              ),
                                              child: const Center(
                                                child: Text("x", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ), // Cross Button
                                      const SizedBox(height: 15),
                                      const Text(
                                        "Add New Address",
                                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),
                                      ),
                                      const SizedBox(height: 10),
                                      TextField(
                                        decoration: InputDecoration(
                                          fillColor: const Color(0xffF5F5F5),
                                          filled: true,
                                          hintText: "Country",
                                          hintStyle: const TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      TextField(
                                        decoration: InputDecoration(
                                          fillColor: const Color(0xffF5F5F5),
                                          filled: true,
                                          hintText: "State",
                                          hintStyle: const TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      TextField(
                                        decoration: InputDecoration(
                                          fillColor: const Color(0xffF5F5F5),
                                          filled: true,
                                          hintText: "City",
                                          hintStyle: const TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      TextField(
                                        decoration: InputDecoration(
                                          fillColor: const Color(0xffF5F5F5),
                                          filled: true,
                                          hintText: "Pincode",
                                          hintStyle: const TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      TextField(
                                        decoration: InputDecoration(
                                          fillColor: const Color(0xffF5F5F5),
                                          filled: true,
                                          hintText: "Area",
                                          hintStyle: const TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      TextField(
                                        decoration: InputDecoration(
                                          fillColor: const Color(0xffF5F5F5),
                                          filled: true,
                                          hintText: "Landmark",
                                          hintStyle: const TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Obx(
                                        () => Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: selectedAddressType.value == "Home",
                                                  onChanged: (val) {
                                                    selectedAddressType.value = "Home";
                                                  },
                                                  activeColor: const Color(0xff55AB60),
                                                ),
                                                const Text("Home", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 14, fontWeight: FontWeight.w400)),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: selectedAddressType.value == "Work",
                                                  onChanged: (val) {
                                                    selectedAddressType.value = "Work";
                                                  },
                                                  activeColor: const Color(0xff55AB60),
                                                ),
                                                const Text("Work/Office", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 14, fontWeight: FontWeight.w400)),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: selectedAddressType.value == "Others",
                                                  onChanged: (val) {
                                                    selectedAddressType.value = "Others";
                                                  },
                                                  activeColor: const Color(0xff55AB60),
                                                ),
                                                const Text("Others", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 14, fontWeight: FontWeight.w400)),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ), // Check Box
                                      const SizedBox(height: 15),
                                      Center(
                                        child: InkWell(
                                          hoverColor: Colors.transparent,
                                          onTap: () {
                                            Get.back();
                                            Get.snackbar(
                                              "Address Saved",
                                              "New address added successfully!",
                                              snackPosition: SnackPosition.BOTTOM,
                                              backgroundColor: const Color(0xff55AB60),
                                              colorText: Colors.white,
                                            );
                                          },
                                          child: Container(
                                            height: 50,
                                            width: 200,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7),
                                              color: const Color(0xff55AB60),
                                            ),
                                            child: const Center(
                                              child: Text("Save", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600)),
                                            ),
                                          ),
                                        ),
                                      ), //Save Button
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xff55AB60), width: 2),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Icon(Icons.add, size: 16, color: Color(0xff55AB60)),
                          ),
                          const SizedBox(width: 7),
                          const Text("Add New Address", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xff55AB60))),
                        ],
                      ),
                    ), // Add New Address
                    const SizedBox(height: 15),
                    const Text(
                      "Do you have a promo code/coupon?",
                      style: TextStyle(
                        color: Color(0xff424242),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        hoverColor: Colors.transparent,
                        fillColor: const Color(0xffF5F5F5),
                        filled: true,
                        prefixIcon: Image.asset("assets/coupon.png", height: 22, width: 22),
                        hintText: "Enter Your Code",
                        hintStyle: const TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ), // coupon field
                    const SizedBox(height: 15),
                    Center(
                      child: InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Get.snackbar("Coupon Applied", "Promo code applied successfully!");
                        },
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: const Color(0xff55AB60),
                          ),
                          child: const Center(
                            child: Text("Apply Now", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                    ), // apply button
                    const SizedBox(height: 15),
                    const Text(
                      "Choose Payment Method",
                      style: TextStyle(
                        color: Color(0xff424242),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Obx(
                      () => Container(
                        height: 57,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF3FFF5),
                          border: selectedPaymentMethod.value == 1 ? Border.all(color: const Color(0xff55AB60)) : null,
                        ),
                        child: Row(
                          children: [
                            Radio<int>(
                              value: 1,
                              groupValue: selectedPaymentMethod.value,
                              onChanged: (val) {
                                if (val != null) selectedPaymentMethod.value = val;
                              },
                              activeColor: const Color(0xff55AB60),
                            ),
                            const Text("Cash On Delivery", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff7E7E7E)))
                          ],
                        ),
                      ),
                    ), // cash on delivery
                    const SizedBox(height: 15),
                    Obx(
                      () => Container(
                        height: 57,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF3FFF5),
                          border: selectedPaymentMethod.value == 2 ? Border.all(color: const Color(0xff55AB60)) : null,
                        ),
                        child: Row(
                          children: [
                            Radio<int>(
                              value: 2,
                              groupValue: selectedPaymentMethod.value,
                              onChanged: (val) {
                                if (val != null) selectedPaymentMethod.value = val;
                              },
                              activeColor: const Color(0xff55AB60),
                            ),
                            const Text("UPI", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff7E7E7E)))
                          ],
                        ),
                      ),
                    ), // UPI
                    const SizedBox(height: 15),
                    Obx(
                      () => Container(
                        height: 57,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF3FFF5),
                          border: selectedPaymentMethod.value == 3 ? Border.all(color: const Color(0xff55AB60)) : null,
                        ),
                        child: Row(
                          children: [
                            Radio<int>(
                              value: 3,
                              groupValue: selectedPaymentMethod.value,
                              onChanged: (val) {
                                if (val != null) selectedPaymentMethod.value = val;
                              },
                              activeColor: const Color(0xff55AB60),
                            ),
                            const Text("Wallet", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff7E7E7E)))
                          ],
                        ),
                      ),
                    ), // Wallet
                    const SizedBox(height: 15),
                    Obx(
                      () => Container(
                        height: 57,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF3FFF5),
                          border: selectedPaymentMethod.value == 4 ? Border.all(color: const Color(0xff55AB60)) : null,
                        ),
                        child: Row(
                          children: [
                            Radio<int>(
                              value: 4,
                              groupValue: selectedPaymentMethod.value,
                              onChanged: (val) {
                                if (val != null) selectedPaymentMethod.value = val;
                              },
                              activeColor: const Color(0xff55AB60),
                            ),
                            const Text("Credit/Debit Card", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff7E7E7E)))
                          ],
                        ),
                      ),
                    ), // Credit/Debit Card
                    const SizedBox(height: 15),
                    InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xff55AB60), width: 2),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Icon(Icons.add, size: 14, color: Color(0xff55AB60)),
                          ),
                          const SizedBox(width: 7),
                          const Text("Add New Card", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff55AB60))),
                        ],
                      ),
                    ), // Add New Card
                    const SizedBox(height: 15),
                    Image.asset("assets/card.png", height: 151),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        height: 51,
                        decoration: BoxDecoration(
                          color: const Color(0xff55AB60),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("Enter CVV", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white)),
                              ),
                              Expanded(
                                child: Container(
                                  height: 51,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: const Color(0xff55AB60)),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "e.g 123",
                                      fillColor: Colors.white,
                                      hintStyle: const TextStyle(color: Color(0xffBCBCBC), fontSize: 16, fontWeight: FontWeight.w400),
                                      filled: true,
                                      hoverColor: Colors.transparent,
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ), // Enter CVV
                    const SizedBox(height: 15),
                    Center(
                      child: InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Get.snackbar(
                            "Order Placed",
                            "Your order has been successfully placed!",
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: const Color(0xff55AB60),
                            colorText: Colors.white,
                          );
                          Get.offAllNamed("/bottomBar");
                        },
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: const Color(0xff55AB60),
                          ),
                          child: const Center(
                            child: Text("Pay Now", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                    ), // Pay Button
                    const SizedBox(height: 10),
                    const Text(
                      "Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our privacy policy.",
                      style: TextStyle(color: Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
