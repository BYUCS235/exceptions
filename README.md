# exceptions
We have been talking about debugging and testing.  Sometimes it is difficult to test for every error individually, and exceptions provide another way to deal with errors.

We deal with exceptions using a basic try/catch/throw syntax as illustrated in this example.  Any exceptions that are thrown inside of the "try" block that have the type of one of the catch blocks will be handled.  The parameter can be used to determine the nature of the error.
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
One of the most common reasons to catch exceptions is to deal with input errors.  Often we will be parsing input through several layers of function calls, and it is messy to have all of those functions return errors back to the main code.  Instead, we can just use a try/catch block to make sure the input was correct.  The following code allows us to see if the parsing from a stringstream worked.
```c++
#include <iostream>
#include <sstream>
#include <stdexcept>
using namespace std;

int main()
{
    stringstream ss("Speedy R P");
    string name, type;
	int speed;
	
	ss.exceptions(ios_base::failbit);
	
	try {
	    ss >> name >> type >> speed;
	} 
	catch(ios_base::failure& ex) {
	    cout << "Error "<<ex.what()<<endl;
	}
}
```
The code that recognized that the "P" was not a number was deep in the iostream library, but we are able to handle the error from wherever it occurred with the "catch" statement.
