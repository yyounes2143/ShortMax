package com.mbridge.msdk.mbsignalcommon.windvane;

import android.content.Context;
import com.mbridge.msdk.interstitial.signalcommon.interstitial;
import com.mbridge.msdk.mbsignalcommon.communication.BannerSignalPlugin;
import com.mbridge.msdk.mbsignalcommon.mraid.MraidSignalCommunication;
import com.mbridge.msdk.mbsignalcommon.webEnvCheck.WebGLCheckSignal;
import com.mbridge.msdk.splash.signal.SplashSignal;
import com.mbridge.msdk.video.signal.communication.RewardSignal;
import com.mbridge.msdk.video.signal.communication.VideoCommunication;
import java.util.HashMap;
/* compiled from: WindVaneApiManager.java */
/* loaded from: classes4.dex */
public class e {

    /* renamed from: d  reason: collision with root package name */
    private static HashMap<String, Class> f28257d = new HashMap<>();

    /* renamed from: a  reason: collision with root package name */
    private Context f28258a;

    /* renamed from: b  reason: collision with root package name */
    private Object f28259b;

    /* renamed from: c  reason: collision with root package name */
    private WindVaneWebView f28260c;

    public e(Context context, WindVaneWebView windVaneWebView) {
        this.f28258a = context;
        this.f28260c = windVaneWebView;
        a();
    }

    public void a(Context context) {
        this.f28258a = context;
    }

    public void a(Object obj) {
        this.f28259b = obj;
    }

    private Object a(String str, WindVaneWebView windVaneWebView, Context context) {
        Class cls = f28257d.get(str);
        if (cls != null) {
            try {
                if (g.class.isAssignableFrom(cls)) {
                    g gVar = (g) cls.newInstance();
                    gVar.initialize(context, windVaneWebView);
                    gVar.initialize(this.f28259b, windVaneWebView);
                    return gVar;
                }
                return null;
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public void a(String str, Class cls) {
        if (f28257d == null) {
            f28257d = new HashMap<>();
        }
        f28257d.put(str, cls);
    }

    public Object a(String str) {
        if (f28257d == null) {
            f28257d = new HashMap<>();
        }
        return a(str, this.f28260c, this.f28258a);
    }

    public void a() {
        try {
            int i10 = interstitial.f27642i;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f28130a, interstitial.class);
        } catch (ClassNotFoundException unused) {
        }
        try {
            int i11 = RewardSignal.f31203i;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f28131b, RewardSignal.class);
        } catch (ClassNotFoundException unused2) {
        }
        try {
            int i12 = VideoCommunication.f31229j;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f28132c, VideoCommunication.class);
        } catch (ClassNotFoundException unused3) {
        }
        try {
            int i13 = MraidSignalCommunication.f28201h;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f28134e, MraidSignalCommunication.class);
        } catch (ClassNotFoundException unused4) {
        }
        try {
            int i14 = BannerSignalPlugin.f28189i;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f28135f, BannerSignalPlugin.class);
        } catch (ClassNotFoundException unused5) {
        }
        try {
            int i15 = SplashSignal.f29301i;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f28136g, SplashSignal.class);
        } catch (ClassNotFoundException unused6) {
        }
        try {
            int i16 = WebGLCheckSignal.f28213g;
            a(com.mbridge.msdk.mbsignalcommon.base.e.f28137h, WebGLCheckSignal.class);
        } catch (ClassNotFoundException unused7) {
        }
        try {
            if (com.mbridge.msdk.util.b.a()) {
                Class<?> cls = Class.forName("com.mbridge.msdk.mbsignalcommon.confirmation.bridge.ConfirmationJsBridgePlugin");
                a(cls.getSimpleName(), cls);
            }
        } catch (Exception unused8) {
        }
    }
}
