package com.mbridge.msdk.newinterstitial.out;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.newreward.function.common.MBridgeGlobalCommon;
import com.mbridge.msdk.out.BaseExtraInterfaceForHandler;
import com.mbridge.msdk.reward.controller.a;
import com.mbridge.msdk.setting.h;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MBNewInterstitialHandler implements BaseExtraInterfaceForHandler {

    /* renamed from: a  reason: collision with root package name */
    private String f28451a;

    /* renamed from: b  reason: collision with root package name */
    private String f28452b;

    /* renamed from: c  reason: collision with root package name */
    private String f28453c;

    /* renamed from: d  reason: collision with root package name */
    private String f28454d;

    /* renamed from: e  reason: collision with root package name */
    private String f28455e;

    /* renamed from: f  reason: collision with root package name */
    private a f28456f;

    /* renamed from: g  reason: collision with root package name */
    private String f28457g;

    /* renamed from: h  reason: collision with root package name */
    private NewInterstitialListener f28458h;

    /* renamed from: i  reason: collision with root package name */
    private int f28459i = 2;

    /* renamed from: j  reason: collision with root package name */
    private boolean f28460j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f28461k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f28462l = false;

    /* renamed from: m  reason: collision with root package name */
    private int f28463m;

    /* renamed from: n  reason: collision with root package name */
    private int f28464n;

    /* renamed from: o  reason: collision with root package name */
    private int f28465o;

    public MBNewInterstitialHandler(Context context, String str, String str2) {
        if (c.m().d() == null && context != null) {
            c.m().b(context);
        }
        if (context instanceof Activity) {
            c.m().a(context);
        }
        a(str, str2);
    }

    private void a(String str, String str2) {
        String e10 = u0.e(str2);
        if (!TextUtils.isEmpty(e10)) {
            u0.b(str2, e10);
        }
        this.f28451a = str;
        this.f28457g = str2;
        a();
    }

    private void b(String str, String str2) {
        try {
            if (this.f28456f == null) {
                a aVar = new a();
                this.f28456f = aVar;
                aVar.d(true);
                this.f28456f.c(str, str2);
                h.b().g(str2);
            }
        } catch (Throwable th2) {
            p0.b("MBRewardVideoHandler", th2.getMessage(), th2);
        }
    }

    public void clearVideoCache() {
        try {
            a aVar = this.f28456f;
            if (aVar != null) {
                aVar.e();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.f28456f;
        if (aVar != null) {
            return aVar.j();
        }
        return "";
    }

    public String getRequestId() {
        a aVar = this.f28456f;
        if (aVar != null) {
            return aVar.m();
        }
        return "";
    }

    public boolean isReady() {
        a();
        a aVar = this.f28456f;
        if (aVar != null) {
            return aVar.c(true);
        }
        return false;
    }

    public void load() {
        a();
        if (this.f28456f != null) {
            this.f28456f.a(true, d.b().a(0, 287, this.f28457g, true, 2));
        }
    }

    public void loadFormSelfFilling() {
        a();
        if (this.f28456f != null) {
            this.f28456f.a(false, d.b().a(0, 287, this.f28457g, true, 1));
        }
    }

    public void playVideoMute(int i10) {
        this.f28459i = i10;
        a aVar = this.f28456f;
        if (aVar != null) {
            aVar.a(i10);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        this.f28452b = str;
        this.f28453c = str2;
        this.f28454d = str3;
        this.f28455e = str4;
        this.f28461k = true;
        MBridgeGlobalCommon.setAlertDialogText(this.f28457g, str, str2, str3, str4);
    }

    @Override // com.mbridge.msdk.out.BaseExtraInterfaceForHandler
    public void setExtraInfo(JSONObject jSONObject) {
        c.m().a(this.f28457g, jSONObject);
    }

    public void setIVRewardEnable(int i10, int i11) {
        this.f28463m = i10;
        this.f28464n = i11;
        this.f28465o = com.mbridge.msdk.foundation.same.a.K;
        this.f28462l = true;
        b();
    }

    public void setInterstitialVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f28458h = newInterstitialListener;
        this.f28460j = true;
        a aVar = this.f28456f;
        if (aVar != null && !aVar.u()) {
            this.f28456f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener, this.f28457g, false));
            this.f28460j = false;
        }
    }

    @Deprecated
    public void setRewardVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f28458h = newInterstitialListener;
        this.f28460j = true;
        a aVar = this.f28456f;
        if (aVar != null && !aVar.u()) {
            this.f28456f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener, this.f28457g, false));
            this.f28460j = false;
        }
    }

    public void show() {
        a();
        if (this.f28456f != null) {
            this.f28456f.a((String) null, (String) null, (String) null, d.b().a(0, 287, this.f28457g, false, -1));
        }
    }

    public void setIVRewardEnable(int i10, double d10) {
        this.f28463m = i10;
        this.f28464n = (int) (d10 * 100.0d);
        this.f28465o = com.mbridge.msdk.foundation.same.a.J;
        this.f28462l = true;
        b();
    }

    private void a() {
        a aVar;
        if (this.f28456f == null) {
            b(this.f28451a, this.f28457g);
        }
        if (this.f28460j) {
            a aVar2 = this.f28456f;
            if (aVar2 != null) {
                aVar2.a(new com.mbridge.msdk.newinterstitial.listener.a(this.f28458h, this.f28457g, false));
            }
            this.f28460j = false;
        }
        if (this.f28461k) {
            a aVar3 = this.f28456f;
            if (aVar3 != null) {
                aVar3.a(this.f28452b, this.f28453c, this.f28454d, this.f28455e);
            }
            this.f28461k = false;
        }
        if (!this.f28462l || (aVar = this.f28456f) == null) {
            return;
        }
        aVar.a(this.f28463m, this.f28465o, this.f28464n);
        this.f28462l = false;
    }

    private void b() {
        a aVar = this.f28456f;
        if (aVar != null) {
            aVar.a(this.f28463m, this.f28465o, this.f28464n);
        }
    }

    public MBNewInterstitialHandler(String str, String str2) {
        a(str, str2);
    }
}
