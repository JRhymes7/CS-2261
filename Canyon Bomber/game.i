# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
# 23 "gba.h"
extern volatile unsigned short* videoBuffer;
# 35 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 55 "gba.h"
void drawRectangle(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
# 71 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 2 "game.c" 2
# 1 "game.h" 1
void drawVerticalLine(int x, int y, int length, unsigned short color);
void drawHorizontalLine(int x, int y, int length, unsigned short color);
void drawPlayer(int x, int y, int width, int height,u16 color);
void drawRows();

void drawBomb(int x, int y, int length, unsigned short color);

void drawFillerRects();
void initializeRect();
void initializeFiller();

typedef struct {
    int x;
    int y;
    int width;
    int height;
    int exist;
    u16 color;
} RECTANGLES;
RECTANGLES arr[42];

typedef struct {
    int x;
    int y;
    int size;
    u16 color;
} FILLER;
FILLER fillerRectangles[6];
# 3 "game.c" 2
# 24 "game.c"
void drawVerticalLine(int x, int y, int length, unsigned short color) {
        for (int i = 0; i < length; i++) {
        (videoBuffer[((y+i) * (240) + (x))] = color);
    }
}

void drawHorizontalLine(int x, int y, int length, unsigned short color) {
        for (int i = 0; i < length; i++) {
        (videoBuffer[((y) * (240) + (x+i))] = color);
    }
}

void drawPlayer(int x, int y, int width, int height,u16 color){
    drawRectangle(x,y,width,height,color);
}

void initializeRect(){
    int expo = 0;
    for (int i = 0; i < 8; i++) {
        arr[i].x = 40 + expo * 20;
        arr[i].y = 140;
        arr[i].width = 20;
        arr[i].height = 20;
        arr[i].exist = 1;
        arr[i].color = (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10);
        expo++;
    }
    expo = 0;
    for (int i = 8; i < 18; i++) {
        arr[i].x = 20 + expo * 20;
        arr[i].y = 120;
        arr[i].width = 20;
        arr[i].height = 20;
        arr[i].exist = 1;
        arr[i].color = (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10);
        expo++;
    }
    expo = 0;
    for (int i = 18; i < 30; i++) {
        arr[i].x = 0 + expo * 20;
        arr[i].y = 100;
        arr[i].width = 20;
        arr[i].height = 20;
        arr[i].exist = 1;
        arr[i].color = (((31) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10);
        expo++;
    }
    expo = 0;
    for (int i = 30; i < 42; i++) {
        arr[i].x = 0 + expo * 20;
        arr[i].y = 80;
        arr[i].width = 20;
        arr[i].height = 20;
        arr[i].exist = 1;
        arr[i].color = (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10);
        expo++;
    }
    expo = 0;
}
void drawRows(){
    for (int i = 0; i < 42; i ++) {
        drawRectangle(arr[i].x,arr[i].y,arr[i].width, arr[i].height,arr[i].color);
    }
}



void drawBomb(int x, int y, int length, unsigned short color){

    for (int i = 0; i < length; i++) {
        for (int j = 0; j < (length - i); j++) {
            (videoBuffer[((y+j) * (240) + (x+i))] = color);
        }
    }

    for (int i = 0; i < length; i++) {
        for (int j = 0; j < (length - i); j++) {
            (videoBuffer[((y+j) * (240) + (x-i))] = color);
        }
    }

    for (int i = 0; i < length; i++) {
        for (int j = 0; j < (length - i); j++) {
            (videoBuffer[((y-j) * (240) + (x+i))] = color);
        }
    }

    for (int i = 0; i < length; i++) {
        for (int j = 0; j < (length - i); j++) {
            (videoBuffer[((y-j) * (240) + (x-i))] = color);
        }
    }
}

void initializeFiller(){
    fillerRectangles[0].x = 0;
    fillerRectangles[0].y = 140;
    fillerRectangles[0].size = 20;
    fillerRectangles[0].color = (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10);

    fillerRectangles[1].x = 20;
    fillerRectangles[1].y = 140;
    fillerRectangles[1].size = 20;
    fillerRectangles[1].color = (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10);

    fillerRectangles[2].x = 200;
    fillerRectangles[2].y = 140;
    fillerRectangles[2].size = 20;
    fillerRectangles[2].color = (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10);

    fillerRectangles[3].x = 220;
    fillerRectangles[3].y = 140;
    fillerRectangles[3].size = 20;
    fillerRectangles[3].color = (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10);

    fillerRectangles[4].x = 220;
    fillerRectangles[4].y = 120;
    fillerRectangles[4].size = 20;
    fillerRectangles[4].color = (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10);

    fillerRectangles[5].x = 0;
    fillerRectangles[5].y = 120;
    fillerRectangles[5].size = 20;
    fillerRectangles[5].color = (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10);
}
void drawFillerRects(){
    for(int i = 0; i < 6; i++) {
        drawRectangle(fillerRectangles[i].x,fillerRectangles[i].y,20,20,(((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    }
}
