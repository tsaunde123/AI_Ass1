# COMS30106 main assignment #
## Setting up ##
1. You need the latest version of [this coursework](https://github.com/coms30106/assignment/releases/latest).
2. You need a fairly up to date version of [SWI-Prolog](http://www.swi-prolog.org/download/stable).
3. You need to be connected to the internet.
4. There is a library file for each part of this assignment in `ailp/library` directory. Each assignment library `assignmentN_library.pl` (where N is assignment number) holds the functions you will use. YOU SHOULD NOT CHANGE THIS FILE.

## Running an assignment ##
1. Change directory to the root folder (i.e. one that contains this *readme.md*).
2. Update your **candidate number** (this is **neither** your *user id* nor your *student number*) in the `assignmentN_12345.pl` filename and `candidate_number/1` predicate in this file. <font color="red"><b>Failure to do so will result in loosing half of the marks!</b></font>
2. Start the assignment (if this doesn't work try `chmod +x asilp.pl` first) with `./ailp.pl assignmentN`:
    * `./ailp.pl assignment1` to start assignment1,
    * `./ailp.pl assignment2` to start assignment2.
3. Consult the file with your answers, e.g. `[assignmentN_12345]`.
4. Start solving the assignment.
    * To start the web server type command `start.`. This will give you an option to open a browser. Press Enter or type `Y`.
    * Go to the web browser and press the *Run* button.
    * To start with a fresh board type `reset.`.
    * To stop the web server type command `stop.`.
    * Don't forget to use `make.` and `reset.` when you have made changes to the code.

## Important notes ##
* Place all your code in the designated `assignmentN_12345.pl` file.
* Do **not** change the library files unless otherwise instructed.
* Do not use `start/0`, `stop/0` and `reset/0` predicates in your answers.
* In your answers you can only use predicates from the *library* which are exported in the module definition (see the list below).

| Assignment 1            | Assignment 2               |
| ----------------------- | -------------------------- |
| `ailp_show_move/2`      | `map_adjacent/3`           |
| `ailp_start_position/1` | `map_distance/3`           |
| `ailp_show_complete/0`  | `agent_do_move/2`          |
| `ailp_grid_size/1`      | `agent_do_moves/2`         |
| <del>`reset/0`</del>    | `agent_current_energy/2`   |
| `complete/1`            | `agent_current_position/2` |
| `new_pos/3`             | `agent_topup_energy/2`     |
| `m/1`                   | `agent_ask_oracle/4`       |
| `next/1`                | `ailp_reset/0`             |
| <del>`start/0`</del>    | `ailp_start_position/1`    |
| <del>`stop/0`</del>     |                            |

<font color="red"><b>Failure to comply with these will result in loosing half of the marks!</b></font>

## Assignment 1 ##
Assignment 1 details are available [here](ailp/library/assignment1.md)

## Assignment 2 ##
Assignment 2 details are available [here](ailp/library/assignment2.md)
