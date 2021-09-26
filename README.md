# verilog
### Implementing a traffic light controller for a "T" section

For the T section considered in the project, let the lane running between WEST and EAST be the main lane, and the lane running from SOUTH to EAST/WEST be the side lane.
For the main lane the time for the GREEN light will be most becausew it is the lane that will encounter the highest traffic. Therefore we will take time sample as [7s, 5s, 3s, 2s] as the time period for various lanes.
### Let's see the the cases:
![cases](https://user-images.githubusercontent.com/68055267/134815791-86f070d4-78b0-4b8c-8096-822f38e24948.jpeg)
 
### Let's see the state diagram
![state diag](https://user-images.githubusercontent.com/68055267/134815797-3f8880c9-9f1d-4a00-9b82-9efc65b3e4af.jpeg)
