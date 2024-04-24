<h1> NanoProcessor </h1>

This is a very simple microprocessor (hence, called a nanoprocessor) <br>
4-bit processor capable of executing 4 instructions <br>
Whole behavioural design is coded using VHDL.<br>
Processor can be run on a FPGA.

<h3 align ="center" >Instruction Table</h3>

![image](https://github.com/De-Silva-Madhushankha/NanoProcessor/assets/113349359/81ebb87e-fdac-4325-9021-2d4731806f98)
<h2 align = "center"> Architecture </h2>

![image](https://github.com/De-Silva-Madhushankha/NanoProcessor/assets/113349359/201bd595-b50f-40f0-9746-4f0acd109d28)

Sample machine code
    example program countdowm from 10 to 0
        "100010001010", -- MOVI R1,10
        "100100000001", -- MOVI R2,1
        "010100000000", -- NEG R2
        "000010100000", -- ADD R1,R2
        "110010000111", -- JNZ R1,7
        "110000000011", -- JNZ R0,4
        "000000000000", -- 
        "ZZZZZZZZZZZZ"  -- High Imp.




