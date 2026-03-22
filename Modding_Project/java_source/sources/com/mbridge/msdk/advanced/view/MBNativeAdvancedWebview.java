package com.mbridge.msdk.advanced.view;

import android.content.Context;
import android.content.IntentFilter;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.mbridge.msdk.advanced.common.NetWorkStateReceiver;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
/* loaded from: classes4.dex */
public class MBNativeAdvancedWebview extends WindVaneWebView {

    /* renamed from: t  reason: collision with root package name */
    private static final String f25941t = "MBNativeAdvancedWebview";

    /* renamed from: r  reason: collision with root package name */
    private AdSession f25942r;

    /* renamed from: s  reason: collision with root package name */
    private NetWorkStateReceiver f25943s;

    public MBNativeAdvancedWebview(Context context) {
        super(context);
        setBackgroundColor(0);
    }

    public void finishAdSession() {
        try {
            AdSession adSession = this.f25942r;
            if (adSession != null) {
                adSession.finish();
                this.f25942r = null;
                p0.a("OMSDK", "finish adSession");
            }
        } catch (Exception e10) {
            p0.a("OMSDK", e10.getMessage());
        }
    }

    public AdSession getAdSession() {
        return this.f25942r;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        registerNetWorkReceiver();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        unregisterNetWorkReceiver();
    }

    public void registerNetWorkReceiver() {
        try {
            if (this.f25943s == null) {
                this.f25943s = new NetWorkStateReceiver(this);
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            getContext().registerReceiver(this.f25943s, intentFilter);
        } catch (Throwable th2) {
            p0.a(f25941t, th2.getMessage());
        }
    }

    public void setAdSession(AdSession adSession) {
        this.f25942r = adSession;
    }

    public void unregisterNetWorkReceiver() {
        try {
            NetWorkStateReceiver netWorkStateReceiver = this.f25943s;
            if (netWorkStateReceiver != null) {
                netWorkStateReceiver.a();
                getContext().unregisterReceiver(this.f25943s);
            }
        } catch (Throwable th2) {
            p0.a(f25941t, th2.getMessage());
        }
    }
}
