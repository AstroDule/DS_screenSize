# DS_screenSize
Objective C solution to find out the exact model of iPhone or iPad based on actual width and heigth of the device. 
Here is the code to use it:
```
    // fetch proper size of the screen for the device at hand
    DS_screenSize * ds_screenSize = [[DS_screenSize alloc] init];
    int newWidth = [ds_screenSize screenWidth];
    int newHeight = [ds_screenSize screenHeigth];
```
    
