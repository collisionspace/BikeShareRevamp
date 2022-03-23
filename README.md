# BikeShareRevamp

Originally started as a way to test and play around with new ideas floating around

A SwiftUI version of this that is influx
https://github.com/collisionspace/PlayingWithSwiftUI

Things to do
- Remove nibs and move to programmatic UI
- Add dynamic type to support a11y
- UI tests
- Show error alerts
- Bring in networking update that uses async/await from the SwiftUI repo

So this project has 2 tabs that shows bike share cities. First tab is a list of it and the second tab is a map with annotations. 

The architecture is Clean Swift. The setup utilizies a ViewScene & TabScene which creates a View per tab. Also takes advantage of protocols to allow for depedency injection and mocking. Created a TextTheme property wrapper for allowing ease of use for styling UI, need to update this to allow for dynamic type. Dark mode is support as well.
