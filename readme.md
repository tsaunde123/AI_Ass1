# Artificial Intelligence and Logic Programming - COMS30106 #
## Setting up ##
1. You need the latest version of this ailp zip file (can be found [here](https://github.com/So-Cool/AILP/releases/latest)).
2. You need a fairly up to date version of SWI-Prolog.
3. You need to be connected to the internet.
4. There is a sub folder for each assignment in `ailp` directory. Each assignment folder has a folder called `library/` in it, which contains the `assignmentN_library.pl` (where N is assignment number).

## Running an assignment ##
1. Change directory to the root folder (i.e. one that contains this readme).
2. Update your **candidate number** (it is **not** your *user id* or *student umber*) in the `ailp_assignmentN_12345.pl` file name and `candidate_number/1` predicate in this file. <font color="red"><b>Failure to do so will result in loosing half of the marks!</b></font>
2. Start the assignment:
    * `swipl -s ailp.pl assignment1` to start assignment1 (`ailp/assignment1/library/assignment1_library.pl`),
    * `swipl -s ailp.pl assignment2` to start assignment2 (`ailp/assignment2/library/assignment2_library.pl`).
3. Consult the file with your answers, e.g. `[ailp_assignmentN_12345]`.
4. Start solving chosen assignment.
    * To start the web server type command `start.`. This will give you an option to open a browser. Press Enter or type 'Y'.
    * Go to the web browser and press *Run* button.
    * To start with a fresh board type `reset.`.
    * To stop the web server type command `stop.`.
    * Don't forget to use `make.` and `reset.` when you have made changes to the code.

## Important notes ##
* Place all your code in designated file `ailp_assignmentN_12345.pl`.
* Do **not** change the library files unless otherwise instructed.
* Do not use `start/0`, `stop/0`, `reset/0` in your answers.
* In your answers you can only use predicates from the *library* which are exported in the module definition (see the list below).

| Assignment 1            | Assignment 2 |
| ----------------------- | ------------ |
| `ailp_show_move/2`      |              |
| `ailp_start_position/1` |              |
| `ailp_show_complete/0`  |              |
| `ailp_grid_size/1`      |              |
| <del>`reset/0`</del>    |              |
| `complete/1`            |              |
| `new_pos/3`             |              |
| `m/1`                   |              |
| `next/1`                |              |
| <del>`start/0`</del>    |              |
| <del>`stop/0`</del>     |              |

<font color="red"><b>Failure to comply with these will result in loosing half of the marks!</b></font>

## COMS30106: Assignment 1 ##
The learning goals covered in this assignment:
1. Prolog: facts, predicates; querying them and writing your own.
2. Introducing searching.
3. Introducing backtracking

### About the code ###
Download the *ailp* zip file [here](https://github.com/So-Cool/AILP/releases/latest).  
There are two files you will need to look at:

* `ailp_assignment1_12345.pl`
* `ailp/assignment1/library/assignment1_library.pl`

To find the answers you should not change anything in the library file (though you may want to make a small change in order to test Q5b). You will have to use some of the predicates though.

### The world and agents ###
* Run the assignment 1 as described above.
* You should see a grid world, and an agent at a particular position in this world.
* The agent can move around the grid horizontally or vertically (north, south, east or west).
* The questions in this assignment look at how we move within and search this world using Prolog.
* The Prolog code is linked with this web page and JavaScript is used to display the 
world. You don't need to worry about this though, you'll just be using the 2 Prolog 
files we've supplied for this assignment. Of course, feel free to take a look 
if you wish!
* You will notice a term `p(X,Y)` is used. This represents a position in the grid world. 

### Submission instructions ###
You should submit a single Prolog file with name in the following format `ailp_assigment1_candidate-number.pl`, e.g. `ailp_assignment1_12345.pl`.

This file will contain the answers to each question in the form of a Prolog fact or predicate.  
At the top of the Prolog file give the candidate number fact: `candidate_number(12345).`

The answers should be of 1 of the following types:
* A Prolog query, e.g. `q1(prolog_query).`;
* A number, e.g. `q1(1).`;
* A Prolog list e.g. `q1([1,2,3,4]).`;
* A Prolog return statement in single quotes e.g. `q1(false).`;
* A Prolog predicate e.g. an implementation of `q6_spiral/1`.

If you load your answer script into Prolog using for example `?-consult('assignment1_answers_12345.pl').`, then your answers should be returned when you give the following queries:
```
>?-q1(A1).
>?-q2(A2).
```

etc...

<font color="red"><b>Check that this runs before submitting!</b></font>





### Questions ###
#### Part A: Querying prolog ####
**Q1.** [1 mark] After using the `?-reset.` query and pressing step in the web page, you should be able to see your agent at its start position. What Prolog query would you use to retrieve this position?

Answer example: `q1(prolog_query).`

**Q2.** [2 marks] Using the `new_pos/3` predicate, answer the following:  
**Q2a.** [1 mark] Suppose your agent is at position `p(1,1)` and should move *east*. Write a query to retrieve the new position of your agent.

Answer example: `q2a(prolog_query).`

**Q2b.** [1 mark] Suppose your agent is at position `p(1,1)` and wants to move *north*. Write a query to retrieve the new position of your agent.  
As you can see this query **DOES NOT** succeed.  
On what line of `assignment1_library.pl` does Prolog fail?

Answer example: `q2b(7).`

**Q3.** [1 mark] Look at the code and find the predicates (with 1 argument) that specify which direction the agent can move in. If an agent moves by simply calling this predicate, moving to the new position, then backtracking to retrieve another direction by calling this predicate again, what is the order of the directions that the agent will move in?

Answer example: `q3([n,e,s,w]).`

#### Part B: Visualising search ####
A path is a sequence of adjacent positions representing how the agent moves in the world.  

**Q4.** [8 marks] Run the query `?-next(L).`
**Q4a.** [2 marks] At some point the agent finds itself at a dead end and starts backtracking. What is the path from the starting position right until the first dead end, just before the agent starts backtracking? (make sure you give the whole path in the correct order in your answer)

Answer example: `q4a([p(1, 1), p(1, 2), p(1, 3)]).`

**Q4b.** [2 marks] After backtracking once and thereby avoiding the first dead end, give the full path from the starting position to the second dead end. 

Answer example: `q4b([p(1, 1), p(1, 2), p(2, 2), p(2, 3)]).`

**Q4c.** [2 marks] Give the first full path covering the whole grid found by the agent.  
*Hint:* you may want to disable the visualisation to speed things up, by commenting out these lines:
```
%ailp_show_move(P,P1),
%do_command([mower,console,PsA],_R),
```
 
Answer example: `q4c([p(1, 1), p(2, 1), p(3, 1), p(4, 1)]).`

**Q4d.** [2 marks] Give the second full path covering the whole grid found by the agent.

Answer example: `q4d([p(1, 1), p(2, 1), p(3, 1), p(4, 1)]).`

#### Part C: Coding questions ####
**Q5.** [6 marks] Look in `assignment1_library.pl` and find the predicate `ailp_show_move/2`. This predicate moves your agent between squares in the grid.

**Q5a.** [3 marks] Write a predicate called `q5_corner_move/0` that moves the agent between all 4 corner squares in the world, in any order. The agent should not visit any other squares.

Answer: The `q5_corner_move/0` predicate you have declared. We should be able to run `?-q5_corner_move.` to see the visualisation in the web browser.

**Q5b.** [3 marks] The `ailp_grid_size/1` predicate changes the size of the grid. If you change this predicate to 5 for example, does your `q5_corner_move/0` predicate
still work?

Write another predicate `q5_corner_move2/0` that uses this `ailp_grid_size/1` predicate so that the agent moves between the corners no matter the size of the grid. (i.e. the locations are not hard coded)

Answer: The `q5_corner_move2/0` predicate you have declared. We should be able to run `?-q5_corner_move2.` to see the visualisation in the web browser.

NB. Don't forget to change the grid size back after you have tested this!

**Q6.** [5 marks]  Write a predicate `q6_spiral/1` that has a single argument being the path taken by the agent. The agent should start in one of the outer squares (any square next to the edge of the board), and cover the board in a spiral (either clockwise or anticlockwise) such that it ends in one of the 4 central positions.

NB: The `?-reset.` query sets the agents position to your start position, so the first thing your predicate will need to do is move the agent to an outer square (of your choice) if it is not already on one of these.

Answer: The `q6_spiral/1` predicate you have declared. We should be able to run `?-q6_spiral(X).` to find the path and see the visualisation in the web browser.

NB. Use recursion / backtracking for this question.
