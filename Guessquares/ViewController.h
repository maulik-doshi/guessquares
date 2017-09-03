//
//  ViewController.h
//  Guessquares
//
//  Created by Maulik on 7/30/13.
//  Copyright (c) 2013 Maulik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
//#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>

NSInteger tt, br=179, bg=179, bb=179, rr=0, rg=0, rb=0, sr=255, sg=255, sb=255, rs, ts, timesr=0, timest=0, secs, tgr, ttr, tgt, tst;
float lv=0;
NSInteger lvflag=0;
NSInteger l1f, l2f, l3f, l4f, l5f, l6f, l7f, l8f, l9f, l10f, l11f, l12f, l13f, l14f, l15f, l16f, l17f, l18f, l19f, l20f, l21f, l22f, l23f, l24f, l25f, l26f, l27f, l28f, l29f, l30f, l31f, l32f, l33f, l34f, l35f, brat=0, rrat=0, srat=0;
bool soundt = TRUE;

@interface ViewController : UIViewController <ADBannerViewDelegate, AVAudioPlayerDelegate, UITextFieldDelegate>
{
    bool running;
    NSTimeInterval startTime;
    ADBannerView *adView;
    NSInteger sco, perc, a1, a2, a3, a4, a5, specs, level, lockr, lockg, lockb;
    NSString *path1, *path2, *letter1, *letter2, *letter3, *letter4, *letter5;
    AVAudioPlayer *wrong, *correct;
}

@property (nonatomic, retain) IBOutlet ADBannerView *adView;

@property (weak, nonatomic) IBOutlet UILabel *score;
@property (weak, nonatomic) IBOutlet UILabel *percentage;
@property (weak, nonatomic) IBOutlet UIButton *submit;

@property (weak, nonatomic) IBOutlet UIButton *bgrayd;
@property (weak, nonatomic) IBOutlet UIButton *rblackd;
@property (weak, nonatomic) IBOutlet UIButton *swhited;

@property (weak, nonatomic) IBOutlet UIButton *bred;
@property (weak, nonatomic) IBOutlet UIButton *borange;
@property (weak, nonatomic) IBOutlet UIButton *byellow;
@property (weak, nonatomic) IBOutlet UIButton *bgreen;
@property (weak, nonatomic) IBOutlet UIButton *bblue;
@property (weak, nonatomic) IBOutlet UIButton *bpurple;

@property (weak, nonatomic) IBOutlet UIButton *rred;
@property (weak, nonatomic) IBOutlet UIButton *rorange;
@property (weak, nonatomic) IBOutlet UIButton *ryellow;
@property (weak, nonatomic) IBOutlet UIButton *rgreen;
@property (weak, nonatomic) IBOutlet UIButton *rblue;
@property (weak, nonatomic) IBOutlet UIButton *rpurple;

@property (weak, nonatomic) IBOutlet UIButton *sred;
@property (weak, nonatomic) IBOutlet UIButton *sorange;
@property (weak, nonatomic) IBOutlet UIButton *syellow;
@property (weak, nonatomic) IBOutlet UIButton *sgreen;
@property (weak, nonatomic) IBOutlet UIButton *sblue;
@property (weak, nonatomic) IBOutlet UIButton *spurple;

@property (strong, nonatomic) NSMutableArray *s;

@property (weak, nonatomic) IBOutlet UIView *t1;
@property (weak, nonatomic) IBOutlet UIView *t2;
@property (weak, nonatomic) IBOutlet UIView *t3;
@property (weak, nonatomic) IBOutlet UIView *t4;
@property (weak, nonatomic) IBOutlet UIView *t5;
@property (weak, nonatomic) IBOutlet UIView *t6;
@property (weak, nonatomic) IBOutlet UIView *t7;
@property (weak, nonatomic) IBOutlet UIView *t8;
@property (weak, nonatomic) IBOutlet UIView *t9;
@property (weak, nonatomic) IBOutlet UIView *t10;
@property (weak, nonatomic) IBOutlet UIView *t11;
@property (weak, nonatomic) IBOutlet UIView *t12;

@property (weak, nonatomic) IBOutlet UILabel *l1;
@property (weak, nonatomic) IBOutlet UILabel *l2;
@property (weak, nonatomic) IBOutlet UILabel *l3;
@property (weak, nonatomic) IBOutlet UILabel *l4;
@property (weak, nonatomic) IBOutlet UILabel *l5;
@property (weak, nonatomic) IBOutlet UILabel *l6;
@property (weak, nonatomic) IBOutlet UILabel *l7;
@property (weak, nonatomic) IBOutlet UILabel *l8;
@property (weak, nonatomic) IBOutlet UILabel *l9;
@property (weak, nonatomic) IBOutlet UILabel *l10;
@property (weak, nonatomic) IBOutlet UILabel *l11;
@property (weak, nonatomic) IBOutlet UILabel *l12;

@property (weak, nonatomic) IBOutlet UILabel *rhs;
@property (weak, nonatomic) IBOutlet UILabel *ths;
@property (weak, nonatomic) IBOutlet UILabel *rtg;
@property (weak, nonatomic) IBOutlet UILabel *rtt;
@property (weak, nonatomic) IBOutlet UILabel *ttg;
@property (weak, nonatomic) IBOutlet UILabel *tts;

@property (weak, nonatomic) IBOutlet UIButton *lv1;
@property (weak, nonatomic) IBOutlet UIButton *lv2;
@property (weak, nonatomic) IBOutlet UIButton *lv3;
@property (weak, nonatomic) IBOutlet UIButton *lv4;
@property (weak, nonatomic) IBOutlet UIButton *lv5;
@property (weak, nonatomic) IBOutlet UIButton *lv6;
@property (weak, nonatomic) IBOutlet UIButton *lv7;
@property (weak, nonatomic) IBOutlet UIButton *lv8;
@property (weak, nonatomic) IBOutlet UIButton *lv9;
@property (weak, nonatomic) IBOutlet UIButton *lv10;
@property (weak, nonatomic) IBOutlet UIButton *lv11;
@property (weak, nonatomic) IBOutlet UIButton *lv12;
@property (weak, nonatomic) IBOutlet UIButton *lv13;
@property (weak, nonatomic) IBOutlet UIButton *lv14;
@property (weak, nonatomic) IBOutlet UIButton *lv15;
@property (weak, nonatomic) IBOutlet UIButton *lv16;
@property (weak, nonatomic) IBOutlet UIButton *lv17;
@property (weak, nonatomic) IBOutlet UIButton *lv18;
@property (weak, nonatomic) IBOutlet UIButton *lv19;
@property (weak, nonatomic) IBOutlet UIButton *lv20;
@property (weak, nonatomic) IBOutlet UIButton *lv21;
@property (weak, nonatomic) IBOutlet UIButton *lv22;
@property (weak, nonatomic) IBOutlet UIButton *lv23;
@property (weak, nonatomic) IBOutlet UIButton *lv24;
@property (weak, nonatomic) IBOutlet UIButton *lv25;
@property (weak, nonatomic) IBOutlet UIButton *lv26;
@property (weak, nonatomic) IBOutlet UIButton *lv27;
@property (weak, nonatomic) IBOutlet UIButton *lv28;
@property (weak, nonatomic) IBOutlet UIButton *lv29;
@property (weak, nonatomic) IBOutlet UIButton *lv30;
@property (weak, nonatomic) IBOutlet UIButton *lv31;
@property (weak, nonatomic) IBOutlet UIButton *lv32;
@property (weak, nonatomic) IBOutlet UIButton *lv33;
@property (weak, nonatomic) IBOutlet UIButton *lv34;
@property (weak, nonatomic) IBOutlet UIButton *lv35;

@property (weak, nonatomic) IBOutlet UILabel *notf;
@property (weak, nonatomic) IBOutlet UILabel *yestf;
@property (weak, nonatomic) IBOutlet UILabel *scramlet;
@property (weak, nonatomic) IBOutlet UILabel *categ;
@property (weak, nonatomic) IBOutlet UILabel *hints;
@property (weak, nonatomic) IBOutlet UILabel *lnum;
@property (weak, nonatomic) IBOutlet UILabel *descw;

@property (weak, nonatomic) IBOutlet UITextField *input;

@property (weak, nonatomic) IBOutlet UIButton *sound;

- (IBAction)hitSub:(UIButton *)sender;
- (IBAction)relax:(id)sender;
- (IBAction)speed:(id)sender;
- (IBAction)back:(id)sender;
- (IBAction)setgo:(id)sender;
- (IBAction)setBack:(id)sender;
- (IBAction)backModes:(id)sender;
- (IBAction)playBtn:(id)sender;
- (IBAction)hs:(id)sender;
- (IBAction)clrhs:(id)sender;
- (IBAction)levelMode:(id)sender;
- (IBAction)backLev:(id)sender;
- (IBAction)backgroundTouched:(id)sender;
- (IBAction)backCong:(id)sender;

- (IBAction)bgrayd:(id)sender;
- (IBAction)bred:(id)sender;
- (IBAction)borange:(id)sender;
- (IBAction)byellow:(id)sender;
- (IBAction)bgreen:(id)sender;
- (IBAction)bblue:(id)sender;
- (IBAction)bpurple:(id)sender;

- (IBAction)rblackd:(id)sender;
- (IBAction)rred:(id)sender;
- (IBAction)rorange:(id)sender;
- (IBAction)ryellow:(id)sender;
- (IBAction)rgreen:(id)sender;
- (IBAction)rblue:(id)sender;
- (IBAction)rpurple:(id)sender;

- (IBAction)swhited:(id)sender;
- (IBAction)sred:(id)sender;
- (IBAction)sorange:(id)sender;
- (IBAction)syellow:(id)sender;
- (IBAction)sgreen:(id)sender;
- (IBAction)sblue:(id)sender;
- (IBAction)spurple:(id)sender;

- (IBAction)level1:(id)sender;
- (IBAction)level2:(id)sender;
- (IBAction)level3:(id)sender;
- (IBAction)level4:(id)sender;
- (IBAction)level5:(id)sender;
- (IBAction)level6:(id)sender;
- (IBAction)level7:(id)sender;
- (IBAction)level8:(id)sender;
- (IBAction)level9:(id)sender;
- (IBAction)level10:(id)sender;
- (IBAction)level11:(id)sender;
- (IBAction)level12:(id)sender;
- (IBAction)level13:(id)sender;
- (IBAction)level14:(id)sender;
- (IBAction)level15:(id)sender;
- (IBAction)level16:(id)sender;
- (IBAction)level17:(id)sender;
- (IBAction)level18:(id)sender;
- (IBAction)level19:(id)sender;
- (IBAction)level20:(id)sender;
- (IBAction)level21:(id)sender;
- (IBAction)level22:(id)sender;
- (IBAction)level23:(id)sender;
- (IBAction)level24:(id)sender;
- (IBAction)level25:(id)sender;
- (IBAction)level26:(id)sender;
- (IBAction)level27:(id)sender;
- (IBAction)level28:(id)sender;
- (IBAction)level29:(id)sender;
- (IBAction)level30:(id)sender;
- (IBAction)level31:(id)sender;
- (IBAction)level32:(id)sender;
- (IBAction)level33:(id)sender;
- (IBAction)level34:(id)sender;
- (IBAction)level35:(id)sender;

- (IBAction)Hint1:(id)sender;
- (IBAction)Hint2:(id)sender;
- (IBAction)Solve:(id)sender;
- (IBAction)checktf:(id)sender;

- (IBAction)settHome:(id)sender;
- (IBAction)soundtog:(id)sender;

- (void)updateLabels;
- (int)countTrue;
- (void)genKeys;
- (void)updateHS;

@end

