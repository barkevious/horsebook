#import "HorsesViewController.h"
#import "HorseCell.h"

@interface HorsesViewController ()

@end

@implementation HorsesViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.horses = @[
                        @{@"name": @"Mr. Ed", @"picture": @"mred.jpg"},
                        @{@"name": @"Seabiscuit", @"picture": @"seabiscuit.jpg"},
                        @{@"name": @"Black Beauty", @"picture": @"blackbeauty.jpg"},
                        @{@"name": @"Epona", @"picture": @"epona.png"},
                        ];
    }
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.horses.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Horse";
    HorseCell *horseCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    NSDictionary *horseInfo = self.horses[indexPath.row];
    NSString *name = [horseInfo valueForKey:@"name"];
    NSString *picture = [horseInfo valueForKey:@"picture"];

    horseCell.name.text = name;
    horseCell.picture.image = [UIImage imageNamed:picture];

    return horseCell;
}

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
