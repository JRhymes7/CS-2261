#include "gba.h"
#include "game.h"

void drawVerticalLine(int x, int y, int length, unsigned short color) {
        for (int i = 0; i < length; i++) {
        setPixel(x,y+i,color);
    }
}

void drawHorizontalLine(int x, int y, int length, unsigned short color) {
        for (int i = 0; i < length; i++) {
        setPixel(x+i,y,color);
    }
}

void drawPlayer(int x, int y, int width, int height,u16 color){
    drawRectangle(x,y,width,height,color);
}
//creates rectangles to be destroyed
void initializeRect(){
    int expo = 0;
    for (int i = 0; i < 8; i++) {
        arr[i].x = 40 + expo * 20;
        arr[i].y = 140;
        arr[i].width = 20;
        arr[i].height = 20;
        arr[i].exist = 1;
        arr[i].color = RED;
        expo++;
    }
    expo = 0;
    for (int i = 8; i < 18; i++) {
        arr[i].x = 20 + expo * 20;
        arr[i].y = 120;
        arr[i].width = 20;
        arr[i].height = 20;
        arr[i].exist = 1;
        arr[i].color = BLUE;
        expo++;
    }
    expo = 0;
    for (int i = 18; i < 30; i++) {
        arr[i].x = 0 + expo * 20;
        arr[i].y = 100;
        arr[i].width = 20;
        arr[i].height = 20;
        arr[i].exist = 1;
        arr[i].color = YELLOW;
        expo++;
    }
    expo = 0;
    for (int i = 30; i < 42; i++) {
        arr[i].x = 0 + expo * 20;
        arr[i].y = 80;
        arr[i].width = 20;
        arr[i].height = 20;
        arr[i].exist = 1;
        arr[i].color = GREEN;
        expo++;
    }
    expo = 0;
}
//draws destroyable rectangles
void drawRows(){
    for (int i = 0; i < 42; i ++) {
        drawRectangle(arr[i].x,arr[i].y,arr[i].width, arr[i].height,arr[i].color);
    }
}


// no more than 4x4, creates bomb
void drawBomb(int x, int y, int length, unsigned short color){
    //right triangle
    for (int i = 0; i < length; i++) {
        for (int j = 0; j < (length - i); j++) {
            setPixel(x+i, y+j, color);
        }
    }
    //left triangle
    for (int i = 0; i < length; i++) {
        for (int j = 0; j < (length - i); j++) {
            setPixel(x-i, y+j, color);
        }
    }
    //upside down right triangle
    for (int i = 0; i < length; i++) {
        for (int j = 0; j < (length - i); j++) {
            setPixel(x+i, y-j, color);
        }
    }
    //upside down left triangle
    for (int i = 0; i < length; i++) {
        for (int j = 0; j < (length - i); j++) {
            setPixel(x-i, y-j, color);
        }
    }
}
//creates gray rectangles that can't be destroyed
void initializeFiller(){
    fillerRectangles[0].x = 0;
    fillerRectangles[0].y = 140;
    fillerRectangles[0].size = 20;
    fillerRectangles[0].color = GRAY;

    fillerRectangles[1].x = 20;
    fillerRectangles[1].y = 140;
    fillerRectangles[1].size = 20;
    fillerRectangles[1].color = GRAY;

    fillerRectangles[2].x = 200;
    fillerRectangles[2].y = 140;
    fillerRectangles[2].size = 20;
    fillerRectangles[2].color = GRAY;

    fillerRectangles[3].x = 220;
    fillerRectangles[3].y = 140;
    fillerRectangles[3].size = 20;
    fillerRectangles[3].color = GRAY;

    fillerRectangles[4].x = 220;
    fillerRectangles[4].y = 120;
    fillerRectangles[4].size = 20;
    fillerRectangles[4].color = GRAY;

    fillerRectangles[5].x = 0;
    fillerRectangles[5].y = 120;
    fillerRectangles[5].size = 20;
    fillerRectangles[5].color = GRAY;
}
// draws gray rectangles on screen
void drawFillerRects(){
    for(int i = 0; i < 6; i++) {
        drawRectangle(fillerRectangles[i].x,fillerRectangles[i].y,20,20,GRAY);
    }
}