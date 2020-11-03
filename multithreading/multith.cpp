#include <iostream>
#include <thread>
#include <chrono>
#include <memory>

using namespace std;

void timep(int l)
{
    for (int i = 0; i < l; i++)
    {
        //Does nothing but wastes time
    }
}

void normalt(int l, int loop)
{
    for (int i = 0; i < l; i++)
    {
        timep(loop);
    }
}

void multit(int l, int loop)
{
    unique_ptr<thread[]> thr(new thread[l]);
    for (int i = 0; i < l; i++)
    {
        thr[i] = thread(timep, loop);
    }

    for (int i = 0; i < l; i++)
    {
        thr[i].join();
    }
}

int main()
{
    cout << "Program started." << endl;
    int loopcount = 1234567890;

    /* FIRST WAY - Just do each KillTime the normal (sequential) way. */
    auto start = chrono::steady_clock::now();
    normalt(3, loopcount);
    auto end = chrono::steady_clock::now();
    cout << "Time for normal way is: " << chrono::duration_cast<chrono::milliseconds>(end - start).count() << endl;

    /* MULTITHREADED WAY - call each KillTime on a new thread (so they can run simultaneously).*/
    start = chrono::steady_clock::now();
    multit(3, loopcount);
    end = chrono::steady_clock::now();
    cout << "Time for multithreaded way is: " << chrono::duration_cast<chrono::milliseconds>(end - start).count() << endl;

    cout << "Program ended." << endl;
    return 0;
}