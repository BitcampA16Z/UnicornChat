/*
    Copyright (C) 2016 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    The main entry point to the Intents extension.
*/

import Intents

class UCIntentsHandler: INExtension {

    override func handler(for intent: INIntent) -> AnyObject? {
        if intent is INSendMessageIntent {
            return UCSendMessageIntentHandler()
        }

        
        func handler1( for intent: INIntent) -> AnyObject? {
            var isSendMessageIntent: Boolean;
            var sendMessageIntent : INSendMessageIntent;
            
            
            
            
        }
        
        
        
        @implementation INIntent (UnicornCore)
        
        - (BOOL)isSendMessageIntent {
            return NO;
            }
            
            - (INSendMessageIntent *)sendMessageIntent {
                return nil;
        }
        
        @end
        
        @implementation INSendMessageIntent (UnicornCore)
        
        - (BOOL)isSendMessageIntent {
            return YES;
            }
            
            - (INSendMessageIntent *)sendMessageIntent {
                return self;
        }
        
        @end
        
        @implementation INInteraction (UnicornCore)
        
        - (BOOL)representsSendMessageIntent {
            return [[self intent] isSendMessageIntent];
            }
            
            - (NSString *)messageContent {
                return [[[self intent] sendMessageIntent] content];
                }
                
                - (NSString *)recipientName {
                    return [[[[[self intent] sendMessageIntent] recipients] firstObject] displayName];
        }
        
        @end

        
        
        
        return nil
    }
}
