package com.bytedance.sdk.openadsdk.common;

import com.bytedance.sdk.openadsdk.api.PAGErrorCode;
import com.bytedance.sdk.openadsdk.api.PAGLoadListener;
import com.bytedance.sdk.openadsdk.api.factory.ISDKTypeFactory;
import com.bytedance.sdk.openadsdk.api.factory.SDKTypeConfig;
/* loaded from: classes3.dex */
public class Pfn {
    private static boolean oJ = false;

    public static void oJ(boolean z10) {
        oJ = z10;
    }

    public static ISDKTypeFactory oJ(PAGLoadListener pAGLoadListener) {
        if (oJ) {
            if (pAGLoadListener != null) {
                pAGLoadListener.onError(-1, PAGErrorCode.LOAD_SDK_DISABLE_MSG);
            }
            return null;
        }
        ISDKTypeFactory sdkTypeFactory = SDKTypeConfig.getSdkTypeFactory();
        if (sdkTypeFactory == null) {
            if (pAGLoadListener != null) {
                pAGLoadListener.onError(5000, PAGErrorCode.LOAD_FACTORY_NULL_MSG);
            }
            return null;
        }
        return sdkTypeFactory;
    }

    public static boolean oJ() {
        return oJ;
    }
}
