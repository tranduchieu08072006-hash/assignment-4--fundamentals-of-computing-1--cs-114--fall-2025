 void setup() {
   size(500, 500);  
   initGame(); 
   computerMove();  
 } 
 
 void draw() { 
   drawBoard(); 
   drawMarks();
 }
 
 void keyPressed() {  
   if (draw) {
     println("No one has won"); 
     return; 
   }
   if (gameOver) {
     println("game over"); 
     return; 
   } 
   
   if (key >= '0' && key <= '8') { 
     int index = key - '0';  
     
     if (board[index] == EMPTY) {
       board[index] = O;   
       int winner = checkWinner(); 
       if (winner == O) {
         println("Player won"); 
         gameOver = true; 
         return;
       } 
       if (isBoardFull()) {
         println("No one has won"); 
         draw = true;  
         gameOver = true; 
         return;
       }
       println("Game still in progress");
       computerMove();
     } else {
       println("That cell is not empty");
     }
   }else {
     println("Please enter number between 0 and 8"); 
   }
 }
   
