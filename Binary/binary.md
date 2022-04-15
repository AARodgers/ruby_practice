Binary Notes:
- 8 bits = 1 byte
- 1 is on 0 is off
- 1 bit means on or off, true or false
- 1 GB is 230 bytes or about a billion bytes
- That means your 4GB of DRAM holds 230 x 4 x 8 = 34,359,738,368 bits.
- binary number system:
  - The numbers you and I learned in school, ranging from 0 to 9, make up the decimal number system.
  - You can use any combination of these 10 digits to represent a numeral value
  - In the binary system, instead of using powers of 10, we use powers of 2
  - Assuming we have a binary number with several digits, we can start from the right hand side again:
    First digit stands for 20, so these are the 1’s
    Second digit: 21, these are the 2’s
    Third digit: 22, these are the 4’s
    Fourth digit: 23, these are the 8’s
    Fifth digit: 24, these are the 16’s
    Sixth digit: 25, these are the 32’s
    Seventh digit: 26, these are the 64’s
    Eighth digit: 27, these are the 128’s
    Ninth digit: 28, these are the 256’s
    etc.

  - Unlike in the decimal system, here in binary each of these digits simply tells us whether the digit is “on” or “off”.

  - When you see a “1”, it means that the value of that digit is included in the numerical value that we wish to represent.

  Binary numbers decoded: a simple example

So how would we represent the number we just saw in decimal notation, 216, in binary?

Let’s give it a go!

    1. First, let’s start by looking at the powers of 2 in the list above. We need to find the largest value that is less than the value of 216.
    2. We see that it is the 128’s, so we need 8 binary digits in this case, from 20 to 27. You can see these 8 spots in the image below.
    Since 128 is “included” in our number, let’s indicate this by a “1” in the 128’s place in the image below.
    Then, let’s do a simple subtraction: 216 – 128 = 88.
    Again, let’s repeat the first step and find the largest value that is less than this leftover of 88. We see it is the 64’s, so we put a “1” in the digit for 26.
    Now, let’s subtract again: 88 – 64 = 24.
    So, going back to the first step we see that the next digit we will need to use a “1” for, is the 16’s place, or 24.
    We simply keep repeating these steps for finding out which binary digits get a value of either “1” or “0”.

Finally, we end up with the following binary sequence: 11011000.
