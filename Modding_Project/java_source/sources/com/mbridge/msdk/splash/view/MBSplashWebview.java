package com.mbridge.msdk.splash.view;

import android.content.Context;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
/* loaded from: classes6.dex */
public class MBSplashWebview extends WindVaneWebView {

    /* renamed from: r  reason: collision with root package name */
    private String f29415r;

    /* renamed from: s  reason: collision with root package name */
    private AdSession f29416s;

    public MBSplashWebview(Context context) {
        super(context);
        setBackgroundColor(0);
    }

    public void finishAdSession() {
        try {
            AdSession adSession = this.f29416s;
            if (adSession != null) {
                adSession.finish();
                this.f29416s = null;
                p0.a("OMSDK", "finish adSession");
            }
        } catch (Exception e10) {
            p0.a("OMSDK", e10.getMessage());
        }
    }

    public AdSession getAdSession() {
        return this.f29416s;
    }

    public String getRequestId() {
        return this.f29415r;
    }

    public void setAdSession(AdSession adSession) {
        this.f29416s = adSession;
    }

    public void setRequestId(String str) {
        this.f29415r = str;
    }
}
