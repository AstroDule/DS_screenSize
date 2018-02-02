/*
 *    DS_screenSize.h
 
 *  Copyright 2018, Dusko Savic duskosavic.com
 *
 *    All rights reserved.
 *
 *    Redistribution and use in source and binary forms, with or without modification, are
 *    permitted provided that the following conditions are met:
 *
 *    Redistributions of source code must retain the above copyright notice which includes the
 *    name(s) of the copyright holders. It must also retain this list of conditions and the
 *    following disclaimer.
 *
 *    Redistributions in binary form must reproduce the above copyright notice, this list
 *    of conditions and the following disclaimer in the documentation and/or other materials
 *    provided with the distribution.
 *
 *    Neither the name of Dusko Savic, or duskosavic.com nor the names of its contributors
 *    may be used to endorse or promote products derived from this software without specific
 *    prior written permission.
 *
 *    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 *    ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 *    WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 *    IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
 *    INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 *    NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 *    PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 *    WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 *    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 *    OF SUCH DAMAGE.
 */
#import "DS_screenSize.h"

@implementation DS_screenSize

/////// for screen sizes

int hXXX = 480;
int wXXX = 320;
int newWidthXXX = 320;
int newHeightXXX = 480;

- (int)screenWidth{
    [self widthHeigthString];
    return newWidthXXX;
}

- (int)screenHeigth{
    [self widthHeigthString];
    return newHeightXXX;
    
    }


//////
// returns global varibles newWidth and newHeight for portrait orientation
- (void)widthHeigthString
{
    [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"9iU7YT widthHeigthString  %@", @"" ]];
    
    hXXX = (int)[[UIScreen mainScreen] nativeBounds].size.height;
    wXXX = (int)[[UIScreen mainScreen] nativeBounds].size.width;
    
    [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"KIDRFDE  h = %d  w = %d", hXXX, wXXX ]];
    
    if([[UIDevice currentDevice]userInterfaceIdiom]==UIUserInterfaceIdiomPhone) {
        
        switch (hXXX) {
                
            case 1136:
                //  iPhone 5, 5s, 5c, SE  320 × 568 or 640×1136  326 PPI
                // 640×1136
                //printf("iPhone 5 or 5S or 5C");
                [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"IJHGEWew iPhone 5 or 5S or 5C or SE: %@", @""]];
                newWidthXXX = 320;
                newHeightXXX = 568;
                
                break;
            case 1334:
                //printf("iPhone 6/6S/7/8");
                [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"KIJUHYed iPhone 6/6S/7/8 : %@", @""]];
                newWidthXXX = 375;
                newHeightXXX = 667;
                
                break;
            case 1920:
                //printf("iPhone 6+/6S+/7+/8+");
                [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"UYTREWvcv iPhone 6+/6S+/7+/8+ : %@", @""]];
                newWidthXXX = 414;
                newHeightXXX = 736;
                
            case 2208:
                //printf("iPhone 6+/6S+/7+/8+");
                [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"SSSSScvc iPhone 6+/6S+/7+/8+ : %@", @""]];
                newWidthXXX = 414;
                newHeightXXX = 736;
                
                break;
            case 2436:
                //printf("iPhone X");
                [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"IIKKGGSSdfd iPhone X: %@", @""]];
                newWidthXXX = 375;
                newHeightXXX = 812;
                
                break;
            case 2001:
                //printf("iPhone X");
                [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"KIJRFD iPhone X: %@", @""]];
                newWidthXXX = 375;
                newHeightXXX = 812;
                
                break;
            default:
                [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"LIKUJD unknown : %@", @""]];
                newWidthXXX = 375;
                newHeightXXX = 667;
                
        }
    } else { // it is iPad
        [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"JUNDRV it is an iPad h = %d", hXXX]];
        switch (hXXX) {
                
            case 2732:
                //  12.9 inch iPad Pro  2732‑by‑2048 resolution 264 ppi
                
                [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"IJHGEWew 12.9 inch iPad Pro  2732‑by‑2048 resolution 264 ppi %@", @""]];
                // 1024 x 1346 (portrait) or 1366 x 1004 (landscape)
                newWidthXXX = 1024;
                newHeightXXX = 1346;
                
                break;
            case 2224: // 10.5 inch iPad Pro  2224‑by‑1668 resolution 264 ppi
                
                [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"KIJUHYed 10.5 inch iPad Pro  2224‑by‑1668 resolution 264 ppi : %@", @""]];
                newWidthXXX = 834;
                newHeightXXX = 1112;
                // in landscape it is 1112 x 814
                
                break;
            case 2048:
                // 9.7 inch iPad      2048‑by‑1536 resolution 264 ppi
                // 7.9 inch iPad Mini 2048‑by‑1536 resolution 326 ppi
                
                [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"UYTREWvcv 9.7 inch iPad      2048‑by‑1536 resolution 264 ppi: %@", @""]];
                [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"UYTREWvcv 7.9 inch iPad Mini 2048‑by‑1536 resolution 326 ppi: %@", @""]];
                //1024 x 1346 (portrait) or 1366 x 1004 (landscape)
                newWidthXXX = 1024;
                newHeightXXX = 1346;
                
                break;
            default:
                [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"UYTREWvcv iPad generic %@", @""]];
                newWidthXXX = 1024;
                newHeightXXX = 1346;
                
        }
        
        
    }
    //[BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"OKIHYD iPhoneOverlay discovered : %@", iPhoneOverlay]];
}

// returns global varibles newWidth and newHeight for landscape orientation
- (void)widthHeigthStringLandscape
{
    
    hXXX = (int)[[UIScreen mainScreen] nativeBounds].size.height;
    wXXX = (int)[[UIScreen mainScreen] nativeBounds].size.width;
    switch (hXXX) {
            
        case 1136:
            //  iPhone 5, 5s, 5c, SE  320 × 568 or 640×1136  326 PPI
            // 640×1136
            //printf("iPhone 5 or 5S or 5C");
            [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"IJHGEW iPhone 5 or 5S or 5C or SE: %@", @""]];
            
            newWidthXXX = 568;
            newHeightXXX = 320 ;
            
            break;
        case 1334:
            //printf("iPhone 6/6S/7/8");
            [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"KIJUHY iPhone 6/6S/7/8 : %@", @""]];
            
            newWidthXXX = 667 ;
            newHeightXXX = 375;
            
            break;
        case 1920:
            //printf("iPhone 6+/6S+/7+/8+");
            [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"UYTREW iPhone 6+/6S+/7+/8+ : %@", @""]];
            
            newWidthXXX = 736 ;
            newHeightXXX = 414;
            
            break;
        case 2208:
            //printf("iPhone 6+/6S+/7+/8+");
            [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"SSSSS iPhone 6+/6S+/7+/8+ : %@", @""]];
            
            newWidthXXX = 736 ;
            newHeightXXX = 414;
            
            break;
        case 2436:
            //printf("iPhone X");
            [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"IIKKGGSS iPhone X: %@", @""]];
            
            newWidthXXX = 812 ;
            newHeightXXX = 375;
            
            break;
        default:
            //printf("unknown");
            [BT_debugger showIt:self theMessage:[NSString stringWithFormat:@"unknown : %@", @""]];
            
            newWidthXXX = 667 ;
            newHeightXXX = 375;
            
    }
}


@end







