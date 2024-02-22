# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
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
# 2 "main.c" 2
# 1 "print.h" 1
# 26 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 27 "print.h" 2
# 36 "print.h"

# 36 "print.h"
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
uint8_t mgba_open(void);
void mgba_close(void);
# 3 "main.c" 2
# 1 "text.h" 1

void drawChar(int x, int y, char ch, unsigned short color);
void drawString(int x, int y, char *str, unsigned short color);
# 4 "main.c" 2
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
# 5 "main.c" 2

enum STATE{START,GAME,WIN} state;

u16 buttons;
u16 oldButtons;
int frameCounter;
int playerX, playerY,pVx,pVy;
int bombX, bombY, bombVx, bombVy;
u16 bgColor = (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10);
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
        buttons = (*(volatile unsigned short*) 0x04000130);

        switch(state) {
            case(START):
                waitForVBlank();
                drawGame();
                drawString(5,10,"Press Start to start game", (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
                if (((~buttons & ((1 << 3))) && !(~oldButtons & ((1 << 3))))) {
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
    (*(volatile unsigned short*) 0x04000000) = ((3) & 7) | ((1 << (8 + ((2) % 4))));
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
    if ((~buttons & ((1 << 2)))){
        if (pVx < 0){
        drawPlayer(playerX - pVx + 2, playerY,4,8,bgColor);
        drawPlayer(playerX,playerY,4,8,(((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
        } else {
        drawPlayer(playerX - pVx - 2, playerY,4,8,bgColor);
        drawPlayer(playerX,playerY,4,8,(((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
        }
    } else {
        drawPlayer(playerX - pVx, playerY,4,8,bgColor);
        drawPlayer(playerX,playerY,4,8,(((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    }

    if (active == 1) {
        drawBomb(bombX - bombVx, bombY - bombVy,4,bgColor);
        drawBomb(bombX,bombY,4, (((31) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));
    }
        if (bombCollision == 1) {
        drawBomb(bombX,bombY,4,bgColor);
        active = 0;
        bombCollision = 0;
    }


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
    for (int j = 0; j < 6; j++) {
        if (collision(bombX,bombY,4,4,fillerRectangles[j].x, fillerRectangles[j].y - 4,20,20)) {
            bombCollision = 1;
        }
    }
}

void updatePlayer() {
    playerX += pVx;


    if (playerX < 0) {
        playerX = 0;
        pVx = -pVx;
    }

        if (playerX + 4 >= 240) {
        playerX = 235;
        pVx = -pVx;
    }
}

void updateBomb() {
    if (active) {
        bombX += bombVx;
        bombY += bombVy;
    }

    if (((~buttons & ((1 << 1))) && !(~oldButtons & ((1 << 1)))) && (active == 0)) {
        active = 1;
        bombX = playerX;
        bombY = playerY;
        bombVx = pVx;
        bombVy = pVy;
    }


    if (bombX == 0) {
        bombCollision = 1;
    }

    if (bombX >= 240 - 4) {
        bombCollision = 1;
    }

    if (bombY < 0) {
        bombCollision = 1;
    }

    if (bombY >= 156) {
        bombCollision = 1;
    }
}

void updateGame(){
    updateBomb();
    updatePlayer();
    frameCounter++;
    if (frameCounter == 60) {
        frameCounter = 0;
        }

    if ((~buttons & ((1 << 2)))) {
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
void gameOver(){
    drawString(5,10,"You Won! Game Over",(((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
}
