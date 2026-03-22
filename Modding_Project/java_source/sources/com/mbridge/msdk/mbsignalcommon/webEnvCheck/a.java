package com.mbridge.msdk.mbsignalcommon.webEnvCheck;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbsignalcommon.base.b;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
/* compiled from: MBWebViewChecker.java */
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile Boolean f28214a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile Handler f28215b;

    /* renamed from: c  reason: collision with root package name */
    private static Boolean f28216c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MBWebViewChecker.java */
    /* renamed from: com.mbridge.msdk.mbsignalcommon.webEnvCheck.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class RunnableC0399a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f28217a;

        RunnableC0399a(Context context) {
            this.f28217a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.f28214a == null) {
                try {
                    Boolean unused = a.f28214a = Boolean.valueOf(a.a(this.f28217a));
                } catch (Exception unused2) {
                    Boolean unused3 = a.f28214a = Boolean.FALSE;
                }
            }
        }
    }

    public static boolean b(Context context) {
        g gVar;
        try {
            gVar = h.b().b(c.m().b());
        } catch (Exception unused) {
            gVar = null;
        }
        if (gVar != null) {
            f28216c = Boolean.valueOf(gVar.C0());
        } else {
            f28216c = Boolean.FALSE;
        }
        Boolean bool = f28216c;
        if (bool == null || !bool.booleanValue()) {
            return true;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            if (f28214a == null) {
                try {
                    f28214a = Boolean.valueOf(a(context));
                } catch (Exception unused2) {
                    f28214a = Boolean.FALSE;
                }
            }
            if (f28214a == null) {
                f28214a = new Boolean(false);
            }
            return f28214a.booleanValue();
        }
        if (f28214a == null && f28215b == null) {
            f28215b = new Handler(Looper.getMainLooper());
            f28215b.post(new RunnableC0399a(context));
        }
        if (f28214a == null) {
            return true;
        }
        return f28214a.booleanValue();
    }

    public static boolean a(Context context) {
        WebView webView;
        try {
            webView = new WebView(context);
            webView.setWebViewClient(new b());
        } catch (Exception unused) {
            webView = null;
        }
        if (webView != null) {
            a(webView);
            return true;
        }
        return false;
    }

    private static void a(WebView webView) {
        try {
            webView.destroy();
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("MBWebViewChecker", "destroy webview error", e10);
            }
        }
    }
}
