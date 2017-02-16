using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Com.Reactlibrary.RNReactNativeRNcanvas
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNReactNativeRNcanvasModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNReactNativeRNcanvasModule"/>.
        /// </summary>
        internal RNReactNativeRNcanvasModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNReactNativeRNcanvas";
            }
        }
    }
}
