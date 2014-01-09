//
//  fetchAlbumsAndPictures.m
//
//  You should import AssetsLibrary framework to use this piece of code
//
//  Further refs to read - 
//      ALAssetsLibrary
//      ALAssetsGroup
//      ALAsset
//

ALAssetsLibrary *library = [[ALAssetsLibrary alloc] init];

[library enumerateGroupsWithTypes:ALAssetsGroupSavedPhotos | ALAssetsGroupAlbum
                       usingBlock:^(ALAssetsGroup *group, BOOL *stop) {

                           // There is a nil group at the end, check it before using

					       if(group != nil) {

							   // the group here is the album in the user's devices.
							   // you can access properties by calling valueForProperty: method
							   // the attribute is NSString type, please check out ALAssetsGroupPropertyType for usage

							   [group enumerateAssetsUsingBlock:^(ALAsset *result, NSUInteger index, BOOL *stop) {
							       
								   // the result here is the photo or the video the group
							       // you can access properties by calling valueForProperty: method also
								   // the attribute type is NSString, please check ALAssetProperty for usage

							   }];
                           }
                       }
                     failureBlock:^(NSError *error) {
				         NSLog(@"Error: %@",[error localizedDescription];
			         }];
