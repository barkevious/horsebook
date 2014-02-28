#import "HorsesViewController.h"
#import "HorseCell.h"
#import "HorseDetailsViewController.h"

@interface HorsesViewController ()

@end

@implementation HorsesViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.horses = @[
                        @{@"name": @"Mr. Ed", @"picture": @"mred.jpg", @"bio": @"Mr. Ed is no longer with us, but he lived a long and full life. Often referred to as the greatest horse of his generation, Mr. Ed was nothing short of a legend in the horse community."},
                        @{@"name": @"Seabiscuit", @"picture": @"seabiscuit.jpg", @"bio": @"Seabiscuit won races and raced into America's heart."},
                        @{@"name": @"Black Beauty", @"picture": @"blackbeauty.jpg", @"bio": @"What can be said about Black Beauty that hasn't already been said?"},
                        @{@"name": @"Epona", @"picture": @"epona.png", @"bio": @"Epona was more than just Link's horse."},
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
    horseCell.horseInfo = horseInfo;
    NSString *name = [horseInfo valueForKey:@"name"];
    NSString *picture = [horseInfo valueForKey:@"picture"];

    horseCell.name.text = name;
    horseCell.picture.image = [UIImage imageNamed:picture];

    return horseCell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    HorseCell *horseCell = sender;
    HorseDetailsViewController *horseDetailsViewController = [segue destinationViewController];

    horseDetailsViewController.horseInfo = horseCell.horseInfo;
}

@end
