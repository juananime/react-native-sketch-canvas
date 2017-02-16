
# react-native-sketch-canvas

## Getting started

`$ npm install react-native-sketch-canvas --save`

### Mostly automatic installation

`$ react-native link react-native-sketch-canvas`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-sketch-canvas` and add `RNSketchCanvas.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNSketchCanvas.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNSketchCanvasPackage;` to the imports at the top of the file
  - Add `new RNSketchCanvasPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-sketch-canvas'
  	project(':react-native-sketch-canvas').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-sketch-canvas/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-sketch-canvas')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNSketchCanvas.sln` in `node_modules/react-native-sketch-canvas/windows/RNSketchCanvas.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Cl.Json.RNSketchCanvas;` to the usings at the top of the file
  - Add `new RNSketchCanvasPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNSketchCanvas from 'react-native-sketch-canvas';

// TODO: What do with the module?
RNSketchCanvas;
```
  