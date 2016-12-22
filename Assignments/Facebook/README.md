## Facebook

The purpose of this homework is to leverage animations and gestures to transition between screens. We're going to use the techniques from this week to implement some interactions in Facebook.

Time spent: `<12>`

### Features

#### Required

- [X] Tapping on a photo in the news feed should expand the photo full screen.
- [X] Tapping the Done button should animate the photo back into its position in the news feed.
- [ ] On scroll of the full screen photo, the background should start to become transparent, revealing the feed.
- [ ] If the user scrolls a large amount and releases, the full screen photo should dismiss.

#### Optional

- [ ] The full screen photo should be zoomable.
- [ ] The user should be able to page through the other photos in full screen mode.


Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. How do you prevent the photo from jumping at the beginning of the custom transition?
2. How do you do the scroll parts at all?

### Video Walkthrough 

Here's a walkthrough of implemented user stories:

![Facebook Demo](Facebook Demo.gif)



GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Could not figure out how to fit the photo on the screen without either 1) clipping it off or 2) distorting the proportion. Decided clipping it looked better than distorting.

Could not figure out how to adjust for the different origins of the photo which causes the photo to jump during the transition. I thought the window convert thing was supposed to fix that.

Did not understand how the Adding Views to the Window guide fit with this assignment.

Could not figure out how to get either required scrolling feature to work. If the scrollView.contentSize is equal to the size of the photo, then how is there anything to scroll? None of the photos height are greater than the height of the screen.
