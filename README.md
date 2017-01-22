# exceptions
We have been talking about debugging and testing.  Sometimes it is difficult to test for every error individually, and exceptions provide another way to deal with errors.

We deal with exceptions using a basic try/catch/throw syntax as illustrated in this example.
```c++
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
```
