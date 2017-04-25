# Primes
https://en.wikipedia.org/wiki/Prime_number

`ruby app.rb`

Let's view help

````
Welcome to the PrimesNumbers. Type `help` for the usage instructions
> help
`help` - Shows this help message
`generate` - Generate the amount N of prime numbers
`view mtable` - Print out a multiplication table for generated prime numbers
````
Let's generate 20 prime numbers

````
> generate 20
First 20 prime numbers generated
````
Let's view multiplication table of this numbers

````
> view mtable
+----+-----+-----+-----+-----+-----+-----+------+------+------+------+------+------+------+------+------+------+------+------+------+------+
|    | 2   | 3   | 5   | 7   | 11  | 13  | 17   | 19   | 23   | 29   | 31   | 37   | 41   | 43   | 47   | 53   | 59   | 61   | 67   | 71   |
+----+-----+-----+-----+-----+-----+-----+------+------+------+------+------+------+------+------+------+------+------+------+------+------+
| 2  | 4   | 6   | 10  | 14  | 22  | 26  | 34   | 38   | 46   | 58   | 62   | 74   | 82   | 86   | 94   | 106  | 118  | 122  | 134  | 142  |
| 3  | 6   | 9   | 15  | 21  | 33  | 39  | 51   | 57   | 69   | 87   | 93   | 111  | 123  | 129  | 141  | 159  | 177  | 183  | 201  | 213  |
| 5  | 10  | 15  | 25  | 35  | 55  | 65  | 85   | 95   | 115  | 145  | 155  | 185  | 205  | 215  | 235  | 265  | 295  | 305  | 335  | 355  |
| 7  | 14  | 21  | 35  | 49  | 77  | 91  | 119  | 133  | 161  | 203  | 217  | 259  | 287  | 301  | 329  | 371  | 413  | 427  | 469  | 497  |
| 11 | 22  | 33  | 55  | 77  | 121 | 143 | 187  | 209  | 253  | 319  | 341  | 407  | 451  | 473  | 517  | 583  | 649  | 671  | 737  | 781  |
| 13 | 26  | 39  | 65  | 91  | 143 | 169 | 221  | 247  | 299  | 377  | 403  | 481  | 533  | 559  | 611  | 689  | 767  | 793  | 871  | 923  |
| 17 | 34  | 51  | 85  | 119 | 187 | 221 | 289  | 323  | 391  | 493  | 527  | 629  | 697  | 731  | 799  | 901  | 1003 | 1037 | 1139 | 1207 |
| 19 | 38  | 57  | 95  | 133 | 209 | 247 | 323  | 361  | 437  | 551  | 589  | 703  | 779  | 817  | 893  | 1007 | 1121 | 1159 | 1273 | 1349 |
| 23 | 46  | 69  | 115 | 161 | 253 | 299 | 391  | 437  | 529  | 667  | 713  | 851  | 943  | 989  | 1081 | 1219 | 1357 | 1403 | 1541 | 1633 |
| 29 | 58  | 87  | 145 | 203 | 319 | 377 | 493  | 551  | 667  | 841  | 899  | 1073 | 1189 | 1247 | 1363 | 1537 | 1711 | 1769 | 1943 | 2059 |
| 31 | 62  | 93  | 155 | 217 | 341 | 403 | 527  | 589  | 713  | 899  | 961  | 1147 | 1271 | 1333 | 1457 | 1643 | 1829 | 1891 | 2077 | 2201 |
| 37 | 74  | 111 | 185 | 259 | 407 | 481 | 629  | 703  | 851  | 1073 | 1147 | 1369 | 1517 | 1591 | 1739 | 1961 | 2183 | 2257 | 2479 | 2627 |
| 41 | 82  | 123 | 205 | 287 | 451 | 533 | 697  | 779  | 943  | 1189 | 1271 | 1517 | 1681 | 1763 | 1927 | 2173 | 2419 | 2501 | 2747 | 2911 |
| 43 | 86  | 129 | 215 | 301 | 473 | 559 | 731  | 817  | 989  | 1247 | 1333 | 1591 | 1763 | 1849 | 2021 | 2279 | 2537 | 2623 | 2881 | 3053 |
| 47 | 94  | 141 | 235 | 329 | 517 | 611 | 799  | 893  | 1081 | 1363 | 1457 | 1739 | 1927 | 2021 | 2209 | 2491 | 2773 | 2867 | 3149 | 3337 |
| 53 | 106 | 159 | 265 | 371 | 583 | 689 | 901  | 1007 | 1219 | 1537 | 1643 | 1961 | 2173 | 2279 | 2491 | 2809 | 3127 | 3233 | 3551 | 3763 |
| 59 | 118 | 177 | 295 | 413 | 649 | 767 | 1003 | 1121 | 1357 | 1711 | 1829 | 2183 | 2419 | 2537 | 2773 | 3127 | 3481 | 3599 | 3953 | 4189 |
| 61 | 122 | 183 | 305 | 427 | 671 | 793 | 1037 | 1159 | 1403 | 1769 | 1891 | 2257 | 2501 | 2623 | 2867 | 3233 | 3599 | 3721 | 4087 | 4331 |
| 67 | 134 | 201 | 335 | 469 | 737 | 871 | 1139 | 1273 | 1541 | 1943 | 2077 | 2479 | 2747 | 2881 | 3149 | 3551 | 3953 | 4087 | 4489 | 4757 |
| 71 | 142 | 213 | 355 | 497 | 781 | 923 | 1207 | 1349 | 1633 | 2059 | 2201 | 2627 | 2911 | 3053 | 3337 | 3763 | 4189 | 4331 | 4757 | 5041 |
+----+-----+-----+-----+-----+-----+-----+------+------+------+------+------+------+------+------+------+------+------+------+------+------+
````

Let's type unknown command

````
> test
Command not found. Type `help` for usage instructions
````

## Application structure

The app has modular structure based on command pattern. You can easily add new command or remove existing. Or have different behaviour of the same command for different objects.

Generated prime numbers are stored in the text file. So you can easily view multiplication table without need to generate this numbers again in memory or etc.

All string constants placed in the `constants.rb` for simple use and modification.

## Services

App has six services

- `commands_executor` - service for match and execute commands
- `commands_parser` - service for parse commands
- `number_generator` - service for generate and save prime numbers
- `primes_multiplicator` - service for multiply prime numbers
- `primes_reader` - service for read prime numbers from text file
- `table_viewer` - service for display result of multiplication in a nice formatted table

## Tests

I use TDD process & manual execution when developing this application. Test coverage is not 100%, but at least it cover major critical functionality

````
Testing started at 11:17 ...
Work directory: /home/terminator/dev/primes_numbers/test
Loading files.... 
=========================================
1. /home/terminator/dev/primes_numbers/test/services/test_number_generator.rb:1
2. /home/terminator/dev/primes_numbers/test/services/test_commands_executor.rb:1
3. /home/terminator/dev/primes_numbers/test/services/test_primes_multiplicator.rb:1
4. /home/terminator/dev/primes_numbers/test/services/test_commands_parser.rb:1
5. /home/terminator/dev/primes_numbers/test/test_helper.rb:1
 
5 files were loaded.
=========================================
Running tests...
Started

First 10 prime numbers generated
Finished in 0.00148s
5 tests, 6 assertions, 0 failures, 0 errors, 0 skips
````

Thank you!
