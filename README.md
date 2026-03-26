# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Matt DeRoos
Michelle Joo

## Summary
In this lab, we learned about sequential logic and how it is different from what we have been doing before with conbinational logic. Instead of outputs changing right away based on inputs, sequential circuits can actually store values and use them later. That was a big difference and helped us understand how real systems work.
We also learned about latches, especially the SR-latch and D-latch. The SR-latch can store a value, but it has a problem when both inputs are 1, which makes it invalid. The D-latch fixes that by using one input and an enable signal, so it is more stable and easier to use. 
Overall, this lab helped us understand how memory works in digital circuits and how we can implement it using Verilog. 

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
We can't just use structural Verilog becuase latches need feedback loops, and that creates combinational loops that vivado doesn't allow. Even if it works in simulation, it won't actually synthesize on hardward. That is why we use behavioral Verilog with 'always' blocks so the system can correctly recognize it as memory.

### What is the meaning of always @(*) in a sensitivity block?
'always @(*)' means the block runs whenever any input used inside it changes. It automatically includes everything in the sensitivitiy list, so we don't have to list each signal manually. It is mainly used for combinational logic to make sure outputs always update correctly.

### What importance is memory to digital circuits?
Memory is important because it lets circuits store values instead of only reacting to inputs at that moment. Without memory, circuit wouldn't be able to keep track of anything over time. Things like processors, registers, and basically all real systems rely on memory to work properly. 
