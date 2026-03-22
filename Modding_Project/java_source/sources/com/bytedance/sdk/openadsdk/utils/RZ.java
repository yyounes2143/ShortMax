package com.bytedance.sdk.openadsdk.utils;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
/* loaded from: classes3.dex */
public class RZ {
    public static void oJ(Uri uri, com.bytedance.sdk.openadsdk.core.UN un2) {
        if (un2 == null || !un2.oJ(uri)) {
            return;
        }
        try {
            un2.ZYk(uri);
        } catch (Exception e10) {
            e10.toString();
        }
    }

    public static String oJ(WebView webView, int i10) {
        if (webView == null) {
            return "";
        }
        String userAgentString = webView.getSettings().getUserAgentString();
        if (TextUtils.isEmpty(userAgentString)) {
            return "";
        }
        return userAgentString + " open_news open_news_u_s/" + i10;
    }
}
