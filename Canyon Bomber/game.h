void drawVerticalLine(int x, int y, int length, unsigned short color);
void drawHorizontalLine(int x, int y, int length, unsigned short color);
void drawPlayer(int x, int y, int width, int height,u16 color);
void drawRows();
// no more than 4x4
void drawBomb(int x, int y, int length, unsigned short color);
//void drawLitBomb(int x, int y, int length, int vx, int vy, unsigned short color);
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