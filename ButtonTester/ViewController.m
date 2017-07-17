//
//  ViewController.m
//  ButtonTester
//
//  Created by phi161 on 2017.07.17.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;

@property (weak, nonatomic) IBOutlet UIButton *buttonA;
@property (weak, nonatomic) IBOutlet UIButton *buttonB;
@property (weak, nonatomic) IBOutlet UIButton *buttonC;
@property (weak, nonatomic) IBOutlet UIButton *buttonD;
@property (weak, nonatomic) IBOutlet UIButton *buttonE;
@property (weak, nonatomic) IBOutlet UIButton *buttonF;

@property (nonatomic, strong) UIColor *selectedTitleColor;
@property (nonatomic, strong) UIColor *selectedBackgroundColor;
@property (nonatomic, strong) UIColor *unselectedTitleColor;
@property (nonatomic, strong) UIColor *unselectedBackgroundColor;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    self.selectedTitleColor = [UIColor redColor];
    self.selectedBackgroundColor = [UIColor cyanColor];
    
    self.unselectedTitleColor = [UIColor blackColor];
    self.unselectedBackgroundColor = [UIColor whiteColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1Tapped:(UIButton *)sender {
    [sender setSelected:!sender.isSelected];
    [self.button2 setSelected:NO];
    [self.button3 setSelected:NO];
    
    [self updateButtonColors];
}

- (IBAction)button2Tapped:(UIButton *)sender {
    [sender setSelected:!sender.isSelected];
    [self.button1 setSelected:NO];
    [self.button3 setSelected:NO];

    [self updateButtonColors];
}

- (IBAction)button3Tapped:(UIButton *)sender {
    [sender setSelected:!sender.isSelected];
    [self.button1 setSelected:NO];
    [self.button2 setSelected:NO];

    [self updateButtonColors];
}

-(void)updateButtonColors {
    if (self.button1.selected) {
        [self.buttonA setTitleColor:self.selectedTitleColor forState:UIControlStateNormal];
        [self.buttonA setBackgroundColor:self.selectedBackgroundColor];
        [self.buttonE setTitleColor:self.selectedTitleColor forState:UIControlStateNormal];
        [self.buttonE setBackgroundColor:self.selectedBackgroundColor];
    } else {
        [self.buttonA setTitleColor:self.unselectedTitleColor forState:UIControlStateNormal];
        [self.buttonA setBackgroundColor:self.unselectedBackgroundColor];
        [self.buttonE setTitleColor:self.unselectedTitleColor forState:UIControlStateNormal];
        [self.buttonE setBackgroundColor:self.unselectedBackgroundColor];
    }
    
    if (self.button2.selected) {
        [self.buttonB setTitleColor:self.selectedTitleColor forState:UIControlStateNormal];
        [self.buttonB setBackgroundColor:self.selectedBackgroundColor];
        [self.buttonF setTitleColor:self.selectedTitleColor forState:UIControlStateNormal];
        [self.buttonF setBackgroundColor:self.selectedBackgroundColor];
    } else {
        [self.buttonB setTitleColor:self.unselectedTitleColor forState:UIControlStateNormal];
        [self.buttonB setBackgroundColor:self.unselectedBackgroundColor];
        [self.buttonF setTitleColor:self.unselectedTitleColor forState:UIControlStateNormal];
        [self.buttonF setBackgroundColor:self.unselectedBackgroundColor];
    }

    if (self.button3.selected) {
        [self.buttonC setTitleColor:self.selectedTitleColor forState:UIControlStateNormal];
        [self.buttonC setBackgroundColor:self.selectedBackgroundColor];
        [self.buttonD setTitleColor:self.selectedTitleColor forState:UIControlStateNormal];
        [self.buttonD setBackgroundColor:self.selectedBackgroundColor];
    } else {
        [self.buttonC setTitleColor:self.unselectedTitleColor forState:UIControlStateNormal];
        [self.buttonC setBackgroundColor:self.unselectedBackgroundColor];
        [self.buttonD setTitleColor:self.unselectedTitleColor forState:UIControlStateNormal];
        [self.buttonD setBackgroundColor:self.unselectedBackgroundColor];
    }
}

@end
