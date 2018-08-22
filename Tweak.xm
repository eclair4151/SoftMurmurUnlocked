%hook NSString
	+ (NSString *)stringWithContentsOfFile:(NSString *)path   usedEncoding:(NSStringEncoding *)enc error:(NSError * _Nullable *)error {
		NSString *content = %orig;
		return [content stringByReplacingOccurrencesOfString:@"\"locked\":true" withString:@"\"locked\":false"];
	}
%end