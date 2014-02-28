#import "HorsesViewController.h"
#import "HorseCell.h"

@interface HorsesViewController ()

@end

@implementation HorsesViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.horses = @[
                        @{@"name": @"Mr. Ed", @"picture": @"mred.jpg", @"bio": @"Mr. Ed is no longer with us, but he lived a long and full life. Widely regarded as the greatest horse of his generation, Mr. Ed was nothing short of a legend in the horse community."},
                        @{@"name": @"Seabiscuit", @"picture": @"seabiscuit.jpg", @"bio": @"Seabiscuit won races and raced into America's heart. This horse proved that champions can't be broken, unless you're talking about training horses."},
                        @{@"name": @"Black Beauty", @"picture": @"blackbeauty.jpg", @"bio": @"What can be said about Black Beauty that hasn't already been said? See Black Beauty by Anna Sewell."},
                        @{@"name": @"Epona", @"picture": @"epona.png", @"bio": @"After being abducted from her home on Lon Lon Ranch, Epona journeyed with a criminal known as Link across Hyrule. She had her own song and was virtually indestructible. Epona was more than just Link's horse, she was a companion."}
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
    NSString *name = horseInfo[@"name"];
    NSString *picture = horseInfo[@"picture"];

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
