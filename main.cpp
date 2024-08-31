#include <iostream>
#include <cmath>
#include <cstdlib>

using namespace std;

int main() {

   //cout << "Hello World" << endl;
    
    
    
    int sales=95000;
    double state_tax_rate=0.04;
    double federal_tax_rate=0.02;

    double payable_state_tax= sales * state_tax_rate;
    double payable_federal_tax= sales * federal_tax_rate;
    double total_sales=sales-(payable_federal_tax + payable_state_tax);


    cout << "Gross income after tax: " << total_sales << endl;

    cout << "Paid for state tax: " << payable_state_tax <<endl;

    cout << "paid for federal tax: " << payable_federal_tax <<endl;


    cout << "Enter a number: ";
    double value;

    cin >> value;
    cout<< value;





    return 0;



}

