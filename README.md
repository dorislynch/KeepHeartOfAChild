
# react-native-keep-heart-of-a-child

## Getting started

`$ npm install react-native-keep-heart-of-a-child --save`

### Mostly automatic installation

`$ react-native link react-native-keep-heart-of-a-child`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-keep-heart-of-a-child` and add `RNKeepHeartOfAChild.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNKeepHeartOfAChild.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNKeepHeartOfAChildPackage;` to the imports at the top of the file
  - Add `new RNKeepHeartOfAChildPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-keep-heart-of-a-child'
  	project(':react-native-keep-heart-of-a-child').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-keep-heart-of-a-child/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-keep-heart-of-a-child')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNKeepHeartOfAChild.sln` in `node_modules/react-native-keep-heart-of-a-child/windows/RNKeepHeartOfAChild.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Keep.Heart.Of.A.Child.RNKeepHeartOfAChild;` to the usings at the top of the file
  - Add `new RNKeepHeartOfAChildPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNKeepHeartOfAChild from 'react-native-keep-heart-of-a-child';

// TODO: What to do with the module?
RNKeepHeartOfAChild;
```
  