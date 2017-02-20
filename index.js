/**
 * Created by juanjimenez on 16/02/2017.
 * Otomogroove ltd 2017
 */

'use strict';
import React, {Component, PropTypes} from 'react';
var {

    NativeModules,
    Platform,
    DeviceEventEmitter,
    TouchableHighlight,
    processColor,
    StyleSheet,
    View,
    requireNativeComponent
} = require('react-native');



var CanvasSketch = NativeModules.RNSketchCanvasManager;


const RNSketchCanvas = React.createClass({
    propTypes: {
        ...View.propTypes,
        canvasStyle:PropTypes.shape({
            outlineColor: React.PropTypes.string,
            fillColor: React.PropTypes.string
        }),

    },
    getDefaultProps() {
        return {
            canvasStyle:{
                outlineColor:'white',
                fillColor:'black',
                },
        };
    },
    drawLine: function(posX){
        CanvasSketch.drawLine(posX);
    },
    drawTriangle:function(PosX,PosY) {
        console.log('drawTriangle sending x '+PosX + '  Y :; '+PosY);
       CanvasSketch.drawTriangle(PosX,PosY);
    },
    updateTriangle:function(PosX,PosY) {
        console.log('updateTriangle sending x '+PosX + '  Y :; '+PosY);
       CanvasSketch.updateTriangle(PosX,PosY);
    },
    drawSquare:function(PosX,PosY) {

        CanvasSketch.drawSquare(PosX,PosY);
      //
    },
    updateSquare:function(PosX,PosY) {

        CanvasSketch.updateSquare(PosX,PosY);
        //
    },
    updateOutlineColor:function(color) {
        console.log('updateOutlineColor :: '+color);
        CanvasSketch.updateOutlineColor(processColor(color));
        //
    },
    updateFillColor:function(color) {

        console.log('updateFillColor :: '+color);
        CanvasSketch.updateFillColor(processColor(color));

    },
    componentDidMount:function() {

    },



    render: function () {



        const nativeProps = Object.assign({}, this.props);
        Object.assign(nativeProps, {
            canvasStyle:{
                outlineColor:processColor(this.props.canvasStyle.outlineColor),
                fillColor:processColor(this.props.canvasStyle.fillColor),
            },

        })


        return (
            <RNSketchCanvasView {...nativeProps} />
        );

    }

});

var RNSketchCanvasView = requireNativeComponent('RNSketchCanvas', RNSketchCanvas);


module.exports = RNSketchCanvas;
