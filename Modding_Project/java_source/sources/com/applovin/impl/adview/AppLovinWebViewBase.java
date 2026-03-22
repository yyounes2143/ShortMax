package com.applovin.impl.adview;

import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.applovin.impl.o0;
/* loaded from: classes2.dex */
public class AppLovinWebViewBase extends WebView {
    public AppLovinWebViewBase(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void applySettings(com.applovin.impl.sdk.ad.b bVar) {
        Boolean m10;
        loadUrl("about:blank");
        int w02 = bVar.w0();
        if (w02 >= 0) {
            setLayerType(w02, null);
        }
        getSettings().setMediaPlaybackRequiresUserGesture(bVar.M());
        if (bVar.P0()) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        m x02 = bVar.x0();
        if (x02 != null) {
            WebSettings settings = getSettings();
            WebSettings.PluginState b10 = x02.b();
            if (b10 != null) {
                settings.setPluginState(b10);
            }
            Boolean e10 = x02.e();
            if (e10 != null) {
                settings.setAllowFileAccess(e10.booleanValue());
            }
            Boolean i10 = x02.i();
            if (i10 != null) {
                settings.setLoadWithOverviewMode(i10.booleanValue());
            }
            Boolean q10 = x02.q();
            if (q10 != null) {
                settings.setUseWideViewPort(q10.booleanValue());
            }
            Boolean d10 = x02.d();
            if (d10 != null) {
                settings.setAllowContentAccess(d10.booleanValue());
            }
            Boolean p10 = x02.p();
            if (p10 != null) {
                settings.setBuiltInZoomControls(p10.booleanValue());
            }
            Boolean h10 = x02.h();
            if (h10 != null) {
                settings.setDisplayZoomControls(h10.booleanValue());
            }
            Boolean l10 = x02.l();
            if (l10 != null) {
                settings.setSaveFormData(l10.booleanValue());
            }
            Boolean c10 = x02.c();
            if (c10 != null) {
                settings.setGeolocationEnabled(c10.booleanValue());
            }
            Boolean j10 = x02.j();
            if (j10 != null) {
                settings.setNeedInitialFocus(j10.booleanValue());
            }
            Boolean f10 = x02.f();
            if (f10 != null) {
                settings.setAllowFileAccessFromFileURLs(f10.booleanValue());
            }
            Boolean g10 = x02.g();
            if (g10 != null) {
                settings.setAllowUniversalAccessFromFileURLs(g10.booleanValue());
            }
            Boolean o10 = x02.o();
            if (o10 != null) {
                settings.setLoadsImagesAutomatically(o10.booleanValue());
            }
            Boolean n10 = x02.n();
            if (n10 != null) {
                settings.setBlockNetworkImage(n10.booleanValue());
            }
            if (o0.e()) {
                Integer a10 = x02.a();
                if (a10 != null) {
                    settings.setMixedContentMode(a10.intValue());
                }
                if (o0.f()) {
                    Boolean k10 = x02.k();
                    if (k10 != null) {
                        settings.setOffscreenPreRaster(k10.booleanValue());
                    }
                    if (o0.k() && (m10 = x02.m()) != null) {
                        settings.setAlgorithmicDarkeningAllowed(m10.booleanValue());
                    }
                }
            }
        }
    }
}
