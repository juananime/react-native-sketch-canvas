using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Com.Reactlibrary.RNSketchCanvas
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNSketchCanvasModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNSketchCanvasModule"/>.
        /// </summary>
        internal RNSketchCanvasModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNSketchCanvas";
            }
        }
    }
}
