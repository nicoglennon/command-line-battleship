# Battleship

## Summary

Interactive command-line game of Battleship.  The full rules are on [wikipedia](http://en.wikipedia.org/wiki/Battleship_\(game\)):

- The game is played between two players (one human, one computer).
- Each player has a 10 x 10 board with rows labeled 1 - 10 and columns labeled A - J (see file `board.txt`).
- Players have their own fleets of ships and arrange them on their own boards.
- Players take turns firing on their opponent's ships, taking as many shots per turn as the number of their unsunk ships.
- Shot locations are called out by referencing board coordinates (e.g., "A3", "B6", etc).
- On a board, shots that miss are represented with a `/` and hits are represented with an `X`.
- Ships are sunk when they've been hit a number of times equal to their size (i.e., the opponent has fired on each board location occupied by the ship).

### Fleet of Ships

| Ship       | Size | Quantity |
| :--------- | ----:| --------:|
| Carrier    | 5    | 1        |
| Battleship | 4    | 1        |
| Cruiser    | 3    | 1        |
| Destroyer  | 2    | 2        |
| Submarine  | 1    | 2        |

*Table 1*.  Details for ships in each player's fleet.


## Setup

You will need Ruby installed on your machine to play (you can use version 2.3.3 or later). Clone this repo on your local machine and run:

`ruby runner.rb`

First player then places their ships (piece by piece), and same goes for player 2. Once player 2 has positioned their ships, the game begins!
