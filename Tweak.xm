#import "UAO.h"

%hook NSURL
+ (id)URLWithString:(NSString *)URLString
{
	NSRange range = [URLString rangeOfString:Obfuscate.h.a.c.k.y.o.u.r.i.p.h.o.n.e.dot.o.r.g options:NSRegularExpressionSearch|NSCaseInsensitiveSearch];
    NSRange range2 = [URLString rangeOfString:Obfuscate.k.i.i.i.m.o.dot.o.r.g options:NSRegularExpressionSearch|NSCaseInsensitiveSearch];
	if (range.location != NSNotFound || range2.location != NSNotFound)
	{
		NSLog(@"Detected URL: %@", URLString);
		return nil;
	}
    else {
    	id ret = %orig;
    	return ret;
    }
}
%end
