package com.mbridge.msdk.mbsignalcommon.webEnvCheck;

import android.content.Context;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.setting.util.b;
/* loaded from: classes4.dex */
public class WebEnvCheckEntry {
    public void check(Context context) {
        WindVaneWebView windVaneWebView = new WindVaneWebView(context);
        windVaneWebView.loadDataWithBaseURL(null, "<html><script>" + b.c().d() + "</script></html>", "text/html", "utf-8", null);
    }
}
