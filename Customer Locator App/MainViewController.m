//
//  MainViewController.m
//  Customer Locator App
//
//  Created by MBPinTheAir on 04/05/2016.
//  Copyright © 2016 moorsideinc. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (strong, nonatomic)NSArray *customerJSONArray;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _customerList = [[NSMutableArray alloc]initWithCapacity:0];
    
    [self getAndloadJSON];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)getAndloadJSON{
    
    NSString *theJsonURL = @"http://jsonplaceholder.typicode.com/users";
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *jsonData = [session dataTaskWithURL:[NSURL URLWithString:theJsonURL] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSError *jsonError;
        NSArray *customerJSONArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&jsonError];
        NSLog(@" jason array uphere is %@", customerJSONArray);
        if   (!jsonError){
            
            //something wrong round here... (lldb) po self.customerList
          //  <__NSArrayM 0x7faf3944cc70>(.
            
            //(lldb) po newCustomerObject.email
          //  Sincere@april.biz
        
            for (NSMutableDictionary *aDict in customerJSONArray) {
            AOACustomer *newCustomerObject = [[AOACustomer alloc]init];
            
            newCustomerObject.name = aDict[@"name"];
            newCustomerObject.email = aDict[@"email"];
            newCustomerObject.phoneNumber = aDict[@"phone"];
            newCustomerObject.userid = aDict[@"id"];
            newCustomerObject.username = aDict[@"username"];
            newCustomerObject.address = aDict[@"address"];
            newCustomerObject.website = aDict[@"website"];
            newCustomerObject.company = aDict[@"company"];
            
            [self.customerList addObject:newCustomerObject];
            dispatch_async(dispatch_get_main_queue(), ^{[self.tableView reloadData];});
            
            }
            NSLog(@" customerslist downhere is %@", self.customerList);

        }
    }];
    
    [jsonData resume];
}

#pragma tableview


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.customerList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CellView *theCell = (CellView *)[tableView dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:indexPath];
    
    
    AOACustomer *newCustomer = self.customerList[indexPath.row];
    
    //number formatter acting up revisit Goodnight
    
//    NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
//    formatter.numberStyle = NSNumberFormatterBehaviorDefault;
//                                     
//    NSString *numberString = [formatter stringFromNumber:newCustomer.phoneNumber];
    
    theCell.phoneLabel.text = newCustomer.phoneNumber;
    theCell.emailLabel.text = newCustomer.email;
    theCell.nameLabel.text = newCustomer.name;

    
    return theCell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
 
*/

@end
