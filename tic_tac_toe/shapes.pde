 void drawBoard() { 
   stroke(0); 
   strokeWeight(1);  
   
   line(0, CELL_SIZE, 500, CELL_SIZE);
   line(0, CELL_SIZE * 2, 500, CELL_SIZE * 2);  
   
   line(CELL_SIZE, 0, CELL_SIZE, 500);
   line(CELL_SIZE * 2, 0, CELL_SIZE * 2, 500);
 } 
 
 void drawO(int index) { 
   int row = index / 3; 
   int col = index % 3;  
   
   float centerX = col * CELL_SIZE + CELL_SIZE / 2.0; 
   float centerY = row * CELL_SIZE + CELL_SIZE / 2.0; 

   ellipse(centerX, centerY, CELL_SIZE, CELL_SIZE); 
 } 
 
 void drawX(int index) {
   int row = index / 3; 
   int col = index % 3;  
   
   float centerX =  col * CELL_SIZE + CELL_SIZE / 2.0; 
   float centerY = row * CELL_SIZE + CELL_SIZE / 2.0; 
   
   stroke(0); 
   strokeWeight(1); 

   int distance = CELL_SIZE / 2; 
   
   line(centerX - distance, centerY - distance, centerX + distance, centerY + distance);  
   line(centerX + distance, centerY - distance, centerX - distance, centerY + distance); 
 } 
 
 void drawMarks() { 
   for (int i = 0; i < 9; i++) {
     if (board[i] == X) {
       drawX(i); 
     }else if (board[i] == O) {
       drawO(i); 
     }
   }
 }
   
