#include "gba.h"
#include "print.h"
#include "text.h"
#include "game.h"

enum STATE{START,GAME,WIN} state;

u16 buttons;
u16 oldButtons;
int frameCounter;
int playerX, playerY,pVx,pVy;
int bombX, bombY, bombVx, bombVy;
u16 bgColor = BLACK;
int active;
int rectangleCOUNT = 42;
int bombCollision;
int oldpVx;


void gameOver();
void initialize();
void updateGame();
void drawGame();
void updatePlayer();
void updateBomb();

int main() {

    initialize();
    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        switch(state) {
            case(START):
                waitForVBlank();
                drawGame();
                drawString(5,10,"Press Start to start game", GREEN);
                if (BUTTON_PRESSED(BUTTON_START)) {
                    drawString(5,10,"Press Start to start game", bgColor);
                    state = GAME;
                }
                break;
            case(GAME):
                updateGame();
                waitForVBlank();
                drawGame();
                break;
            case(WIN):
                gameOver();
                break;
        }
    }
}

void initialize() {
    REG_DISPCTL = MODE(3) | BG2_ENABLE;
    fillScreen(bgColor);
    playerX = 5;
    playerY = 20;
    pVx = 1;
    pVy = 2;
    oldpVx = pVx;
    frameCounter = 0;
    bombCollision = 0;
    bombVx = pVx;
    bombVy = pVy;
    initializeRect();
    drawRows();
    initializeFiller();
    drawFillerRects();
    state = START;
    active = 0;
    mgba_open();

}

void drawGame(){
    if (BUTTON_HELD(BUTTON_SELECT)){
        // if the button is down & moving to the left logic
        if (pVx < 0){
        drawPlayer(playerX - pVx + 2, playerY,4,8,bgColor);
        drawPlayer(playerX,playerY,4,8,RED);
                // if the button is down & moving to the right logic
        } else {
        drawPlayer(playerX - pVx - 2, playerY,4,8,bgColor);
        drawPlayer(playerX,playerY,4,8,RED);
        }
        //select not held, draw & erase normally
    } else {
        drawPlayer(playerX - pVx, playerY,4,8,bgColor);
        drawPlayer(playerX,playerY,4,8,RED);
    }
    //if there's already a bomb, can't make another
    if (active == 1) {
        drawBomb(bombX - bombVx, bombY - bombVy,4,bgColor);
        drawBomb(bombX,bombY,4, MAGENTA);
    }
    //checks if the bomb has collided with anything & erases it
        if (bombCollision == 1) {
        drawBomb(bombX,bombY,4,bgColor);
        active = 0;
        bombCollision = 0;
    }

    //check all collisions with destroyable rectangles
    for (int i = 0; i < 42; i++) {
        if (collision(bombX,bombY,4,4,arr[i].x,arr[i].y - 2,20,20)) {
            if (arr[i].exist == 1){
                drawRectangle(arr[i].x,arr[i].y,20,20,bgColor);
                active = 0;
                rectangleCOUNT -= 1;
                bombCollision = 1;
                arr[i].exist = 0;
            }
        }
    }
    // check collisions with filler gray rectangles
    for (int j = 0; j < 6; j++) {
        if (collision(bombX,bombY,4,4,fillerRectangles[j].x, fillerRectangles[j].y - 4,20,20)) {
            bombCollision = 1;
        }
    }
}
// update the player's position each time updateGame called 
void updatePlayer() {
    playerX += pVx;

//dont go off left side
    if (playerX < 0) { 
        playerX = 0;
        pVx = -pVx;
    }
//dont go off right side
        if (playerX + 4 >= 240) { 
        playerX = 235;
        pVx = -pVx;
    }
}
// update the bomb's position each time updateGame called & sets variable if it hits a border
void updateBomb() {
    if (active) {
        bombX += bombVx;
        bombY += bombVy;
    }

    if (BUTTON_PRESSED(BUTTON_B) && (active == 0)) {
        active = 1;
        bombX = playerX;
        bombY = playerY;
        bombVx = pVx;
        bombVy = pVy;
    }

//dont go off left side
    if (bombX == 0) { 
        bombCollision = 1;
    }
//dont go off right side
    if (bombX >= 240 - 4) { 
        bombCollision = 1;
    }
// dont go off top  
    if (bombY < 0) { 
        bombCollision = 1;
    }  
// dont go off bottom 
    if (bombY >= 156) { 
        bombCollision = 1;
    }  
}
//updates positions of player and bomb, implements player velocity logic & moves to the next state when all the destroyable rectangles are gone
void updateGame(){
    updateBomb();
    updatePlayer();
    frameCounter++;
    if (frameCounter == 60) {
        frameCounter = 0;
        }

    if (BUTTON_HELD(BUTTON_SELECT)) {
        if (pVx < 0) {
            pVx = -3;
        } else {
            pVx = 3;
        }
    } else {
        oldpVx = pVx;
        if (pVx < 0){
            pVx = -1;
        } else{
            pVx = 1;
        }
    }

    if (rectangleCOUNT == 0){
        state = WIN;
    }
}
//ends game & displays text to user
void gameOver(){
    drawString(5,10,"You Won! Game Over",GREEN);
}