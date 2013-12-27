// 
// singleton_arc.m
//
// Create singleton in ARC mode is more simple than old fashion
//

+ (<#Class#> *)shared<#Instance#>
{
  static <#Class#> *shared<#Instance#> = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
	  shared<#Instance#> = [[<#Class#>  alloc] init];
	  // Do any other initialisation stuff here
	  <#code#>
	  });
  return shared<#Instance#>;
}
