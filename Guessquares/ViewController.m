//
//  ViewController.m
//  Guessquares
//
//  Created by Maulik on 7/30/13.
//  Copyright (c) 2013 Maulik. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize adView, rhs, ths, rtg, rtt, ttg, tts;
@synthesize t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12;
@synthesize l1, l2, l3, l4, l5, l6, l7, l8, l9, l10, l11, l12;
@synthesize score, percentage, submit;
@synthesize s;
@synthesize bgrayd, rblackd, swhited;
@synthesize bred, borange, byellow, bgreen, bblue, bpurple;
@synthesize rred, rorange, ryellow, rgreen, rblue, rpurple;
@synthesize sred, sorange, syellow, sgreen, sblue, spurple;
@synthesize lv1, lv2, lv3, lv4, lv5, lv6, lv7, lv8, lv9, lv10, lv11, lv12, lv13, lv14, lv15, lv16, lv17, lv18, lv19, lv20, lv21, lv22, lv23, lv24, lv25, lv26, lv27, lv28, lv29, lv30, lv31, lv32, lv33, lv34, lv35;
@synthesize notf, yestf, hints, lnum, categ, scramlet, descw, input, sound;

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    [adView setHidden:NO];
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    [adView setHidden:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    adView.delegate = self;
    [adView setHidden:YES];
    //[self.view addSubview:adView];
	
    // Do any additional setup after loading the view, typically from a nib.
    
    if(soundt == TRUE)
        [sound setImage:[UIImage imageNamed:@"soundon.png"] forState:UIControlStateNormal];
    else
        [sound setImage:[UIImage imageNamed:@"soundoff.png"] forState:UIControlStateNormal];
    
    rs = [[NSUserDefaults standardUserDefaults] integerForKey:@"rs"];
    tgr = [[NSUserDefaults standardUserDefaults] integerForKey:@"tgr"];
    ttr = [[NSUserDefaults standardUserDefaults] integerForKey:@"ttr"];
    
    ts = [[NSUserDefaults standardUserDefaults] integerForKey:@"ts"];
    tgt = [[NSUserDefaults standardUserDefaults] integerForKey:@"tgt"];
    tst = [[NSUserDefaults standardUserDefaults] integerForKey:@"tst"];
    
    brat = [[NSUserDefaults standardUserDefaults] integerForKey:@"brat"];
    rrat = [[NSUserDefaults standardUserDefaults] integerForKey:@"rrat"];
    srat = [[NSUserDefaults standardUserDefaults] integerForKey:@"srat"];
    
    if(brat != 0)
    {
        br = [[NSUserDefaults standardUserDefaults] integerForKey:@"backr"];
        bg = [[NSUserDefaults standardUserDefaults] integerForKey:@"backg"];
        bb = [[NSUserDefaults standardUserDefaults] integerForKey:@"backb"];
    }
    
    if(rrat != 0)
    {
        rr = [[NSUserDefaults standardUserDefaults] integerForKey:@"regr"];
        rg = [[NSUserDefaults standardUserDefaults] integerForKey:@"regg"];
        rb = [[NSUserDefaults standardUserDefaults] integerForKey:@"regb"];
    }
    
    if(srat != 0)
    {
        sr = [[NSUserDefaults standardUserDefaults] integerForKey:@"selr"];
        sg = [[NSUserDefaults standardUserDefaults] integerForKey:@"selg"];
        sb = [[NSUserDefaults standardUserDefaults] integerForKey:@"selb"];
    }
    
    //lvflag = 0;
    //[[NSUserDefaults standardUserDefaults]setInteger:lvflag forKey:@"levely"];
    lvflag = [[NSUserDefaults standardUserDefaults] integerForKey:@"levelyz"];
    
    l1f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l1fz"];
    l2f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l2fz"];
    l3f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l3fz"];
    l4f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l4fz"];
    l5f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l5fz"];
    l6f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l6fz"];
    l7f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l7fz"];
    l8f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l8fz"];
    l9f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l9fz"];
    l10f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l10fz"];
    l11f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l11fz"];
    l12f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l12fz"];
    l13f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l13fz"];
    l14f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l14fz"];
    l15f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l15fz"];
    l16f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l16fz"];
    l17f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l17fz"];
    l18f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l18fz"];
    l19f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l19fz"];
    l20f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l20fz"];
    l21f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l21fz"];
    l22f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l22fz"];
    l23f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l23fz"];
    l24f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l24fz"];
    l25f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l25fz"];
    l26f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l26fz"];
    l27f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l27fz"];
    l28f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l28fz"];
    l29f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l29fz"];
    l30f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l30fz"];
    l31f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l31fz"];
    l32f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l32fz"];
    l33f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l33fz"];
    l34f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l34fz"];
    l35f = [[NSUserDefaults standardUserDefaults] integerForKey:@"l35fz"];
    
    //NSLog([NSString stringWithFormat:@"%f", lv]);
    
    path1 = [[NSBundle mainBundle] pathForResource:@"wrong" ofType:@"mp3"];
    path2 = [[NSBundle mainBundle] pathForResource:@"correct" ofType:@"mp3"];
    wrong = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path1] error:NULL];
    correct = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path2] error:NULL];
    
    [self updateHS];
    [self first];
}

- (void)first
{
    sco = 0;
    perc = 0;
    
    lockr = 118;
    lockg = 118;
    lockb = 118;
    
    secs = 0;
    running = TRUE;
    
    notf.hidden = TRUE;
    yestf.hidden = TRUE;
    
    l1.hidden = TRUE;
    l2.hidden = TRUE;
    l3.hidden = TRUE;
    l4.hidden = TRUE;
    l5.hidden = TRUE;
    l6.hidden = TRUE;
    l7.hidden = TRUE;
    l8.hidden = TRUE;
    l9.hidden = TRUE;
    l10.hidden = TRUE;
    l11.hidden = TRUE;
    l12.hidden = TRUE;

    lv2.enabled = FALSE;
    lv3.enabled = FALSE;
    lv4.enabled = FALSE;
    lv5.enabled = FALSE;
    lv6.enabled = FALSE;
    lv7.enabled = FALSE;
    lv8.enabled = FALSE;
    lv9.enabled = FALSE;
    lv10.enabled = FALSE;
    lv11.enabled = FALSE;
    lv12.enabled = FALSE;
    lv13.enabled = FALSE;
    lv14.enabled = FALSE;
    lv15.enabled = FALSE;
    lv16.enabled = FALSE;
    lv17.enabled = FALSE;
    lv18.enabled = FALSE;
    lv19.enabled = FALSE;
    lv20.enabled = FALSE;
    lv21.enabled = FALSE;
    lv22.enabled = FALSE;
    lv23.enabled = FALSE;
    lv24.enabled = FALSE;
    lv25.enabled = FALSE;
    lv26.enabled = FALSE;
    lv27.enabled = FALSE;
    lv28.enabled = FALSE;
    lv29.enabled = FALSE;
    lv30.enabled = FALSE;
    lv31.enabled = FALSE;
    lv32.enabled = FALSE;
    lv33.enabled = FALSE;
    lv34.enabled = FALSE;
    lv35.enabled = FALSE;
    
    if(lv==1.1f)
    {
        scramlet.text = @"YPAHP";
        categ.text = @"Emotion";
        descw.text = @"1 Word, 5 Letters";
        lnum.text = @"Level: 1";
    }
    else if(lv==2.1f)
    {
        scramlet.text = @"SKXYZ";
        categ.text = @"Outside";
        descw.text = @"1 Word, 3 Letters";
        lnum.text = @"Level: 2";
    }
    else if(lv==3.2f)
    {
        scramlet.text = @"TAEBFRHSES";
        categ.text = @"Restaurant Slogan";
        descw.text = @"2 Words, 8 Letters";
        lnum.text = @"Level: 3";
    }
    else if(lv==4.2f)
    {
        scramlet.text = @"AKIHQUCPIR";
        categ.text = @"Pokemon";
        descw.text = @"1 Word, 7 Letters";
        lnum.text = @"Level: 4";
    }
    else if(lv==5.2f)
    {
        scramlet.text = @"RNMOCSMMIO";
        categ.text = @"Religion";
        descw.text = @"1 Word, 9 Letters";
        lnum.text = @"Level: 5";
    }
    else if(lv==6.2f)
    {
        scramlet.text = @"QLRYECPECK";
        categ.text = @"Vegetable";
        descw.text = @"1 Word, 6 Letters";
        lnum.text = @"Level: 6";
    }
    else if(lv==7.2f)
    {
        scramlet.text = @"OYTCLOYTRS";
        categ.text = @"Animated Movie";
        descw.text = @"2 Words, 8 Letters";
        lnum.text = @"Level: 7";
    }
    else if(lv==8.4f)
    {
        scramlet.text = @"BRUINTEMAXKSEAPLOTIJ";
        categ.text = @"Singer";
        descw.text = @"2 Words, 16 Letters";
        lnum.text = @"Level: 8";
    }
    else if(lv==9.2f)
    {
        scramlet.text = @"XLONFGEMAM";
        categ.text = @"Actress";
        descw.text = @"2 Words, 8 Letters";
        lnum.text = @"Level: 9";
    }
    else if(lv==10.2f)
    {
        scramlet.text = @"THIMFLUIDO";
        categ.text = @"Metal Element";
        descw.text = @"1 Word, 7 Letters";
        lnum.text = @"Level: 10";
    }
    else if(lv==11.2f)
    {
        scramlet.text = @"GBRKEUINRG";
        categ.text = @"Restaurant";
        descw.text = @"2 Words, 10 Letters";
        lnum.text = @"Level: 11";
    }
    else if(lv==12.3f)
    {
        scramlet.text = @"DERNMWLTAPZFSIK";
        categ.text = @"Country";
        descw.text = @"1 Word, 11 Letters";
        lnum.text = @"Level: 12";
    }
    else if(lv==13.2f)
    {
        scramlet.text = @"LNKAMEANDE";
        categ.text = @"Inventor";
        descw.text = @"2 Words, 9 Letters";
        lnum.text = @"Level: 13";
    }
    else if(lv==14.2f)
    {
        scramlet.text = @"LEGOTXOMGO";
        categ.text = @"Company";
        descw.text = @"1 Word, 6 Letters";
        lnum.text = @"Level: 14";
    }
    else if(lv==15.2f)
    {
        scramlet.text = @"CUMINGIRLY";
        categ.text = @"Olympic Sport";
        descw.text = @"1 Word, 7 Letters";
        lnum.text = @"Level: 15";
    }
    else if(lv==16.2f)
    {
        scramlet.text = @"AZULEAWNKA";
        categ.text = @"Holiday";
        descw.text = @"1 Word, 7 Letters";
        lnum.text = @"Level: 16";
    }
    else if(lv==17.3f)
    {
        scramlet.text = @"NEGTLNOCOYHONDA";
        categ.text = @"Field of Study";
        descw.text = @"1 Word, 14 Letters";
        lnum.text = @"Level: 17";
    }
    else if(lv==18.2f)
    {
        scramlet.text = @"NIINOFLITI";
        categ.text = @"Car Company";
        descw.text = @"1 Word, 8 Letters";
        lnum.text = @"Level: 18";
    }
    else if(lv==19.3f)
    {
        scramlet.text = @"YOEATRRPTHRELAX";
        categ.text = @"Book Series";
        descw.text = @"2 Words, 11 Letters";
        lnum.text = @"Level: 19";
    }
    else if(lv==20.2f)
    {
        scramlet.text = @"ERCAJPETHO";
        categ.text = @"Profession";
        descw.text = @"1 Word, 7 Letters";
        lnum.text = @"Level: 20";
    }
    else if(lv==21.3f)
    {
        scramlet.text = @"HELERPEMTYSELIB";
        categ.text = @"Beverage";
        descw.text = @"2 Words, 13 Letters";
        lnum.text = @"Level: 21";
    }
    else if(lv==22.2f)
    {
        scramlet.text = @"ESNELJYREW";
        categ.text = @"U.S. State";
        descw.text = @"2 Words, 9 Letters";
        lnum.text = @"Level: 22";
    }
    else if(lv==23.3f)
    {
        scramlet.text = @"SKRLEARENTPOUIZ";
        categ.text = @"Body of Water";
        descw.text = @"2 Words, 12 Letters";
        lnum.text = @"Level: 23";
    }
    else if(lv==24.3f)
    {
        scramlet.text = @"IHNAIRXBOCRNDAC";
        categ.text = @"U.S. President";
        descw.text = @"2 Words, 12 Letters";
        lnum.text = @"Level: 24";
    }
    else if(lv==25.3f)
    {
        scramlet.text = @"DEALOELKINCNNOP";
        categ.text = @"TV Network";
        descw.text = @"1 Word, 11 Letters";
        lnum.text = @"Level: 25";
    }
    else if(lv==26.2f)
    {
        scramlet.text = @"BRLRYECABK";
        categ.text = @"Fruit";
        descw.text = @"1 Word, 10 Letters";
        lnum.text = @"Level: 26";
    }
    else if(lv==27.2f)
    {
        scramlet.text = @"SANDLGORFY";
        categ.text = @"Flying Insect";
        descw.text = @"1 Word, 9 Letters";
        lnum.text = @"Level: 27";
    }
    else if(lv==28.1f)
    {
        scramlet.text = @"UNIXL";
        categ.text = @"Operating System";
        descw.text = @"1 Word, 5 Letters";
        lnum.text = @"Level: 28";
    }
    else if(lv==29.3f)
    {
        scramlet.text = @"NAMIKNVSDRTFUEL";
        categ.text = @"Basketball Player";
        descw.text = @"2 Words, 11 Letters";
        lnum.text = @"Level: 29";
    }
    else if(lv==30.2f)
    {
        scramlet.text = @"THOCESLNKY";
        categ.text = @"Room";
        descw.text = @"1 Word, 7 Letters";
        lnum.text = @"Level: 30";
    }
    else if(lv==31.1f)
    {
        scramlet.text = @"GOLDE";
        categ.text = @"Toy";
        descw.text = @"1 Word, 4 Letters";
        lnum.text = @"Level: 31";
    }
    else if(lv==32.2f)
    {
        scramlet.text = @"AIRMAILANO";
        categ.text = @"Disease";
        descw.text = @"1 Word, 7 Letters";
        lnum.text = @"Level: 32";
    }
    else if(lv==33.2f)
    {
        scramlet.text = @"EUMSTKIOHL";
        categ.text = @"Gas Element";
        descw.text = @"1 Word, 6 Letters";
        lnum.text = @"Level: 33";
    }
    else if(lv==34.3f)
    {
        scramlet.text = @"TENNEOASINIDUIT";
        categ.text = @"International Organization";
        descw.text = @"2 Words, 13 Letters";
        lnum.text = @"Level: 34";
    }
    else if(lv==35.3f)
    {
        scramlet.text = @"SREELAGUASMUSIQ";
        categ.text = @"App Name";
        descw.text = @"1 Word, 11 Letters";
        lnum.text = @"Level: 35";
    }
    
    lv2.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv3.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv4.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv5.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv6.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv7.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv8.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv9.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv10.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv11.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv12.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv13.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv14.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv15.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv16.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv17.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv18.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv19.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv20.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv21.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv22.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv23.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv24.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv25.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv26.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv27.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv28.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv29.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv30.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv31.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv32.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv33.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv34.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];
    lv35.backgroundColor = [UIColor colorWithRed:lockr/255.0 green:lockg/255.0 blue:lockb/255.0 alpha:1];

    if(lvflag >= 2)
    {
        lv2.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv2.enabled = TRUE;
    }
    if(lvflag >=3)
    {
        lv3.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv3.enabled = TRUE;
    }
    if(lvflag >=4)
    {
        lv4.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv4.enabled = TRUE;
    }
    if(lvflag >=5)
    {
        lv5.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv5.enabled = TRUE;
    }
    if(lvflag >=6)
    {
        lv6.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv6.enabled = TRUE;
    }
    if(lvflag >=7)
    {
        lv7.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv7.enabled = TRUE;
    }
    if(lvflag >=8)
    {
        lv8.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv8.enabled = TRUE;
    }
    if(lvflag >=9)
    {
        lv9.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv9.enabled = TRUE;
    }
    if(lvflag >=10)
    {
        lv10.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv10.enabled = TRUE;
    }
    if(lvflag >=11)
    {
        lv11.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv11.enabled = TRUE;
    }
    if(lvflag >=12)
    {
        lv12.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv12.enabled = TRUE;
    }
    if(lvflag >=13)
    {
        lv13.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv13.enabled = TRUE;
    }
    if(lvflag >=14)
    {
        lv14.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv14.enabled = TRUE;
    }
    if(lvflag >=15)
    {
        lv15.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv15.enabled = TRUE;
    }
    if(lvflag >=16)
    {
        lv16.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv16.enabled = TRUE;
    }
    if(lvflag >=17)
    {
        lv17.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv17.enabled = TRUE;
    }
    if(lvflag >=18)
    {
        lv18.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv18.enabled = TRUE;
    }
    if(lvflag >=19)
    {
        lv19.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv19.enabled = TRUE;
    }
    if(lvflag >=20)
    {
        lv20.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv20.enabled = TRUE;
    }
    if(lvflag >=21)
    {
        lv21.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv21.enabled = TRUE;
    }
    if(lvflag >=22)
    {
        lv22.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv22.enabled = TRUE;
    }
    if(lvflag >=23)
    {
        lv23.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv23.enabled = TRUE;
    }
    if(lvflag >=24)
    {
        lv24.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv24.enabled = TRUE;
    }
    if(lvflag >=25)
    {
        lv25.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv25.enabled = TRUE;
    }
    if(lvflag >=26)
    {
        lv26.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv26.enabled = TRUE;
    }
    if(lvflag >=27)
    {
        lv27.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv27.enabled = TRUE;
    }
    if(lvflag >=28)
    {
        lv28.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv28.enabled = TRUE;
    }
    if(lvflag >=29)
    {
        lv29.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv29.enabled = TRUE;
    }
    if(lvflag >=30)
    {
        lv30.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv30.enabled = TRUE;
    }
    if(lvflag >=31)
    {
        lv31.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv31.enabled = TRUE;
    }
    if(lvflag >=32)
    {
        lv32.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv32.enabled = TRUE;
    }
    if(lvflag >=33)
    {
        lv33.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv33.enabled = TRUE;
    }
    if(lvflag >=34)
    {
        lv34.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv34.enabled = TRUE;
    }
    if(lvflag >=35)
    {
        lv35.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        lv35.enabled = TRUE;
    }
    
    t1.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
    t2.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
    t3.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
    t4.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
    t5.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
    t6.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
    t7.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
    t8.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
    t9.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
    t10.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
    t11.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
    t12.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
    
    self.view.backgroundColor = [UIColor colorWithRed:br/255.0 green:bg/255.0 blue:bb/255.0 alpha:1];
    
    [submit setTitle:@"Submit" forState:UIControlStateNormal];
    
    //NSLog([NSString stringWithFormat:@"%d",tt]);
    
    score.text = [NSString stringWithFormat:@"%d",sco];
    
    percentage.text = [NSString stringWithFormat:@"%d/5",perc];
    
    s = [[NSMutableArray alloc]initWithObjects:@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",nil];
    
    [self genKeys];
}

- (IBAction)backgroundTouched:(id)sender
{
    [input resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)relax:(id)sender
{
    tt = 0;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)speed:(id)sender
{
    tt = 1;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)back:(id)sender
{
    [adView removeFromSuperview];
    adView = nil;
    if(tt == 0 || tt == 1)
    {
        UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
        UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"playModes"];
        vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [self presentViewController:vc animated:YES completion:nil];
    }
    else
    {
        UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
        UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"levelview"];
        vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [self presentViewController:vc animated:YES completion:nil];
    }
}

- (IBAction)setBack:(id)sender
{
    [adView removeFromSuperview];
    adView = nil;
    if(tt==0 || tt==1 || tt==2)
    {
        UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
        UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
        vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [self presentViewController:vc animated:YES completion:nil];
        //[self dismissModalViewControllerAnimated:YES];
    }
    else
    {
        UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
        UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"home"];
        vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [self presentViewController:vc animated:YES completion:nil];
        //[self dismissModalViewControllerAnimated:YES];


    }
}

- (IBAction)backModes:(id)sender {
    [adView removeFromSuperview];
    adView = nil;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"home"];
    vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)playBtn:(id)sender {
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"playModes"];
    vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)updateHS
{
    if(rs == 1)
        rhs.text = [NSString stringWithFormat:@"%d Turn",rs];
    else
        rhs.text = [NSString stringWithFormat:@"%d Turns",rs];
    if(tgr == 1)
        rtg.text = [NSString stringWithFormat:@"%d Game",tgr];
    else
        rtg.text = [NSString stringWithFormat:@"%d Games",tgr];
    if(ttr == 1)
        rtt.text = [NSString stringWithFormat:@"%d Turn",ttr];
    else
        rtt.text = [NSString stringWithFormat:@"%d Turns",ttr];
    
    if(ts == 1)
        ths.text = [NSString stringWithFormat:@"%d Second",ts];
    else
        ths.text = [NSString stringWithFormat:@"%d Seconds",ts];
    if(tgt == 1)
        ttg.text = [NSString stringWithFormat:@"%d Game",tgt];
    else
        ttg.text = [NSString stringWithFormat:@"%d Games",tgt];
    if(tst == 1)
        tts.text = [NSString stringWithFormat:@"%d Second",tst];
    else
        tts.text = [NSString stringWithFormat:@"%d Seconds",tst];
    
    //NSLog([NSString stringWithFormat:@"%d %d %d %d %d %d", rs, tgr, ttr, ts, tgt, tst]);

}

- (IBAction)settHome:(id)sender {
    tt = 3;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"settings"];
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)soundtog:(id)sender {
    if(soundt == TRUE)
    {
        [sound setImage:[UIImage imageNamed:@"soundoff.png"] forState:UIControlStateNormal];
        soundt = FALSE;
    }
    else if(soundt == FALSE)
    {
        [sound setImage:[UIImage imageNamed:@"soundon.png"] forState:UIControlStateNormal];
        soundt = TRUE;
    }
}

- (IBAction)hs:(id)sender {
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"hscores"];
    vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)clrhs:(id)sender {
    rs = 0;
    tgr = 0;
    ttr = 0;
    
    ts = 0;
    tgt = 0;
    tst = 0;
    
    timest = 0;
    timesr = 0;
    
    [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"rs"];
    [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"tgr"];
    [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"ttr"];
    
    [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"ts"];
    [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"tgt"];
    [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"tst"];
    
    rhs.text = [NSString stringWithFormat:@"%d Turns",rs];
    rtg.text = [NSString stringWithFormat:@"%d Games",tgr];
    rtt.text = [NSString stringWithFormat:@"%d Turns",ttr];
    
    ths.text = [NSString stringWithFormat:@"%d Seconds",ts];
    ttg.text = [NSString stringWithFormat:@"%d Games",tgt];
    tts.text = [NSString stringWithFormat:@"%d Seconds",tst];
}

- (IBAction)levelMode:(id)sender {
    tt = 2;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"levelview"];
    vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)backLev:(id)sender {
    [adView removeFromSuperview];
    adView = nil;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"playModes"];
    vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)setgo:(id)sender
{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"settings"];
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)bgrayd:(id)sender {
    br = 179;
    bg = 179;
    bb = 179;
    [[NSUserDefaults standardUserDefaults]setInteger:br forKey:@"backr"];
    [[NSUserDefaults standardUserDefaults]setInteger:bg forKey:@"backg"];
    [[NSUserDefaults standardUserDefaults]setInteger:bb forKey:@"backb"];
    brat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:brat forKey:@"brat"];
}

- (IBAction)bred:(id)sender {
    br = 255;
    bg = 0;
    bb = 0;
    [[NSUserDefaults standardUserDefaults]setInteger:br forKey:@"backr"];
    [[NSUserDefaults standardUserDefaults]setInteger:bg forKey:@"backg"];
    [[NSUserDefaults standardUserDefaults]setInteger:bb forKey:@"backb"];
    brat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:brat forKey:@"brat"];
}

- (IBAction)borange:(id)sender {
    br = 255;
    bg = 128;
    bb = 0;
    [[NSUserDefaults standardUserDefaults]setInteger:br forKey:@"backr"];
    [[NSUserDefaults standardUserDefaults]setInteger:bg forKey:@"backg"];
    [[NSUserDefaults standardUserDefaults]setInteger:bb forKey:@"backb"];
    brat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:brat forKey:@"brat"];
}

- (IBAction)byellow:(id)sender {
    br = 255;
    bg = 255;
    bb = 0;
    [[NSUserDefaults standardUserDefaults]setInteger:br forKey:@"backr"];
    [[NSUserDefaults standardUserDefaults]setInteger:bg forKey:@"backg"];
    [[NSUserDefaults standardUserDefaults]setInteger:bb forKey:@"backb"];
    brat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:brat forKey:@"brat"];
}

- (IBAction)bgreen:(id)sender {
    br = 0;
    bg = 255;
    bb = 0;
    [[NSUserDefaults standardUserDefaults]setInteger:br forKey:@"backr"];
    [[NSUserDefaults standardUserDefaults]setInteger:bg forKey:@"backg"];
    [[NSUserDefaults standardUserDefaults]setInteger:bb forKey:@"backb"];
    brat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:brat forKey:@"brat"];
}

- (IBAction)bblue:(id)sender {
    br = 0;
    bg = 0;
    bb = 255;
    [[NSUserDefaults standardUserDefaults]setInteger:br forKey:@"backr"];
    [[NSUserDefaults standardUserDefaults]setInteger:bg forKey:@"backg"];
    [[NSUserDefaults standardUserDefaults]setInteger:bb forKey:@"backb"];
    brat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:brat forKey:@"brat"];
}

- (IBAction)bpurple:(id)sender {
    br = 128;
    bg = 0;
    bb = 128;
    [[NSUserDefaults standardUserDefaults]setInteger:br forKey:@"backr"];
    [[NSUserDefaults standardUserDefaults]setInteger:bg forKey:@"backg"];
    [[NSUserDefaults standardUserDefaults]setInteger:bb forKey:@"backb"];
    brat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:brat forKey:@"brat"];
}

- (IBAction)rblackd:(id)sender {
    rr = 0;
    rg = 0;
    rb = 0;
    [[NSUserDefaults standardUserDefaults]setInteger:rr forKey:@"regr"];
    [[NSUserDefaults standardUserDefaults]setInteger:rg forKey:@"regg"];
    [[NSUserDefaults standardUserDefaults]setInteger:rb forKey:@"regb"];
    rrat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:rrat forKey:@"rrat"];
}

- (IBAction)rred:(id)sender {
    rr = 255;
    rg = 0;
    rb = 0;
    [[NSUserDefaults standardUserDefaults]setInteger:rr forKey:@"regr"];
    [[NSUserDefaults standardUserDefaults]setInteger:rg forKey:@"regg"];
    [[NSUserDefaults standardUserDefaults]setInteger:rb forKey:@"regb"];
    rrat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:rrat forKey:@"rrat"];
}

- (IBAction)rorange:(id)sender {
    rr = 255;
    rg = 128;
    rb = 0;
    [[NSUserDefaults standardUserDefaults]setInteger:rr forKey:@"regr"];
    [[NSUserDefaults standardUserDefaults]setInteger:rg forKey:@"regg"];
    [[NSUserDefaults standardUserDefaults]setInteger:rb forKey:@"regb"];
    rrat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:rrat forKey:@"rrat"];
}

- (IBAction)ryellow:(id)sender {
    rr = 255;
    rg = 255;
    rb = 0;
    [[NSUserDefaults standardUserDefaults]setInteger:rr forKey:@"regr"];
    [[NSUserDefaults standardUserDefaults]setInteger:rg forKey:@"regg"];
    [[NSUserDefaults standardUserDefaults]setInteger:rb forKey:@"regb"];
    rrat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:rrat forKey:@"rrat"];
}

- (IBAction)rgreen:(id)sender {
    rr = 0;
    rg = 255;
    rb = 0;
    [[NSUserDefaults standardUserDefaults]setInteger:rr forKey:@"regr"];
    [[NSUserDefaults standardUserDefaults]setInteger:rg forKey:@"regg"];
    [[NSUserDefaults standardUserDefaults]setInteger:rb forKey:@"regb"];
    rrat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:rrat forKey:@"rrat"];
}

- (IBAction)rblue:(id)sender {
    rr = 0;
    rg = 0;
    rb = 255;
    [[NSUserDefaults standardUserDefaults]setInteger:rr forKey:@"regr"];
    [[NSUserDefaults standardUserDefaults]setInteger:rg forKey:@"regg"];
    [[NSUserDefaults standardUserDefaults]setInteger:rb forKey:@"regb"];
    rrat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:rrat forKey:@"rrat"];
}

- (IBAction)rpurple:(id)sender {
    rr = 128;
    rg = 0;
    rb = 128;
    [[NSUserDefaults standardUserDefaults]setInteger:rr forKey:@"regr"];
    [[NSUserDefaults standardUserDefaults]setInteger:rg forKey:@"regg"];
    [[NSUserDefaults standardUserDefaults]setInteger:rb forKey:@"regb"];
    rrat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:rrat forKey:@"rrat"];
}

- (IBAction)swhited:(id)sender {
    sr = 255;
    sg = 255;
    sb = 255;
    [[NSUserDefaults standardUserDefaults]setInteger:sr forKey:@"selr"];
    [[NSUserDefaults standardUserDefaults]setInteger:sg forKey:@"selg"];
    [[NSUserDefaults standardUserDefaults]setInteger:sb forKey:@"selb"];
    srat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:srat forKey:@"srat"];
}

- (IBAction)sred:(id)sender {
    sr = 255;
    sg = 0;
    sb = 0;
    [[NSUserDefaults standardUserDefaults]setInteger:sr forKey:@"selr"];
    [[NSUserDefaults standardUserDefaults]setInteger:sg forKey:@"selg"];
    [[NSUserDefaults standardUserDefaults]setInteger:sb forKey:@"selb"];
    srat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:srat forKey:@"srat"];
}

- (IBAction)sorange:(id)sender {
    sr = 255;
    sg = 128;
    sb = 0;
    [[NSUserDefaults standardUserDefaults]setInteger:sr forKey:@"selr"];
    [[NSUserDefaults standardUserDefaults]setInteger:sg forKey:@"selg"];
    [[NSUserDefaults standardUserDefaults]setInteger:sb forKey:@"selb"];
    srat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:srat forKey:@"srat"];
}

- (IBAction)syellow:(id)sender {
    sr = 255;
    sg = 255;
    sb = 0;
    [[NSUserDefaults standardUserDefaults]setInteger:sr forKey:@"selr"];
    [[NSUserDefaults standardUserDefaults]setInteger:sg forKey:@"selg"];
    [[NSUserDefaults standardUserDefaults]setInteger:sb forKey:@"selb"];
    srat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:srat forKey:@"srat"];
}

- (IBAction)sgreen:(id)sender {
    sr = 0;
    sg = 255;
    sb = 0;
    [[NSUserDefaults standardUserDefaults]setInteger:sr forKey:@"selr"];
    [[NSUserDefaults standardUserDefaults]setInteger:sg forKey:@"selg"];
    [[NSUserDefaults standardUserDefaults]setInteger:sb forKey:@"selb"];
    srat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:srat forKey:@"srat"];
}

- (IBAction)sblue:(id)sender {
    sr = 0;
    sg = 0;
    sb = 255;
    [[NSUserDefaults standardUserDefaults]setInteger:sr forKey:@"selr"];
    [[NSUserDefaults standardUserDefaults]setInteger:sg forKey:@"selg"];
    [[NSUserDefaults standardUserDefaults]setInteger:sb forKey:@"selb"];
    srat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:srat forKey:@"srat"];
}

- (IBAction)spurple:(id)sender {
    sr = 128;
    sg = 0;
    sb = 128;
    [[NSUserDefaults standardUserDefaults]setInteger:sr forKey:@"selr"];
    [[NSUserDefaults standardUserDefaults]setInteger:sg forKey:@"selg"];
    [[NSUserDefaults standardUserDefaults]setInteger:sb forKey:@"selb"];
    srat = 1;
    [[NSUserDefaults standardUserDefaults]setInteger:srat forKey:@"srat"];
}

- (void)updateTime
{
    if(running == TRUE)
    {
        NSTimeInterval currentTime = [NSDate timeIntervalSinceReferenceDate];
        NSTimeInterval elapsed = currentTime - startTime;
        
        //NSLog([NSString stringWithFormat:@"%f %f", currentTime, startTime]);

        //int mins = (int)(elapsed);
        //belapsed -= mins;
        secs = (int)(elapsed);
        //elapsed -= secs;
        //int fraction = elapsed * 10.0;
    
        score.text = [NSString stringWithFormat:@"%d",secs];
    
        [self performSelector:@selector(updateTime) withObject:self afterDelay:1];

    }
}

- (void)genKeys
{
    //int temp;
    
    a1 = arc4random() % 12;
    a2 = arc4random() % 12;
    while(a1 == a2)
        a2 = arc4random() % 12;
    a3 = arc4random() % 12;
    while(a3 == a1 || a3 == a2)
        a3 = arc4random() % 12;
    a4 = arc4random() % 12;
    while(a4 == a1 || a4 == a2 || a4 == a3)
        a4 = arc4random() % 12;
    a5 = arc4random() % 12;
    while(a5 == a1 || a5 == a2 || a5 == a3 || a5 == a4)
        a5 = arc4random() % 12;
    
    /*while(((a1 < a2) && (a2 < a3) && (a3 < a4) && (a4 < a5)) != TRUE)
    {
        if(a2 < a1)
        {
            temp = a1;
            a1 = a2;
            a2 = temp;
        }
        if(a3 < a2)
        {
            temp = a2;
            a2 = a3;
            a3 = temp;
        }
        if(a4 < a3)
        {
            temp = a3;
            a3 = a4;
            a4 = temp;
        }
        if(a5 < a4)
        {
            temp = a4;
            a4 = a5;
            a5 = temp;
        }
    }*/
    
    //NSLog([NSString stringWithFormat:@"KEY %d %d %d %d %d", a1+1, a2+1, a3+1, a4+1, a5+1]);
    
    if(tt == 2)
    {
        l1.text = [NSString stringWithFormat:@"%c",((arc4random() % 26) + 65)];
        l2.text = [NSString stringWithFormat:@"%c",((arc4random() % 26) + 65)];
        l3.text = [NSString stringWithFormat:@"%c",((arc4random() % 26) + 65)];
        l4.text = [NSString stringWithFormat:@"%c",((arc4random() % 26) + 65)];
        l5.text = [NSString stringWithFormat:@"%c",((arc4random() % 26) + 65)];
        l6.text = [NSString stringWithFormat:@"%c",((arc4random() % 26) + 65)];
        l7.text = [NSString stringWithFormat:@"%c",((arc4random() % 26) + 65)];
        l8.text = [NSString stringWithFormat:@"%c",((arc4random() % 26) + 65)];
        l9.text = [NSString stringWithFormat:@"%c",((arc4random() % 26) + 65)];
        l10.text = [NSString stringWithFormat:@"%c",((arc4random() % 26) + 65)];
        l11.text = [NSString stringWithFormat:@"%c",((arc4random() % 26) + 65)];
        l12.text = [NSString stringWithFormat:@"%c",((arc4random() % 26) + 65)];
        
        if(lv==1.0f) { letter1 = @"Y"; letter2 = @"P"; letter3 = @"A"; letter4 = @"H"; letter5 = @"P"; }
        else if(lv==2.0f) { letter1 = @"S"; letter2 = @"K"; letter3 = @"X"; letter4 = @"Y"; letter5 = @"Z"; }
        else if(lv==3.0f) { letter1 = @"T"; letter2 = @"A"; letter3 = @"E"; letter4 = @"B"; letter5 = @"F"; }
        else if(lv==3.1f) { letter1 = @"R"; letter2 = @"H"; letter3 = @"S"; letter4 = @"E"; letter5 = @"S"; }
        else if(lv==4.0f) { letter1 = @"A"; letter2 = @"K"; letter3 = @"I"; letter4 = @"H"; letter5 = @"Q"; }
        else if(lv==4.1f) { letter1 = @"U"; letter2 = @"C"; letter3 = @"P"; letter4 = @"I"; letter5 = @"R"; }
        else if(lv==5.0f) { letter1 = @"R"; letter2 = @"N"; letter3 = @"M"; letter4 = @"O"; letter5 = @"C"; }
        else if(lv==5.1f) { letter1 = @"S"; letter2 = @"M"; letter3 = @"M"; letter4 = @"I"; letter5 = @"O"; }
        else if(lv==6.0f) { letter1 = @"Q"; letter2 = @"L"; letter3 = @"R"; letter4 = @"Y"; letter5 = @"E"; }
        else if(lv==6.1f) { letter1 = @"C"; letter2 = @"P"; letter3 = @"E"; letter4 = @"C"; letter5 = @"K"; }
        else if(lv==7.0f) { letter1 = @"O"; letter2 = @"Y"; letter3 = @"T"; letter4 = @"C"; letter5 = @"L"; }
        else if(lv==7.1f) { letter1 = @"O"; letter2 = @"Y"; letter3 = @"T"; letter4 = @"R"; letter5 = @"S"; }
        else if(lv==8.0f) { letter1 = @"B"; letter2 = @"R"; letter3 = @"U"; letter4 = @"I"; letter5 = @"N"; }
        else if(lv==8.1f) { letter1 = @"T"; letter2 = @"E"; letter3 = @"M"; letter4 = @"A"; letter5 = @"X"; }
        else if(lv==8.2f) { letter1 = @"K"; letter2 = @"S"; letter3 = @"E"; letter4 = @"A"; letter5 = @"P"; }
        else if(lv==8.3f) { letter1 = @"L"; letter2 = @"O"; letter3 = @"T"; letter4 = @"I"; letter5 = @"J"; }
        else if(lv==9.0f) { letter1 = @"X"; letter2 = @"L"; letter3 = @"O"; letter4 = @"N"; letter5 = @"F"; }
        else if(lv==9.1f) { letter1 = @"G"; letter2 = @"E"; letter3 = @"M"; letter4 = @"A"; letter5 = @"M"; }
        else if(lv==10.0f) { letter1 = @"T"; letter2 = @"H"; letter3 = @"I"; letter4 = @"M"; letter5 = @"F"; }
        else if(lv==10.1f) { letter1 = @"L"; letter2 = @"U"; letter3 = @"I"; letter4 = @"D"; letter5 = @"O"; }
        else if(lv==11.0f) { letter1 = @"G"; letter2 = @"B"; letter3 = @"R"; letter4 = @"K"; letter5 = @"E"; }
        else if(lv==11.1f) { letter1 = @"U"; letter2 = @"I"; letter3 = @"N"; letter4 = @"R"; letter5 = @"G"; }
        else if(lv==12.0f) { letter1 = @"D"; letter2 = @"E"; letter3 = @"R"; letter4 = @"N"; letter5 = @"M"; }
        else if(lv==12.1f) { letter1 = @"W"; letter2 = @"L"; letter3 = @"T"; letter4 = @"A"; letter5 = @"P"; }
        else if(lv==12.2f) { letter1 = @"Z"; letter2 = @"F"; letter3 = @"S"; letter4 = @"I"; letter5 = @"K"; }
        else if(lv==13.0f) { letter1 = @"L"; letter2 = @"N"; letter3 = @"K"; letter4 = @"A"; letter5 = @"M"; }
        else if(lv==13.1f) { letter1 = @"E"; letter2 = @"A"; letter3 = @"N"; letter4 = @"D"; letter5 = @"E"; }
        else if(lv==14.0f) { letter1 = @"L"; letter2 = @"E"; letter3 = @"G"; letter4 = @"O"; letter5 = @"T"; }
        else if(lv==14.1f) { letter1 = @"X"; letter2 = @"O"; letter3 = @"M"; letter4 = @"G"; letter5 = @"O"; }
        else if(lv==15.0f) { letter1 = @"C"; letter2 = @"U"; letter3 = @"M"; letter4 = @"I"; letter5 = @"N"; }
        else if(lv==15.1f) { letter1 = @"G"; letter2 = @"I"; letter3 = @"R"; letter4 = @"L"; letter5 = @"Y"; }
        else if(lv==16.0f) { letter1 = @"A"; letter2 = @"Z"; letter3 = @"U"; letter4 = @"L"; letter5 = @"E"; }
        else if(lv==16.1f) { letter1 = @"A"; letter2 = @"W"; letter3 = @"N"; letter4 = @"K"; letter5 = @"A"; }
        else if(lv==17.0f) { letter1 = @"N"; letter2 = @"E"; letter3 = @"G"; letter4 = @"T"; letter5 = @"L"; }
        else if(lv==17.1f) { letter1 = @"N"; letter2 = @"O"; letter3 = @"C"; letter4 = @"O"; letter5 = @"Y"; }
        else if(lv==17.2f) { letter1 = @"H"; letter2 = @"O"; letter3 = @"N"; letter4 = @"D"; letter5 = @"A"; }
        else if(lv==18.0f) { letter1 = @"N"; letter2 = @"I"; letter3 = @"I"; letter4 = @"N"; letter5 = @"O"; }
        else if(lv==18.1f) { letter1 = @"F"; letter2 = @"L"; letter3 = @"I"; letter4 = @"T"; letter5 = @"I"; }
        else if(lv==19.0f) { letter1 = @"Y"; letter2 = @"O"; letter3 = @"E"; letter4 = @"A"; letter5 = @"T"; }
        else if(lv==19.1f) { letter1 = @"R"; letter2 = @"R"; letter3 = @"P"; letter4 = @"T"; letter5 = @"H"; }
        else if(lv==19.2f) { letter1 = @"R"; letter2 = @"E"; letter3 = @"L"; letter4 = @"A"; letter5 = @"X"; }
        else if(lv==20.0f) { letter1 = @"E"; letter2 = @"R"; letter3 = @"C"; letter4 = @"A"; letter5 = @"J"; }
        else if(lv==20.1f) { letter1 = @"P"; letter2 = @"E"; letter3 = @"T"; letter4 = @"H"; letter5 = @"O"; }
        else if(lv==21.0f) { letter1 = @"H"; letter2 = @"E"; letter3 = @"L"; letter4 = @"E"; letter5 = @"R"; }
        else if(lv==21.1f) { letter1 = @"P"; letter2 = @"E"; letter3 = @"M"; letter4 = @"T"; letter5 = @"Y"; }
        else if(lv==21.2f) { letter1 = @"S"; letter2 = @"E"; letter3 = @"L"; letter4 = @"I"; letter5 = @"B"; }
        else if(lv==22.0f) { letter1 = @"E"; letter2 = @"S"; letter3 = @"N"; letter4 = @"E"; letter5 = @"L"; }
        else if(lv==22.1f) { letter1 = @"J"; letter2 = @"Y"; letter3 = @"R"; letter4 = @"E"; letter5 = @"W"; }
        else if(lv==23.0f) { letter1 = @"S"; letter2 = @"K"; letter3 = @"R"; letter4 = @"L"; letter5 = @"E"; }
        else if(lv==23.1f) { letter1 = @"A"; letter2 = @"R"; letter3 = @"E"; letter4 = @"N"; letter5 = @"T"; }
        else if(lv==23.2f) { letter1 = @"P"; letter2 = @"O"; letter3 = @"U"; letter4 = @"I"; letter5 = @"Z"; }
        else if(lv==24.0f) { letter1 = @"I"; letter2 = @"H"; letter3 = @"N"; letter4 = @"A"; letter5 = @"I"; }
        else if(lv==24.1f) { letter1 = @"R"; letter2 = @"X"; letter3 = @"B"; letter4 = @"O"; letter5 = @"C"; }
        else if(lv==24.2f) { letter1 = @"R"; letter2 = @"N"; letter3 = @"D"; letter4 = @"A"; letter5 = @"C"; }
        else if(lv==25.0f) { letter1 = @"D"; letter2 = @"E"; letter3 = @"A"; letter4 = @"L"; letter5 = @"O"; }
        else if(lv==25.1f) { letter1 = @"E"; letter2 = @"L"; letter3 = @"K"; letter4 = @"I"; letter5 = @"N"; }
        else if(lv==25.2f) { letter1 = @"C"; letter2 = @"N"; letter3 = @"N"; letter4 = @"O"; letter5 = @"P"; }
        else if(lv==26.0f) { letter1 = @"B"; letter2 = @"R"; letter3 = @"L"; letter4 = @"R"; letter5 = @"Y"; }
        else if(lv==26.1f) { letter1 = @"E"; letter2 = @"C"; letter3 = @"A"; letter4 = @"B"; letter5 = @"K"; }
        else if(lv==27.0f) { letter1 = @"S"; letter2 = @"A"; letter3 = @"N"; letter4 = @"D"; letter5 = @"L"; }
        else if(lv==27.1f) { letter1 = @"G"; letter2 = @"O"; letter3 = @"R"; letter4 = @"F"; letter5 = @"Y"; }
        else if(lv==28.0f) { letter1 = @"U"; letter2 = @"N"; letter3 = @"I"; letter4 = @"X"; letter5 = @"L"; }
        else if(lv==29.0f) { letter1 = @"N"; letter2 = @"A"; letter3 = @"M"; letter4 = @"I"; letter5 = @"K"; }
        else if(lv==29.1f) { letter1 = @"N"; letter2 = @"V"; letter3 = @"S"; letter4 = @"D"; letter5 = @"R"; }
        else if(lv==29.2f) { letter1 = @"T"; letter2 = @"F"; letter3 = @"U"; letter4 = @"E"; letter5 = @"L"; }
        else if(lv==30.0f) { letter1 = @"T"; letter2 = @"H"; letter3 = @"O"; letter4 = @"C"; letter5 = @"E"; }
        else if(lv==30.1f) { letter1 = @"S"; letter2 = @"L"; letter3 = @"N"; letter4 = @"K"; letter5 = @"Y"; }
        else if(lv==31.0f) { letter1 = @"G"; letter2 = @"O"; letter3 = @"L"; letter4 = @"D"; letter5 = @"E"; }
        else if(lv==32.0f) { letter1 = @"A"; letter2 = @"I"; letter3 = @"R"; letter4 = @"M"; letter5 = @"A"; }
        else if(lv==32.1f) { letter1 = @"I"; letter2 = @"L"; letter3 = @"A"; letter4 = @"N"; letter5 = @"O"; }
        else if(lv==33.0f) { letter1 = @"E"; letter2 = @"U"; letter3 = @"M"; letter4 = @"S"; letter5 = @"T"; }
        else if(lv==33.1f) { letter1 = @"K"; letter2 = @"I"; letter3 = @"O"; letter4 = @"H"; letter5 = @"L"; }
        else if(lv==34.0f) { letter1 = @"T"; letter2 = @"E"; letter3 = @"N"; letter4 = @"N"; letter5 = @"E"; }
        else if(lv==34.1f) { letter1 = @"O"; letter2 = @"A"; letter3 = @"S"; letter4 = @"I"; letter5 = @"N"; }
        else if(lv==34.2f) { letter1 = @"I"; letter2 = @"D"; letter3 = @"U"; letter4 = @"I"; letter5 = @"T"; }
        else if(lv==35.0f) { letter1 = @"S"; letter2 = @"R"; letter3 = @"E"; letter4 = @"E"; letter5 = @"L"; }
        else if(lv==35.1f) { letter1 = @"A"; letter2 = @"G"; letter3 = @"U"; letter4 = @"A"; letter5 = @"S"; }
        else if(lv==35.2f) { letter1 = @"M"; letter2 = @"U"; letter3 = @"S"; letter4 = @"I"; letter5 = @"Q"; }
        
        if(a1==0) l1.text = letter1;
        else if(a1==1) l2.text = letter1;
        else if(a1==2) l3.text = letter1;
        else if(a1==3) l4.text = letter1;
        else if(a1==4) l5.text = letter1;
        else if(a1==5) l6.text = letter1;
        else if(a1==6) l7.text = letter1;
        else if(a1==7) l8.text = letter1;
        else if(a1==8) l9.text = letter1;
        else if(a1==9) l10.text = letter1;
        else if(a1==10) l11.text = letter1;
        else if(a1==11) l12.text = letter1;
        
        if(a2==0) l1.text = letter2;
        else if(a2==1) l2.text = letter2;
        else if(a2==2) l3.text = letter2;
        else if(a2==3) l4.text = letter2;
        else if(a2==4) l5.text = letter2;
        else if(a2==5) l6.text = letter2;
        else if(a2==6) l7.text = letter2;
        else if(a2==7) l8.text = letter2;
        else if(a2==8) l9.text = letter2;
        else if(a2==9) l10.text = letter2;
        else if(a2==10) l11.text = letter2;
        else if(a2==11) l12.text = letter2;
        
        if(a3==0) l1.text = letter3;
        else if(a3==1) l2.text = letter3;
        else if(a3==2) l3.text = letter3;
        else if(a3==3) l4.text = letter3;
        else if(a3==4) l5.text = letter3;
        else if(a3==5) l6.text = letter3;
        else if(a3==6) l7.text = letter3;
        else if(a3==7) l8.text = letter3;
        else if(a3==8) l9.text = letter3;
        else if(a3==9) l10.text = letter3;
        else if(a3==10) l11.text = letter3;
        else if(a3==11) l12.text = letter3;
        
        if(a4==0) l1.text = letter4;
        else if(a4==1) l2.text = letter4;
        else if(a4==2) l3.text = letter4;
        else if(a4==3) l4.text = letter4;
        else if(a4==4) l5.text = letter4;
        else if(a4==5) l6.text = letter4;
        else if(a4==6) l7.text = letter4;
        else if(a4==7) l8.text = letter4;
        else if(a4==8) l9.text = letter4;
        else if(a4==9) l10.text = letter4;
        else if(a4==10) l11.text = letter4;
        else if(a4==11) l12.text = letter4;
        
        if(a5==0) l1.text = letter5;
        else if(a5==1) l2.text = letter5;
        else if(a5==2) l3.text = letter5;
        else if(a5==3) l4.text = letter5;
        else if(a5==4) l5.text = letter5;
        else if(a5==5) l6.text = letter5;
        else if(a5==6) l7.text = letter5;
        else if(a5==7) l8.text = letter5;
        else if(a5==8) l9.text = letter5;
        else if(a5==9) l10.text = letter5;
        else if(a5==10) l11.text = letter5;
        else if(a5==11) l12.text = letter5;
    }
    
    if(tt == 1 || tt == 2)
    {
        startTime = [NSDate timeIntervalSinceReferenceDate];
        [self updateTime];
    }
}

- (void)updateLabels
{
    NSInteger x = 0;
    
    if(tt == 0)
    {
        sco = sco + 1;
        score.text = [NSString stringWithFormat:@"%d",sco];
    }
    
    if([[s objectAtIndex:a1] isEqual: @"1"])
        x = x + 1;
    if([[s objectAtIndex:a2] isEqual: @"1"])
        x = x + 1;
    if([[s objectAtIndex:a3] isEqual: @"1"])
        x = x + 1;
    if([[s objectAtIndex:a4] isEqual: @"1"])
        x = x + 1;
    if([[s objectAtIndex:a5] isEqual: @"1"])
        x = x + 1;
    
    
    if(soundt == TRUE)
    {
        if(x==0||x==1||x==2||x==3||x==4)
            [wrong play];
        else if(x==5)
            [correct play];
    }
    
    if(x == 0)
        perc = 0;
    else if(x == 1)
        perc = 1;
    else if(x == 2)
        perc = 2;
    else if(x == 3)
        perc = 3;
    else if(x == 4)
        perc = 4;
    else if(x == 5)
        perc = 5;
    
    //x=6;
    
    //NSLog([NSString stringWithFormat:@"%d",perc]);
    percentage.text = [NSString stringWithFormat:@"%d/5",perc];
    
    if(perc == 5)
    {
        if(tt == 1 || tt == 2)
        {
            running = FALSE;
            specs = [score.text intValue];
            //NSLog([NSString stringWithFormat:@"%d",ts]);
            if(ts==0)
            {
                ts=specs;
            }
            else
            {
                if(specs < ts)
                    ts = specs;
            }
            timest = timest + 1;
            tst += specs;
            tgt += 1;
            //[submit setTitle:@"Next" forState:UIControlStateNormal];
            secs = 0;
        }
        else
        {
            //NSLog([NSString stringWithFormat:@"%d",rs]);
            if(rs==0)
            {
                rs=sco;
            }
            else
            {
                if(sco < rs)
                    rs = sco;
            }
            timesr = timesr + 1;
            tgr += 1;
            ttr += sco;
            //[submit setTitle:@"Next" forState:UIControlStateNormal];
        }
        
        if(tt == 0 || tt == 1)
            [submit setTitle:@"Restart" forState:UIControlStateNormal];
        else
            [submit setTitle:@"Next" forState:UIControlStateNormal];
        
        [[NSUserDefaults standardUserDefaults] setInteger:rs forKey:@"rs"];
        [[NSUserDefaults standardUserDefaults] setInteger:tgr forKey:@"tgr"];
        [[NSUserDefaults standardUserDefaults] setInteger:ttr forKey:@"ttr"];
        
        [[NSUserDefaults standardUserDefaults] setInteger:ts forKey:@"ts"];
        [[NSUserDefaults standardUserDefaults] setInteger:tgt forKey:@"tgt"];
        [[NSUserDefaults standardUserDefaults] setInteger:tst forKey:@"tst"];
    }
}

- (int)countTrue
{
    NSInteger count = 0;
    
    if([[s objectAtIndex:0] isEqual: @"1"])
        count = count + 1;
    if([[s objectAtIndex:1] isEqual: @"1"])
        count = count + 1;
    if([[s objectAtIndex:2] isEqual: @"1"])
        count = count + 1;
    if([[s objectAtIndex:3] isEqual: @"1"])
        count = count + 1;
    if([[s objectAtIndex:4] isEqual: @"1"])
        count = count + 1;
    if([[s objectAtIndex:5] isEqual: @"1"])
        count = count + 1;
    if([[s objectAtIndex:6] isEqual: @"1"])
        count = count + 1;
    if([[s objectAtIndex:7] isEqual: @"1"])
        count = count + 1;
    if([[s objectAtIndex:8] isEqual: @"1"])
        count = count + 1;
    if([[s objectAtIndex:9] isEqual: @"1"])
        count = count + 1;
    if([[s objectAtIndex:10] isEqual: @"1"])
        count = count + 1;
    if([[s objectAtIndex:11] isEqual: @"1"])
        count = count + 1;
    
    return count;
}

- (IBAction)hitSub:(UIButton *)sender {
    if([submit.titleLabel.text isEqual: @"Restart"])
    {
        [adView removeFromSuperview];
        adView = nil;
        [self first];
    }
    else if([submit.titleLabel.text isEqual: @"Next"])
    {
        [adView removeFromSuperview];
        adView = nil;
        if(lv==1.0f)
        {
            lv=1.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==2.0f)
        {
            lv = 2.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==3.0f)
        {
            lv = 3.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==3.1f)
        {
            lv = 3.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==4.0f)
        {
            lv = 4.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==4.1f)
        {
            lv = 4.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==5.0f)
        {
            lv = 5.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==5.1f)
        {
            lv = 5.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==6.0f)
        {
            lv = 6.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==6.1f)
        {
            lv = 6.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==7.0f)
        {
            lv = 7.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==7.1f)
        {
            lv = 7.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==8.0f)
        {
            lv = 8.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==8.1f)
        {
            lv = 8.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==8.2f)
        {
            lv = 8.3f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==8.3f)
        {
            lv = 8.4f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==9.0f)
        {
            lv = 9.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==9.1f)
        {
            lv = 9.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==10.0f)
        {
            lv = 10.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==10.1f)
        {
            lv = 10.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==11.0f)
        {
            lv = 11.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==11.1f)
        {
            lv = 11.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==12.0f)
        {
            lv = 12.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==12.1f)
        {
            lv = 12.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==12.2f)
        {
            lv = 12.3f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==13.0f)
        {
            lv = 13.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==13.1f)
        {
            lv = 13.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==14.0f)
        {
            lv = 14.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==14.1f)
        {
            lv = 14.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==15.0f)
        {
            lv = 15.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==15.1f)
        {
            lv = 15.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==16.0f)
        {
            lv = 16.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==16.1f)
        {
            lv = 16.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==17.0f)
        {
            lv = 17.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==17.1f)
        {
            lv = 17.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==17.2f)
        {
            lv = 17.3f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==18.0f)
        {
            lv = 18.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==18.1f)
        {
            lv = 18.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==19.0f)
        {
            lv = 19.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==19.1f)
        {
            lv = 19.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==19.2f)
        {
            lv = 19.3f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==20.0f)
        {
            lv = 20.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==20.1f)
        {
            lv = 20.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==21.0f)
        {
            lv = 21.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==21.1f)
        {
            lv = 21.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==21.2f)
        {
            lv = 21.3f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==22.0f)
        {
            lv = 22.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==22.1f)
        {
            lv = 22.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==23.0f)
        {
            lv = 23.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==23.1f)
        {
            lv = 23.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==23.2f)
        {
            lv = 23.3f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==24.0f)
        {
            lv = 24.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==24.1f)
        {
            lv = 24.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==24.2f)
        {
            lv = 24.3f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==25.0f)
        {
            lv = 25.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==25.1f)
        {
            lv = 25.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==25.2f)
        {
            lv = 25.3f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==26.0f)
        {
            lv = 26.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==26.1f)
        {
            lv = 26.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==27.0f)
        {
            lv = 27.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==27.1f)
        {
            lv = 27.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==28.0f)
        {
            lv = 28.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==29.0f)
        {
            lv = 29.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==29.1f)
        {
            lv = 29.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==29.2f)
        {
            lv = 29.3f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==30.0f)
        {
            lv = 30.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==30.1f)
        {
            lv = 30.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==31.0f)
        {
            lv = 31.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==32.0f)
        {
            lv = 32.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==32.1f)
        {
            lv = 32.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==33.0f)
        {
            lv = 33.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==33.1f)
        {
            lv = 33.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==34.0f)
        {
            lv = 34.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==34.1f)
        {
            lv = 34.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==34.2f)
        {
            lv = 34.3f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==35.0f)
        {
            lv = 35.1f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==35.1f)
        {
            lv = 35.2f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
        else if(lv==35.2f)
        {
            lv = 35.3f;
            UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
            UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"unscramble"];
            vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            [self presentViewController:vc animated:YES completion:nil];
        }
    }
    else if([self countTrue] == 5)
        [self updateLabels];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches]anyObject];
    
    if(CGRectContainsPoint([t1 frame], [touch locationInView:self.view]))
    {
        if([[s objectAtIndex:0] isEqual: @"0"])
        {
            t1.backgroundColor = [UIColor colorWithRed:sr/255.0 green:sg/255.0 blue:sb/255.0 alpha:1];
            l1.hidden = FALSE;
            [s replaceObjectAtIndex:0 withObject:@"1"];
        }
        else
        {
            t1.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
            l1.hidden = TRUE;
            [s replaceObjectAtIndex:0 withObject:@"0"];
        }
    }
    else if(CGRectContainsPoint([t2 frame], [touch locationInView:self.view]))
    {
        if([[s objectAtIndex:1] isEqual: @"0"])
        {
            t2.backgroundColor = [UIColor colorWithRed:sr/255.0 green:sg/255.0 blue:sb/255.0 alpha:1];
            l2.hidden = FALSE;
            [s replaceObjectAtIndex:1 withObject:@"1"];
        }
        else
        {
            t2.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
            l2.hidden = TRUE;
            [s replaceObjectAtIndex:1 withObject:@"0"];
        }
    }
    else if(CGRectContainsPoint([t3 frame], [touch locationInView:self.view]))
    {
        if([[s objectAtIndex:2] isEqual: @"0"])
        {
            t3.backgroundColor = [UIColor colorWithRed:sr/255.0 green:sg/255.0 blue:sb/255.0 alpha:1];
            l3.hidden = FALSE;
            [s replaceObjectAtIndex:2 withObject:@"1"];
        }
        else
        {
            t3.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
            l3.hidden = TRUE;
            [s replaceObjectAtIndex:2 withObject:@"0"];
        }
    }
    else if(CGRectContainsPoint([t4 frame], [touch locationInView:self.view]))
    {
        if([[s objectAtIndex:3] isEqual: @"0"])
        {
            t4.backgroundColor = [UIColor colorWithRed:sr/255.0 green:sg/255.0 blue:sb/255.0 alpha:1];
            l4.hidden = FALSE;
            [s replaceObjectAtIndex:3 withObject:@"1"];
        }
        else
        {
            t4.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
            l4.hidden = TRUE;
            [s replaceObjectAtIndex:3 withObject:@"0"];
        }
    }
    else if(CGRectContainsPoint([t5 frame], [touch locationInView:self.view]))
    {
        if([[s objectAtIndex:4] isEqual: @"0"])
        {
            t5.backgroundColor = [UIColor colorWithRed:sr/255.0 green:sg/255.0 blue:sb/255.0 alpha:1];
            l5.hidden = FALSE;
            [s replaceObjectAtIndex:4 withObject:@"1"];
        }
        else
        {
            t5.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
            l5.hidden = TRUE;
            [s replaceObjectAtIndex:4 withObject:@"0"];
        }
    }
    else if(CGRectContainsPoint([t6 frame], [touch locationInView:self.view]))
    {
        if([[s objectAtIndex:5] isEqual: @"0"])
        {
            t6.backgroundColor = [UIColor colorWithRed:sr/255.0 green:sg/255.0 blue:sb/255.0 alpha:1];
            l6.hidden = FALSE;
            [s replaceObjectAtIndex:5 withObject:@"1"];
        }
        else
        {
            t6.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
            l6.hidden = TRUE;
            [s replaceObjectAtIndex:5 withObject:@"0"];
        }
    }
    else if(CGRectContainsPoint([t7 frame], [touch locationInView:self.view]))
    {
        if([[s objectAtIndex:6] isEqual: @"0"])
        {
            t7.backgroundColor = [UIColor colorWithRed:sr/255.0 green:sg/255.0 blue:sb/255.0 alpha:1];
            l7.hidden = FALSE;
            [s replaceObjectAtIndex:6 withObject:@"1"];
        }
        else
        {
            t7.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
            l7.hidden = TRUE;
            [s replaceObjectAtIndex:6 withObject:@"0"];
        }
    }
    else if(CGRectContainsPoint([t8 frame], [touch locationInView:self.view]))
    {
        if([[s objectAtIndex:7] isEqual: @"0"])
        {
            t8.backgroundColor = [UIColor colorWithRed:sr/255.0 green:sg/255.0 blue:sb/255.0 alpha:1];
            l8.hidden = FALSE;
            [s replaceObjectAtIndex:7 withObject:@"1"];
        }
        else
        {
            t8.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
            l8.hidden = TRUE;
            [s replaceObjectAtIndex:7 withObject:@"0"];
        }
    }
    else if(CGRectContainsPoint([t9 frame], [touch locationInView:self.view]))
    {
        if([[s objectAtIndex:8] isEqual: @"0"])
        {
            t9.backgroundColor = [UIColor colorWithRed:sr/255.0 green:sg/255.0 blue:sb/255.0 alpha:1];
            l9.hidden = FALSE;
            [s replaceObjectAtIndex:8 withObject:@"1"];
        }
        else
        {
            t9.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
            l9.hidden = TRUE;
            [s replaceObjectAtIndex:8 withObject:@"0"];
        }
    }
    else if(CGRectContainsPoint([t10 frame], [touch locationInView:self.view]))
    {
        if([[s objectAtIndex:9] isEqual: @"0"])
        {
            t10.backgroundColor = [UIColor colorWithRed:sr/255.0 green:sg/255.0 blue:sb/255.0 alpha:1];
            l10.hidden = FALSE;
            [s replaceObjectAtIndex:9 withObject:@"1"];
        }
        else
        {
            t10.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
            l10.hidden = TRUE;
            [s replaceObjectAtIndex:9 withObject:@"0"];
        }
    }
    else if(CGRectContainsPoint([t11 frame], [touch locationInView:self.view]))
    {
        if([[s objectAtIndex:10] isEqual: @"0"])
        {
            t11.backgroundColor = [UIColor colorWithRed:sr/255.0 green:sg/255.0 blue:sb/255.0 alpha:1];
            l11.hidden = FALSE;
            [s replaceObjectAtIndex:10 withObject:@"1"];
        }
        else
        {
            t11.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
            l11.hidden = TRUE;
            [s replaceObjectAtIndex:10 withObject:@"0"];
        }
    }
    else if(CGRectContainsPoint([t12 frame], [touch locationInView:self.view]))
    {
        if([[s objectAtIndex:11] isEqual: @"0"])
        {
            t12.backgroundColor = [UIColor colorWithRed:sr/255.0 green:sg/255.0 blue:sb/255.0 alpha:1];
            l12.hidden = FALSE;
            [s replaceObjectAtIndex:11 withObject:@"1"];
        }
        else
        {
            t12.backgroundColor = [UIColor colorWithRed:rr/255.0 green:rg/255.0 blue:rb/255.0 alpha:1];
            l12.hidden = TRUE;
            [s replaceObjectAtIndex:11 withObject:@"0"];
        }
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField == input)
        [input resignFirstResponder];
    return NO;
}

- (IBAction)level1:(id)sender
{
    lv = 1.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level2:(id)sender
{
    lv = 2.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];

}

- (IBAction)level3:(id)sender
{
    lv = 3.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];

}

- (IBAction)level4:(id)sender
{
    lv = 4.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level5:(id)sender
{
    lv = 5.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level6:(id)sender
{
    lv = 6.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level7:(id)sender
{
    lv = 7.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level8:(id)sender
{
    lv = 8.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level9:(id)sender
{
    lv = 9.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level10:(id)sender
{
    lv = 10.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level11:(id)sender
{
    lv = 11.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level12:(id)sender
{
    lv = 12.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level13:(id)sender
{
    lv = 13.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level14:(id)sender
{
    lv = 14.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level15:(id)sender
{
    lv = 15.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level16:(id)sender
{
    lv = 16.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level17:(id)sender
{
    lv = 17.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level18:(id)sender
{
    lv = 18.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level19:(id)sender
{
    lv = 19.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level20:(id)sender
{
    lv = 20.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level21:(id)sender
{
    lv = 21.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level22:(id)sender
{
    lv = 22.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level23:(id)sender
{
    lv = 23.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level24:(id)sender
{
    lv = 24.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level25:(id)sender
{
    lv = 25.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level26:(id)sender
{
    lv = 26.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level27:(id)sender
{
    lv = 27.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level28:(id)sender
{
    lv = 28.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level29:(id)sender
{
    lv = 29.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level30:(id)sender
{
    lv = 30.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level31:(id)sender
{
    lv = 31.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level32:(id)sender
{
    lv = 32.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level33:(id)sender
{
    lv = 33.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level34:(id)sender
{
    lv = 34.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)level35:(id)sender
{
    lv = 35.0f;
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"game1"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)Hint1:(id)sender {
    if(lv==1.1f)
        hints.text = @"Smile";
    else if(lv==2.1f)
        hints.text = @"Blue";
    else if(lv==3.2f)
        hints.text = @"Five Dollars";
    else if(lv==4.2f)
        hints.text = @"Electric";
    else if(lv==5.2f)
        hints.text = @"Brigham Young";
    else if(lv==6.2f)
        hints.text = @"Historically Medicinal Uses";
    else if(lv==7.2f)
        hints.text = @"Andy Davis";
    else if(lv==8.4f)
        hints.text = @"Memphis";
    else if(lv==9.2f)
        hints.text = @"Hope and Faith";
    else if(lv==10.2f)
        hints.text = @"Group 1";
    else if(lv==11.2f)
        hints.text = @"Fast-Food";
    else if(lv==12.3f)
        hints.text = @"CERN";
    else if(lv==13.2f)
        hints.text = @"FIRST";
    else if(lv==14.2f)
        hints.text = @"Ten to the Power of One-Hundred";
    else if(lv==15.2f)
        hints.text = @"Started in Scotland";
    else if(lv==16.2f)
        hints.text = @"Seven Core Principles";
    else if(lv==17.3f)
        hints.text = @"Microprocessors";
    else if(lv==18.2f)
        hints.text = @"Luxury";
    else if(lv==19.3f)
        hints.text = @"Translated into 67 Languages";
    else if(lv==20.2f)
        hints.text = @"Children";
    else if(lv==21.3f)
        hints.text = @"Actress Name";
    else if(lv==22.2f)
        hints.text = @"The Garden State";
    else if(lv==23.3f)
        hints.text = @"Gitche Gumee";
    else if(lv==24.3f)
        hints.text = @"Apollo 11";
    else if(lv==25.3f)
        hints.text = @"Owned by Viacom";
    else if(lv==26.2f)
        hints.text = @"Aggregate";
    else if(lv==27.2f)
        hints.text = @"Eat Mosquitoes";
    else if(lv==28.1f)
        hints.text = @"Ubuntu";
    else if(lv==29.3f)
        hints.text = @"University of Texas at Austin";
    else if(lv==30.2f)
        hints.text = @"Granite and Marble";
    else if(lv==31.1f)
        hints.text = @"Originally in Denmark";
    else if(lv==32.2f)
        hints.text = @"Tropical Areas";
    else if(lv==33.2f)
        hints.text = @"Second-Most Abundant in the Universe";
    else if(lv==34.3f)
        hints.text = @"Currently 193 Members";
    else if(lv==35.3f)
        hints.text = @"Final Level";
}

- (IBAction)Hint2:(id)sender {
    if(lv==1.1f)
        hints.text = @"Content";
    else if(lv==2.1f)
        hints.text = @"Clouds";
    else if(lv==3.2f)
        hints.text = @"Submarine Sandwiches";
    else if(lv==4.2f)
        hints.text = @"Mouse";
    else if(lv==5.2f)
        hints.text = @"Utah";
    else if(lv==6.2f)
        hints.text = @"Ninety-Five Percent Water";
    else if(lv==7.2f)
        hints.text = @"Walt Disney";
    else if(lv==8.4f)
        hints.text = @"N-Sync";
    else if(lv==9.2f)
        hints.text = @"Transformers";
    else if(lv==10.2f)
        hints.text = @"Batteries";
    else if(lv==11.2f)
        hints.text = @"Crown";
    else if(lv==12.3f)
        hints.text = @"Peace";
    else if(lv==13.2f)
        hints.text = @"Segway";
    else if(lv==14.2f)
        hints.text = @"Search";
    else if(lv==15.2f)
        hints.text = @"Chess on Ice";
    else if(lv==16.2f)
        hints.text = @"Africa";
    else if(lv==17.3f)
        hints.text = @"Molecular Scale";
    else if(lv==18.2f)
        hints.text = @"Divide By Zero";
    else if(lv==19.3f)
        hints.text = @"7 Books";
    else if(lv==20.2f)
        hints.text = @"Education";
    else if(lv==21.3f)
        hints.text = @"Cherry and Lemon-Lime Soda";
    else if(lv==22.2f)
        hints.text = @"NYG and NYJ Football";
    else if(lv==23.3f)
        hints.text = @"Largest Great Lake";
    else if(lv==24.3f)
        hints.text = @"Watergate Scandal";
    else if(lv==25.3f)
        hints.text = @"SpongeBob SquarePants";
    else if(lv==26.2f)
        hints.text = @"Phone Company";
    else if(lv==27.2f)
        hints.text = @"Elongated Body";
    else if(lv==28.1f)
        hints.text = @"Tux the Penguin";
    else if(lv==29.3f)
        hints.text = @"Drafted by the Seattle SuperSonics";
    else if(lv==30.2f)
        hints.text = @"Islands and Peninsulas";
    else if(lv==31.1f)
        hints.text = @"Construction";
    else if(lv==32.2f)
        hints.text = @"Mosquitoes";
    else if(lv==33.2f)
        hints.text = @"Balloons";
    else if(lv==34.3f)
        hints.text = @"Peace Territory in New York City";
    else if(lv==35.3f)
        hints.text = @"Enjoyed Demo";
}

- (IBAction)Solve:(id)sender {
    hints.text = @"[Disabled Feature]";
}

- (IBAction)checktf:(id)sender {
    if(lv==1.1f)
    {
        if([input.text caseInsensitiveCompare:@"happy"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l1f == 0)
            {
                lvflag = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l1f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l1f forKey:@"l1fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==2.1f)
    {
        if([input.text caseInsensitiveCompare:@"sky"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l2f == 0)
            {
                lvflag = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l2f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l2f forKey:@"l2fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==3.2f)
    {
        if([input.text caseInsensitiveCompare:@"eat fresh"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l3f == 0)
            {
                lvflag = 4;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l3f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l3f forKey:@"l3fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==4.2f)
    {
        if([input.text caseInsensitiveCompare:@"pikachu"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l4f == 0)
            {
                lvflag = 5;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l4f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l4f forKey:@"l4fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==5.2f)
    {
        if([input.text caseInsensitiveCompare:@"mormonism"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l5f == 0)
            {
                lvflag = 6;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l5f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l5f forKey:@"l5fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==6.2f)
    {
        if([input.text caseInsensitiveCompare:@"celery"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l6f == 0)
            {
                lvflag = 7;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l6f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l6f forKey:@"l6fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==7.2f)
    {
        if([input.text caseInsensitiveCompare:@"toy story"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l7f == 0)
            {
                lvflag = 8;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l7f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l7f forKey:@"l7fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==8.4f)
    {
        if([input.text caseInsensitiveCompare:@"justin timberlake"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l8f == 0)
            {
                lvflag = 9;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l8f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l8f forKey:@"l8fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==9.2f)
    {
        if([input.text caseInsensitiveCompare:@"megan fox"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l9f == 0)
            {
                lvflag = 10;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l9f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l9f forKey:@"l9fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==10.2f)
    {
        if([input.text caseInsensitiveCompare:@"lithium"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l10f == 0)
            {
                lvflag = 11;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l10f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l10f forKey:@"l10fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==11.2f)
    {
        if([input.text caseInsensitiveCompare:@"burger king"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l11f == 0)
            {
                lvflag = 12;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l11f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l11f forKey:@"l11fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==12.3f)
    {
        if([input.text caseInsensitiveCompare:@"switzerland"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l12f == 0)
            {
                lvflag = 13;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l12f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l12f forKey:@"l12fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==13.2f)
    {
        if([input.text caseInsensitiveCompare:@"dean kamen"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l13f == 0)
            {
                lvflag = 14;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l13f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l13f forKey:@"l13fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==14.2f)
    {
        if([input.text caseInsensitiveCompare:@"google"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l14f == 0)
            {
                lvflag = 15;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l14f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l14f forKey:@"l14fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==15.2f)
    {
        if([input.text caseInsensitiveCompare:@"curling"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l15f == 0)
            {
                lvflag = 16;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l15f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l15f forKey:@"l15fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==16.2f)
    {
        if([input.text caseInsensitiveCompare:@"kwanzaa"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l16f == 0)
            {
                lvflag = 17;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l16f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l16f forKey:@"l16fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==17.3f)
    {
        if([input.text caseInsensitiveCompare:@"nanotechnology"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l17f == 0)
            {
                lvflag = 18;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l17f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l17f forKey:@"l17fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==18.2f)
    {
        if([input.text caseInsensitiveCompare:@"infiniti"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l18f == 0)
            {
                lvflag = 19;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l18f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l18f forKey:@"l18fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==19.3f)
    {
        if([input.text caseInsensitiveCompare:@"harry potter"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l19f == 0)
            {
                lvflag = 20;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l19f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l19f forKey:@"l19fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==20.2f)
    {
        if([input.text caseInsensitiveCompare:@"teacher"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l20f == 0)
            {
                lvflag = 21;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l20f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l20f forKey:@"l20fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==21.3f)
    {
        if([input.text caseInsensitiveCompare:@"shirley temple"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l21f == 0)
            {
                lvflag = 22;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l21f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l21f forKey:@"l21fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==22.2f)
    {
        if([input.text caseInsensitiveCompare:@"new jersey"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l22f == 0)
            {
                lvflag = 23;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l22f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l22f forKey:@"l22fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==23.3f)
    {
        if([input.text caseInsensitiveCompare:@"lake superior"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l23f == 0)
            {
                lvflag = 24;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l23f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l23f forKey:@"l23fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==24.3f)
    {
        if([input.text caseInsensitiveCompare:@"richard nixon"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l24f == 0)
            {
                lvflag = 25;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l24f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l24f forKey:@"l24fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==25.3f)
    {
        if([input.text caseInsensitiveCompare:@"nickelodeon"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l25f == 0)
            {
                lvflag = 26;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l25f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l25f forKey:@"l25fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==26.2f)
    {
        if([input.text caseInsensitiveCompare:@"blackberry"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l26f == 0)
            {
                lvflag = 27;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l26f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l26f forKey:@"l26fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==27.2f)
    {
        if([input.text caseInsensitiveCompare:@"dragonfly"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l27f == 0)
            {
                lvflag = 28;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l27f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l27f forKey:@"l27fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==28.1f)
    {
        if([input.text caseInsensitiveCompare:@"linux"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l28f == 0)
            {
                lvflag = 29;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l28f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l28f forKey:@"l28fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==29.3f)
    {
        if([input.text caseInsensitiveCompare:@"kevin durant"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l29f == 0)
            {
                lvflag = 30;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l29f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l29f forKey:@"l29fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==30.2f)
    {
        if([input.text caseInsensitiveCompare:@"kitchen"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l30f == 0)
            {
                lvflag = 31;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l30f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l30f forKey:@"l30fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==31.1f)
    {
        if([input.text caseInsensitiveCompare:@"lego"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l31f == 0)
            {
                lvflag = 32;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l31f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l31f forKey:@"l31fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==32.2f)
    {
        if([input.text caseInsensitiveCompare:@"malaria"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l32f == 0)
            {
                lvflag = 33;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l32f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l32f forKey:@"l32fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==33.2f)
    {
        if([input.text caseInsensitiveCompare:@"helium"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l33f == 0)
            {
                lvflag = 34;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l33f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l33f forKey:@"l33fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==34.3f)
    {
        if([input.text caseInsensitiveCompare:@"united nations"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l34f == 0)
            {
                lvflag = 35;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l34f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l34f forKey:@"l34fz"];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    else if(lv==35.3f)
    {
        if([input.text caseInsensitiveCompare:@"guessquares"] == NSOrderedSame)
        {
            //[correct play];
            yestf.hidden = FALSE;
            notf.hidden = TRUE;
            if(l35f == 0)
            {
                lvflag = 36;
                [[NSUserDefaults standardUserDefaults] setInteger:lvflag forKey:@"levelyz"];
            }
            l35f = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:l35f forKey:@"l35fz"];
            [self performSelector:@selector(delay) withObject:nil afterDelay:0.6];
        }
        else
        {
            //[wrong play];
            yestf.hidden = TRUE;
            notf.hidden = FALSE;
        }
    }
    
    if(soundt == TRUE)
    {
        if(yestf.hidden == TRUE && notf.hidden == FALSE)
            [wrong play];
        else if(yestf.hidden == FALSE && notf.hidden == TRUE)
            [correct play];
    }
}

- (void)delay
{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"congrats"];
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)backCong:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidUnload {
    [self setBgrayd:nil];
    [self setRblackd:nil];
    [self setSwhited:nil];
    [self setBred:nil];
    [self setBorange:nil];
    [self setByellow:nil];
    [self setBgreen:nil];
    [self setBblue:nil];
    [self setBpurple:nil];
    [self setRred:nil];
    [self setRorange:nil];
    [self setRyellow:nil];
    [self setRgreen:nil];
    [self setRblue:nil];
    [self setRpurple:nil];
    [self setSred:nil];
    [self setSorange:nil];
    [self setSyellow:nil];
    [self setSgreen:nil];
    [self setSblue:nil];
    [self setSpurple:nil];
    [self setRhs:nil];
    [self setThs:nil];
    [self setRtg:nil];
    [self setRtt:nil];
    [self setTtg:nil];
    [self setTts:nil];
    [super viewDidUnload];
}
@end