#ifdef DEBUG
#define FFLog(...) NSLog(__VA_ARGS__)
#else
#define FFLog(...)
#endif

#define FFColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define FFGlobalBg FFColor(230, 230, 230)