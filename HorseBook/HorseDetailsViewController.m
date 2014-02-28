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

    self.navigationItem.title = [self.horseInfo valueForKey:@"name"];
    self.picture.image = [UIImage imageNamed:[self.horseInfo valueForKey:@"picture"]];
    self.bio.text = [self.horseInfo valueForKey:@"bio"];
}

@end
