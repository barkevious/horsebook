#import "HorseDetailsViewController.h"

@interface HorseDetailsViewController ()

@end

@implementation HorseDetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    self.navigationItem.title = self.horseInfo[@"name"];
    self.picture.image = [UIImage imageNamed:self.horseInfo[@"picture"]];
    self.bio.text = self.horseInfo[@"bio"];
}

@end
