# Raycast Scripts

A collection (currently just 1) of small, handy Raycast Scripts.

## sixth.sh
Resize the focussed window to 1/6th of the width of the monitor. Currently this is hard-coded to the width and height of my monitor, but if you want to use it I'm sure you can make it dynamic, or just update the magic numbers.

This also allows you to specify which position you'd like the window in from 1-6, which maps to the vertical sixths of your monitor. For example:

```sh
./sixth [size][position]

./sixth 11 # Size of 1/6 starting in the 1st sixth [x.....]

./sixth 21 # Size of 2/6 starting in the 1st sixth [XX....]

./sixth 12 # Size of 1/6 starting in the 2nd sixth [.X....]

./sixth 34 # Size of 3/6 starting in the 4th sixth [...XXX]
```