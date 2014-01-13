//
//  cropImageUsingGPUImage.m
//
//  simply using single filter to process image with GPUImageCropFilter
//

- (UIImage *)_croppedImageFromImage:(UIImage *)image
{
      GPUImageCropFilter *cropFilter = [[GPUImageCropFilter alloc] initWithCropRegion:CGRectZero];
	      
      return  [cropFilter imageByFilteringImage:image];
}
