package com.bytedance.sdk.openadsdk.api.factory;

import android.util.Log;
/* loaded from: classes3.dex */
public class SDKTypeConfig {
    private static ISDKTypeFactory oJ;

    public static ISDKTypeFactory getSdkTypeFactory() {
        Log.i("SDKTypeConfig", "getSdkTypeFactory: ");
        return oJ;
    }

    public static void setSdkTypeFactory(ISDKTypeFactory iSDKTypeFactory) {
        Log.i("SDKTypeConfig", "setSdkTypeFactory: ");
        oJ = iSDKTypeFactory;
    }
}
