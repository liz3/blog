---
layout: post
title: How do time media over the network or when playing back
---
So you've got your discord bot or a library for playing video files but somethings just off? Lag after some time or even directly from the beginning?
Chances are that maybe the timing is off, and to be fair its really hard to get it right. Heres how to solve it.

## The naive approach
Timing video/audio cant be hard can it? Turns out its not as straight forward as you might think.

The Naive and also my first attempt was just to, send *x* amount of data for a time period, measure how long that takes and then *sleep* for the time that took.
```
start = now()

to_send = prepare_data() // some encoder/decoder maybe
send_data(to_send)  // send data to a blip frame or some network endpoint.

elapsed = now() - start
if elapsed > 0 do
  sleep(data_time_amount - elapsed)
end
```
That seams reasonable right?

## The Problem
The issue with that approach is that its *relative*.
The time passed is suspect to the operating system suspending the process, giving it other priority and other factors.
Which means while the approach is *theoretically* correct, its not going to work unless there is 0 delay beyond your desired one, which will never happen.

Regarding that its also interesting because you learn about kernel schedulers, when i did this, it was often more a problem on macOS then on gnu/linux because the linux kernel scheduler is a lot more aggressive and resource *giving* then macOS, macOS will make sure its own services have enough priority to keep certain things like the desktop running smoothly.

## The solution
I put *relative* in the previous section in italic for a reason because in that problem is the solution, we need to time in a *absolute* approach.
That works because(assuming we know the audio packet/frame or video frame duration) we can calculate the position we **should** reach.

Great how do we do that?

Here the solution in c++ from my project [tokio](https://github.com/liz3/tokio) in c++
```cpp
#include <thread>
#include <chrono>
using namespace std::chrono;

// ...

high_resolution_clock::time_point start_point = high_resolution_clock::now();
size_t elapsed_frames = 0;
const double frame_duration = 0.02;
while(should_play) {
  send_data();
  elapsed_frames++;

  high_resolution_clock::time_point point_now = high_resolution_clock::now();
  duration<double> absolute_elapsed = duration_cast<duration<double>>(point_now - start_point);
  double current_play_head = frame_duration * elapsed_frames;
  double to_delay = current_play_head - absolute_elapsed.count();
  if(to_delay > 0) {
    std::this_thread::sleep_for(std::chrono::microseconds((int) (to_delay * 1000000)));
  }

}
```
So what do we do here?
First we need to know 2 things:
1. the current time in a high resolution - `start_point`
2. how long in absolute time one iteration of our loop passes, here `frame_duration` 2% of a second.

In the loop we send our data and then increment a simple counter per iteration.

Then we calculate the **absolute** time elapsed since we started playing, that gets rid of that relative issue from the naive approach.
After that we calculated the `current_play_head`, basically where the audio should be after the sleep we are now starting.
Lastly we calculate the actual amount to sleep(`to_delay`) by substracting the elapsed time from the play head.

Then if needed we sleep by that amouny.


## Conclusion
I learned this way of cacluating by reading the discord.py source code and how they do it.

I hope you where able to take something from this and maybe even use it!
