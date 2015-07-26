
#import "DKCWebviewViewController.h"

 

@implementation DKCWebviewViewController

{
    UIWebView *webView;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"ConApp";
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_back"]          
        style:UIBarButtonItemStylePlain
        target:self action:@selector(previousPage)];
    self.navigationItem.leftBarButtonItem= backButton;
    
    
    webView = [[UIWebView alloc] initWithFrame:[self.view frame]];
    [self.view addSubview:webView];
    NSURL *url = [NSURL URLWithString:@"http://dev.dukecon.org/latest/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView setScalesPageToFit:YES];
    [webView loadRequest:request];
}




- (void)previousPage
{
    NSLog(@"yeah");
}



@end
