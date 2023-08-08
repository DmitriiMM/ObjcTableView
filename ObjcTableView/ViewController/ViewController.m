//
//  ViewController.m
//  ObjcTableView
//
//  Created by Дмитрий Мартынов on 08.08.2023.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) UITableView *myTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style: UITableViewStylePlain];
    
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    [self.view addSubview: self.myTableView];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"cell"];
    if (cell == nil) {
         cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier: @"cell"];
    }
    cell.textLabel.text = @"Hallo, world!";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.myTableView.backgroundColor != UIColor.redColor) {
        self.myTableView.backgroundColor = UIColor.redColor;
    } else {
        self.myTableView.backgroundColor = UIColor.systemBackgroundColor;
    }
    
}

@end
