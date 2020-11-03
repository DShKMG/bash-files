#include <iostream>
#include <thread>

void printfirst()
{
    std::cout << "First function" << std::endl;
}

void printsecond(int x)
{
    std::cout << "Second function with var " << x << std::endl;
}

int main(int argc, char const *argv[])
{
    std::thread a(printfirst);
    std::thread b(printsecond, 5);
    std::cout << "Both of them has been called !" << std::endl;
    a.join(); // Waits until a finishes
    std::cout << "A has been finished" << std::endl;
    b.join(); // Waits until b finishes
    std::cout << "B has been finished" << std::endl;
    return 0;
}
