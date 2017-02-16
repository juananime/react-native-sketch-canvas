/**
 * Created by juanjimenez on 16/02/2017.
 * Otomogroove ltd 2017
 */

'use strict';
import React, {Component, PropTypes} from 'react';
var {
    Platform,
    DeviceEventEmitter,
    TouchableHighlight,
    processColor,
    StyleSheet,
    View,
    requireNativeComponent
} = require('react-native');








const RNSketchCanvas = React.createClass({
    propTypes: {
        ...View.propTypes,
        autoPlay:React.PropTypes.bool,
        waveFormStyle:PropTypes.shape({
            waveColor: React.PropTypes.string,
            scrubColor: React.PropTypes.string
        }),
        componentID:PropTypes.string,
        src: PropTypes.shape({
            uri: PropTypes.string,
            isNetwork: PropTypes.bool,
            isAsset:PropTypes.bool,
        }),
        source: PropTypes.oneOfType([
            PropTypes.shape({
                uri: PropTypes.string
            }),
            // Opaque type returned by require('./video.mp4')
            PropTypes.number
        ]),
        play:PropTypes.bool,
        stop:PropTypes.bool,
        pause:PropTypes.bool,
        onPress:PropTypes.func,
        pressed:PropTypes.bool,





    },

    componentWillMount: function() {


    },



    render: function () {
        const source = resolveAssetSource(this.props.source) || {};

        let uri = source.uri;
        if (uri && uri.match(/^\//)) {
            uri = `file://${uri}`;
        }


        const isNetwork = !!(uri && uri.match(/^https?:/));
        const isAsset = !!(uri && uri.match(/^(assets-library|file|content|ms-appx|ms-appdata):/));


        //this.props.waveFormStyle.leftWaveColor=processColor(this.props.waveFormStyle.leftWaveColor)
        //this.props.waveFormStyle.rightWaveColor=processColor(this.props.waveFormStyle.rightWaveColor)


        const nativeProps = Object.assign({}, this.props);
        Object.assign(nativeProps, {
            autoPlay:this.props.autoPlay,
            waveFormStyle:{
                waveColor:processColor(this.props.waveFormStyle.waveColor),
                scrubColor:processColor(this.props.waveFormStyle.scrubColor),
            },

            src: {
                uri:uri,
                isNetwork:isNetwork,
                isAsset:isAsset,
                type: source.type,
                mainVer: source.mainVer || 0,
                patchVer: source.patchVer || 0,
            },
            componentID:this.state.componentID,

        });


        return <RNSketchCanvas {...nativeProps} />;
    }

});

var RNSketchCanvas = requireNativeComponent('RNSketchCanvas', RNSketchCanvas);


module.exports = RNSketchCanvas;
