//
//  YHStarViewController.m
//  StarWorld
//
//  Created by 孙滢贺 on 16/1/20.
//  Copyright (c) 2016年 YH. All rights reserved.
//

#import "YHStarViewController.h"

@interface YHStarViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *starImage;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIImageView *starRunFinish;
@property (weak, nonatomic) IBOutlet UIImageView *starRunFinish2;
@property (weak, nonatomic) IBOutlet UILabel *manStarShow;
@property (weak, nonatomic) IBOutlet UILabel *womanStarShow;
@property (weak, nonatomic) IBOutlet UIButton *woman;
@property (weak, nonatomic) IBOutlet UIButton *man;
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *starImages;
- (IBAction)showImage:(id)sender;
- (IBAction)showWomanImage:(id)sender;
- (IBAction)starRun:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *manStar;
@property (weak, nonatomic) IBOutlet UIImageView *womanStar;
@property (weak, nonatomic) IBOutlet UIImageView *star1;
@property (weak, nonatomic) IBOutlet UIImageView *star2;
@property (weak, nonatomic) IBOutlet UIImageView *star3;
@property (weak, nonatomic) IBOutlet UIImageView *star4;
@property (weak, nonatomic) IBOutlet UIImageView *star5;
@property (weak, nonatomic) IBOutlet UIImageView *star6;
@property (weak, nonatomic) IBOutlet UIImageView *star7;
@property (weak, nonatomic) IBOutlet UIImageView *star8;
@property (weak, nonatomic) IBOutlet UIImageView *star9;
@property (weak, nonatomic) IBOutlet UIImageView *star10;
@property (weak, nonatomic) IBOutlet UIImageView *star11;
@property (weak, nonatomic) IBOutlet UIImageView *star12;

@property (nonatomic, strong)UIImageView *dragIV;
@property (nonatomic, strong)NSString *sex;
@property (nonatomic, strong)NSString *manStarClicked;
@property (nonatomic, strong)NSString *womanStarClicked;
@property (nonatomic, assign)NSInteger manAndStar;
@property (nonatomic, assign)NSInteger womanAndStar;
@property (nonatomic, assign)NSInteger sexAndStar;

@end

@implementation YHStarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.startButton.layer.cornerRadius = 40.0;
    self.startButton.alpha = 0.5;
    [self.startButton setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateNormal];
    self.man.alpha = 0.5;
    [self.man setBackgroundImage:[UIImage imageNamed:@"4.png"] forState:UIControlStateNormal];
    self.man.titleLabel.text = @"点我吧！";
    self.woman.alpha =0.5;
    [self.woman setBackgroundImage:[UIImage imageNamed:@"5.png"] forState:UIControlStateNormal];
    self.woman.titleLabel.text =@"点我吧";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)showImage:(id)sender {
UIAlertView *alertOfNOTSelect = [[UIAlertView alloc]initWithTitle:@"注意" message:@"亲，你造吗，选择图片的正确方法就是，点击下方按钮并拖拽至此区域" delegate:self cancelButtonTitle:@"👌" otherButtonTitles: nil];
    [alertOfNOTSelect show];
    self.star1.image = [UIImage imageNamed:@"2-1.png"];
    self.star2.image = [UIImage imageNamed:@"2-2.png"];
    self.star3.image = [UIImage imageNamed:@"2-3.png"];
    self.star4.image = [UIImage imageNamed:@"2-4.png"];
    self.star5.image = [UIImage imageNamed:@"2-5.png"];
    self.star6.image = [UIImage imageNamed:@"2-6.png"];
    self.star7.image = [UIImage imageNamed:@"2-7.png"];
    self.star8.image = [UIImage imageNamed:@"2-8.png"];
    self.star9.image = [UIImage imageNamed:@"2-9.png"];
    self.star10.image = [UIImage imageNamed:@"2-10.png"];
    self.star11.image = [UIImage imageNamed:@"2-11.png"];
    self.star12.image = [UIImage imageNamed:@"2-12.png"];
    self.sex = @"man";
}

- (IBAction)showWomanImage:(id)sender {
    UIAlertView *alertOfNOTSelect = [[UIAlertView alloc]initWithTitle:@"注意" message:@"亲，你造吗，选择图片的正确方法就是，点击下方按钮并拖拽至此区域" delegate:self cancelButtonTitle:@"👌" otherButtonTitles: nil];
    [alertOfNOTSelect show];
    self.star1.image = [UIImage imageNamed:@"1-1.png"];
    self.star2.image = [UIImage imageNamed:@"1-2.png"];
    self.star3.image = [UIImage imageNamed:@"1-3.png"];
    self.star4.image = [UIImage imageNamed:@"1-4.png"];
    self.star5.image = [UIImage imageNamed:@"1-5.png"];
    self.star6.image = [UIImage imageNamed:@"1-6.png"];
    self.star7.image = [UIImage imageNamed:@"1-7.png"];
    self.star8.image = [UIImage imageNamed:@"1-8.png"];
    self.star9.image = [UIImage imageNamed:@"1-9.png"];
    self.star10.image = [UIImage imageNamed:@"1-10.png"];
    self.star11.image = [UIImage imageNamed:@"1-11.png"];
    self.star12.image = [UIImage imageNamed:@"1-12.png"];
    self.sex = @"woman";
}

- (IBAction)starRun:(id)sender {
    //检查两个数据
    NSLog(@"%ldvs%ld",(long)self.manAndStar,(long)self.womanAndStar);
    if (self.manAndStar == nil || self.womanAndStar == nil) {
        NSLog(@"没选择好！");
        UIAlertView *alertOfNOTSelect = [[UIAlertView alloc]initWithTitle:@"注意" message:@"您尚未选择图片对象呢，请点击下方按钮并拖拽至此区域进行选择" delegate:self cancelButtonTitle:@"👌" otherButtonTitles: nil];
        [alertOfNOTSelect show];
    }else{
        self.starRunFinish.image = [UIImage imageNamed:@"6.png"];
        self.starRunFinish2.image = [UIImage imageNamed:@"3.png"];
        switch (self.manAndStar) {
            case 1:
                self.manStarShow.text = @"白羊座";
                break;
            case 2:
                self.manStarShow.text = @"金牛座";
                break;
            case 3:
                self.manStarShow.text = @"双子座";
                break;
            case 4:
                self.manStarShow.text = @"巨蟹座";
                break;
            case 5:
                self.manStarShow.text = @"狮子座";
                break;
            case 6:
                self.manStarShow.text = @"处女座";
                break;
            case 7:
                self.manStarShow.text = @"天秤座";
                break;
            case 8:
                self.manStarShow.text = @"天蝎座";
                break;
            case 9:
                self.manStarShow.text = @"射手座";
                break;
            case 10:
                self.manStarShow.text = @"摩羯座";
                break;
            case 11:
                self.manStarShow.text = @"水瓶座";
                break;
            case 12:
                self.manStarShow.text = @"双鱼座";
                break;
            default:
                break;
        }
        switch (self.womanAndStar) {
            case 1:
                self.womanStarShow.text = @"白羊座";
                break;
            case 2:
                self.womanStarShow.text = @"金牛座";
                break;
            case 3:
                self.womanStarShow.text = @"双子座";
                break;
            case 4:
                self.womanStarShow.text = @"巨蟹座";
                break;
            case 5:
                self.womanStarShow.text = @"狮子座";
                break;
            case 6:
                self.womanStarShow.text = @"处女座";
                break;
            case 7:
                self.womanStarShow.text = @"天秤座";
                break;
            case 8:
                self.womanStarShow.text = @"天蝎座";
                break;
            case 9:
                self.womanStarShow.text = @"射手座";
                break;
            case 10:
                self.womanStarShow.text = @"摩羯座";
                break;
            case 11:
                self.womanStarShow.text = @"水瓶座";
                break;
            case 12:
                self.womanStarShow.text = @"双鱼座";
                break;
            default:
                break;
        }
        NSLog(@"%@vs%@",self.manStarShow.text,self.womanStarShow.text);
       
    }
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *t =[touches anyObject];
    CGPoint p = [t locationInView:self.view];
    for (UIImageView *imageOfStar in self.starImages) {
        if (CGRectContainsPoint(imageOfStar.frame, p)) {
            self.dragIV = [[UIImageView alloc]initWithFrame:imageOfStar.frame];
            self.dragIV.image = imageOfStar.image;
            [self.view addSubview:self.dragIV];
            if (CGRectContainsPoint(self.star1.frame, p)) {
                self.sexAndStar = 1;
            }else if (CGRectContainsPoint(self.star2.frame, p)) {
                self.sexAndStar = 2;
            }else if (CGRectContainsPoint(self.star3.frame, p)) {
                self.sexAndStar = 3;
            }else if (CGRectContainsPoint(self.star4.frame, p)) {
                self.sexAndStar = 4;
            }else if (CGRectContainsPoint(self.star5.frame, p)) {
                self.sexAndStar = 5;
            }else if (CGRectContainsPoint(self.star6.frame, p)) {
                self.sexAndStar = 6;
            }else if (CGRectContainsPoint(self.star7.frame, p)) {
                self.sexAndStar = 7;
            }else if (CGRectContainsPoint(self.star8.frame, p)) {
                self.sexAndStar = 8;
            }else if (CGRectContainsPoint(self.star9.frame, p)) {
                self.sexAndStar = 9;
            }else if (CGRectContainsPoint(self.star10.frame, p)) {
                self.sexAndStar = 10;
            }else if (CGRectContainsPoint(self.star11.frame, p)) {
                self.sexAndStar = 11;
            }else if (CGRectContainsPoint(self.star12.frame, p)) {
                self.sexAndStar = 12;
            }
        }
        if ([self.sex isEqualToString:@"woman"]) {
            self.womanAndStar = self.sexAndStar;
        }else if ([self.sex isEqualToString:@"man"]){
            self.manAndStar = self.sexAndStar;
        }
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
        UITouch *t = [touches anyObject];
        CGPoint p = [t locationInView:self.view];
        self.dragIV.center = p;
        
    }
    
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *t = [touches anyObject];
    CGPoint p = [t locationInView:self.view];
    if (self.dragIV) {
        if (CGRectContainsPoint(self.starImage.frame, p))
            if ([self.sex isEqualToString:@"man"]) {
                
                self.manStar.image = self.dragIV.image;
            }else if ([self.sex isEqualToString:@"woman"]){
                self.womanStar.image = self.dragIV.image;
            }
            [self.dragIV removeFromSuperview];
         }
        else{
            [self.dragIV removeFromSuperview];
        }
    self.dragIV = nil;
    }
    
-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
}
@end
