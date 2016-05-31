# Summative Task

## Overall goal

My summative task will be a combination software and hardware product.

I will program a baterial organism game that models the biology concept of Symobsis specifically parasitism.  The idea behind this game is you are a bacteria that must feed off of other bacteria to survive.  However, there is also a bacteria that feeds must feed off of you in order to survive.  So to ensure your survival you must, feed of of bacteria A while avioding bacteria B using the arrowkeys. 

This game would be great for biology class due to the fact that this is a very real topic and a real case scenario, I hope this application can be used to help students to gain a greater understanding of mutalism.  
## Sub-goals

* extend Motion class (that we developed earlier together) to allow for force accumulation (wind, gravity, other forces)
* make the arrow keys translate to movement
* make it so movement is faster and slower in some areas
* modify colour so that every second you begin to slightly fade
* have the final destination (other bacteria) and once you connect with that destination, the simulation ends

### Questions
1. The user needs to know, the red bacteria chases after you and must be avoided, and the orange ball is the bacteria you must absorb to stay alive.  Your health is also constantly decreasing so if you do nothing you will die, and the game will end.
2. You must use click on the title screen to start the game and you also must, use the arrowkeys too move.
3. I use several differenct classes in my application.  Classes inherit methods from other classes, ie. https://github.com/rsgc-kelly-c/summative-task/commit/3b50904e7ce850b8d6c8621f6c26294925536cdd This is how the xBacteria follows the yBacteria using RVectors. https://github.com/rsgc-kelly-c/summative-task/commit/e5bfd6ef3cca1f9a2bc63039da63f15d43976771 The score interaction takes place upon collecting a new bacteria.
4. My function names are very readable, ie. collide(), collideEnemy(Bacteriay enemy)... https://github.com/rsgc-kelly-c/summative-task/blob/master/summative_task/summative_task.pde This may be a game about bacteria but they are human friendly. Comments were also implemented where code was confusing.
5. The most important Algorithm in my program is likely the zBacteria array of span.  This ensures that when the user collects a bacteria a new zBacteria() spans, also the life bar is also rather important because it ends the simulation and ends cue's the title screen. The Arrow key function is also important, because it enables the user's bacteria to move making the game essentially playable.  It is hard to pick one major piece of code due to the fact that they are all build off of one another.  For instance the span would be meaningless without the collide function. https://github.com/rsgc-kelly-c/summative-task/blob/master/summative_task/summative_task.pde
6. It is fairly straight forward, unless you're bad at playing it, the only user input required to play are the arrow keys, which is very straight forward.  The difficultly also increases as the player continues to play successfully, making the game straight forward and enjoyable for the player.
7. Yes I had 20 commits that were very in depth in deatil on what I did.  Some commits had multiple changes however that was simply because I made goals and tried to accomplish one goal completely, before I committed any changes.  https://github.com/rsgc-kelly-c/summative-task/commits/master



