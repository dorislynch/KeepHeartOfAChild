using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Keep.Heart.Of.A.Child.RNKeepHeartOfAChild
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNKeepHeartOfAChildModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNKeepHeartOfAChildModule"/>.
        /// </summary>
        internal RNKeepHeartOfAChildModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNKeepHeartOfAChild";
            }
        }
    }
}
