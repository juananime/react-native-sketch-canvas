
# react-native-sketch-canvas

React Native component for basic shapes creation.
Creation and edition of primal shapes square,triangle,cirle and lines.
The shapes are created in iOS via Quartzcore.
Pending to Android implementation.

Editable outline and fill color.


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

## Usage
In order to react the shapes modificaton with the mouse actions is advisable to use a panresponder object:
```javascript
import RNSketchCanvas from 'react-native-sketch-canvas';

   <RNSketchCanvas ref="rnCanvas" {...this._panResponder.panHandlers} canvasStyle={{fillColor:'white',outlineColor:'red'}}>
   </RNSketchCanvas>
```

RNSketchCanvas static methods for shape creation:
```javascript

drawSquare(x,y)
updateSquare(x,y)

drawTriangle(x,y)
updateTriangle(x,y)


  
```

For outline and fill color updates, call:
```javascript

updateOutlineColor('red')
updateFillColor('green')

  
```

  
