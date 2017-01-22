#include <iostream>
using namespace std;

void thrower()
{
    string reason = "Something Bad Happened";
    throw reason;
}
int main()
{
   try {
       thrower();
   }
   catch(string error) {
       cout << "Error: " << error<<endl;
   }
}