package com.bytedance.sdk.openadsdk.utils;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* loaded from: classes3.dex */
public class XAo {
    private static String oJ;

    public static String ZYk() {
        if (TextUtils.isEmpty(oJ)) {
            oJ = new String(Base64.decode("ZGV2aWNlX2lk", 0));
        }
        return oJ;
    }

    public static boolean oJ() {
        return com.bytedance.sdk.component.utils.awB.ex() && com.bytedance.sdk.openadsdk.core.jFA.ZYk().si() && com.bytedance.sdk.openadsdk.core.jFA.ZYk().RZ();
    }

    public static boolean tB() {
        return false;
    }

    public static String oJ(String str) {
        try {
            if (oJ()) {
                String QSm = com.bytedance.sdk.openadsdk.core.jFA.ZYk().QSm();
                if (TextUtils.isEmpty(QSm)) {
                    return str;
                }
                Log.d("TestHelperUtils", "AnyDoorId=".concat(String.valueOf(QSm)));
                return Uri.parse(str).buildUpon().appendQueryParameter(ZYk(), QSm).appendQueryParameter(TTVideoEngineInterface.PLAY_API_KEY_APPID, "5001121").toString();
            }
            return str;
        } catch (Throwable unused) {
            return str;
        }
    }
}
