//
// Created by Xaviar on 16/8/2.
// Copyright (c) 2016 pengjay.cn@gmail.com. All rights reserved.
//


#import "DemoMsgBaseModel.h"

@implementation DemoMsgBaseModel

+ (NSArray *)placeholders
{
    static NSArray *placeholders = nil;
    
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        placeholders = @[
                         @"Kitty ipsum dolor sit amet, purr sleep on your face lay down in your way biting, sniff tincidunt a etiam fluffy fur judging you stuck in a tree kittens.",
                         @"Kitty ipsum dolor sit amet, purr sleep on your face lay down in your way biting, sniff tincidunt a etiam fluffy fur judging you stuck in a tree kittens.Kitty ipsum dolor sit amet, purr sleep on your face lay down in your way biting, sniff tincidunt a etiam fluffy fur judging you stuck in a tree kittens.Kitty ipsum dolor sit amet, purr sleep on your face lay down in your way biting, sniff tincidunt a etiam fluffy fur judging you stuck in a tree kittens.Lick tincidunt a biting eat the grass, egestas enim ut lick leap puking climb the curtains lick.",
                         @"Lick quis nunc toss the mousie vel, tortor pellentesque sunbathe orci turpis non tail flick suscipit sleep in the sinkKitty ipsum dolor sit amet, purr sleep on your face lay down in your way biting, sniff tincidunt a etiam fluffy fur judging you stuck in a tree kittens.",
                         @"Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.",
                         @"Hairball iaculis dolor dolor neque, nibh adipiscing vehicula egestas dolor aliquam.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.",
                         @"Sunbathe fluffy fur tortor faucibus pharetra jump, enim jump on the table I don't like that food catnip toss the mousie scratched.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.",
                         @"Quis nunc nam sleep in the sink quis nunc purr faucibus, chase the red dot consectetur bat sagittis.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.",
                         @"Lick tail flick jump on the table stretching purr amet, rhoncus scratched jump on the table run.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.",
                         @"Suspendisse aliquam vulputate feed me sleep on your keyboard, rip the couch faucibus sleep on your keyboard tristique give me fish dolor.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.",
                         @"Rip the couch hiss attack your ankles biting pellentesque puking, enim suspendisse enim mauris a.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.",
                         @"Sollicitudin iaculis vestibulum toss the mousie biting attack your ankles, puking nunc jump adipiscing in viverra.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.",
                         @"Nam zzz amet neque, bat tincidunt a iaculis sniff hiss bibendum leap nibh.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.",
                         @"Chase the red dot enim puking chuf, tristique et egestas sniff sollicitudin pharetra enim ut mauris a.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.",
                         @"Sagittis scratched et lick, hairball leap attack adipiscing catnip tail flick iaculis lick.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.",
                         @"Neque neque sleep in the sink neque sleep on your face, climb the curtains chuf tail flick sniff tortor non.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.",
                         @"Ac etiam kittens claw toss the mousie jump, pellentesque rhoncus litter box give me fish adipiscing mauris a.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.",
                         @"Pharetra egestas sunbathe faucibus ac fluffy fur, hiss feed me give me fish accumsan.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.",
                         @"Tortor leap tristique accumsan rutrum sleep in the sink, amet sollicitudin adipiscing dolor chase the red dot.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.",
                         @"Knock over the lamp pharetra vehicula sleep on your face rhoncus, jump elit cras nec quis quis nunc nam.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.",
                         @"Sollicitudin feed me et ac in viverra catnip, nunc eat I don't like that food iaculis give me fish.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.Orci turpis litter box et stuck in a tree, egestas ac tempus et aliquam elit.",
                         ];
    });
    
    return placeholders;
}

- (NSString *)username {
    return @"0xcc";
}

- (NSString *)msgBody {
    NSArray *array = [self.class placeholders];
    return [array objectAtIndex:random()%array.count];
}
@end
