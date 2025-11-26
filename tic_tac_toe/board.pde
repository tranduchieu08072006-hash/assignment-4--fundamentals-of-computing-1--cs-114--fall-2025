 int[] board = new int[9]; 
 boolean gameOver = false; 
 boolean draw = false;
 
 void initGame() { 
   for (int i = 0; i < 9; i++) { 
     board[i] = EMPTY; 
   }
   gameOver = false; 
 }  
 
 void computerMove() { 
   ArrayList<Integer> emptyCells = new ArrayList<Integer>(); 
   
   for (int i = 0; i < 9; i++) { 
     if (board[i] == EMPTY) {
       emptyCells.add(i); 
     }
   }
   
   if (emptyCells.size() == 0) { 
     return;
   }
   
   int random = int(random(emptyCells.size())); 
   int index = emptyCells.get(random); 
   
   if(gameOver){
     return;
   }
   board[index] = X;   
   
   int winner = checkWinner(); 
   if (winner == X) {
     println("Computer won"); 
     gameOver = true; 
     return;
   } 
   if (isBoardFull()) {
     println("No one has won"); 
     draw = true; 
     gameOver = true;
     return;
   }
     
 }  
 int checkWinner() {  
   int[][] wins = {
     {0, 1, 2}, {3, 4, 5}, {6, 7, 8}, 
     {0, 3, 6}, {1, 4, 7}, {2, 5, 8}, 
     {0, 4, 8}, {2, 4, 6} 
   }; 
   
   for (int i = 0; i < wins.length; i++) {
     int a = wins[i][0]; 
     int b = wins[i][1]; 
     int c = wins[i][2];  
     
     if (board[a] != 0 && board[a] == board[b] && board[b] == board[c]){
      return board[a]; 
     }
   } 
   return EMPTY;
 } 
 
 boolean isBoardFull() {
   for (int i = 0; i < 9; i++) {
     if (board[i] == EMPTY) {
       return false; 
     }
   }
   return true; 
 }
 

 
