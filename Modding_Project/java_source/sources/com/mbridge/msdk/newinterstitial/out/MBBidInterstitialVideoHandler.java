package com.mbridge.msdk.newinterstitial.out;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.newreward.function.common.MBridgeGlobalCommon;
import com.mbridge.msdk.out.BaseExtraInterfaceForHandler;
import com.mbridge.msdk.reward.controller.a;
import org.json.JSONObject;
@Deprecated
/* loaded from: classes6.dex */
public class MBBidInterstitialVideoHandler implements BaseExtraInterfaceForHandler {

    /* renamed from: a  reason: collision with root package name */
    private String f28422a;

    /* renamed from: b  reason: collision with root package name */
    private String f28423b;

    /* renamed from: c  reason: collision with root package name */
    private String f28424c;

    /* renamed from: d  reason: collision with root package name */
    private String f28425d;

    /* renamed from: e  reason: collision with root package name */
    private String f28426e;

    /* renamed from: f  reason: collision with root package name */
    private a f28427f;

    /* renamed from: g  reason: collision with root package name */
    private NewInterstitialListener f28428g;

    /* renamed from: h  reason: collision with root package name */
    private int f28429h = 2;

    /* renamed from: i  reason: collision with root package name */
    private boolean f28430i = false;

    /* renamed from: j  reason: collision with root package name */
    private boolean f28431j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f28432k = false;

    /* renamed from: l  reason: collision with root package name */
    private int f28433l;

    /* renamed from: m  reason: collision with root package name */
    private int f28434m;
    public String mUnitId;

    /* renamed from: n  reason: collision with root package name */
    private int f28435n;

    public MBBidInterstitialVideoHandler(Context context, String str, String str2) {
        if (c.m().d() == null && context != null) {
            c.m().b(context);
        }
        a(str, str2);
    }

    private void a(String str, String str2) {
        String e10 = u0.e(str2);
        if (!TextUtils.isEmpty(e10)) {
            u0.b(str2, e10);
        }
        this.mUnitId = str2;
        this.f28422a = str;
        a();
    }

    private void b(String str, String str2) {
        try {
            if (this.f28427f == null) {
                a aVar = new a();
                this.f28427f = aVar;
                aVar.d(true);
                this.f28427f.e(true);
                this.f28427f.c(str, str2);
            }
        } catch (Throwable th2) {
            p0.b("MBBidInterstitialVideoHandler", th2.getMessage(), th2);
        }
    }

    private void c() {
        a aVar = this.f28427f;
        if (aVar != null) {
            aVar.a(this.f28433l, this.f28435n, this.f28434m);
        }
    }

    public void clearVideoCache() {
        try {
            a aVar = this.f28427f;
            if (aVar != null) {
                aVar.e();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.f28427f;
        if (aVar != null) {
            return aVar.j();
        }
        return "";
    }

    public String getRequestId() {
        a aVar = this.f28427f;
        if (aVar != null) {
            return aVar.m();
        }
        return "";
    }

    public boolean isBidReady() {
        a();
        a aVar = this.f28427f;
        if (aVar != null) {
            return aVar.c(true);
        }
        return false;
    }

    public void loadFormSelfFilling() {
        a();
        if (this.f28427f != null) {
            this.f28427f.a(false, d.b().a(1, 287, this.mUnitId, true, 1));
        }
    }

    public void loadFromBid(String str) {
        a();
        if (this.f28427f != null) {
            this.f28427f.a(true, str, d.b().a(1, 287, this.mUnitId, true, 2));
        }
    }

    public void playVideoMute(int i10) {
        this.f28429h = i10;
        a aVar = this.f28427f;
        if (aVar != null) {
            aVar.a(i10);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        this.f28424c = str;
        this.f28423b = str2;
        this.f28425d = str3;
        this.f28426e = str4;
        this.f28431j = true;
        MBridgeGlobalCommon.setAlertDialogText(this.mUnitId, str, str2, str3, str4);
    }

    @Override // com.mbridge.msdk.out.BaseExtraInterfaceForHandler
    public void setExtraInfo(JSONObject jSONObject) {
        c.m().a(this.mUnitId, jSONObject);
    }

    public void setIVRewardEnable(int i10, int i11) {
        this.f28433l = i10;
        this.f28434m = i11;
        this.f28435n = com.mbridge.msdk.foundation.same.a.K;
        this.f28432k = true;
        c();
    }

    public void setInterstitialVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f28428g = newInterstitialListener;
        this.f28430i = true;
        a aVar = this.f28427f;
        if (aVar != null && !aVar.u()) {
            this.f28427f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener));
            this.f28430i = false;
        }
    }

    @Deprecated
    public void setRewardVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f28428g = newInterstitialListener;
        this.f28430i = true;
        a aVar = this.f28427f;
        if (aVar != null && !aVar.u()) {
            this.f28427f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener));
            this.f28430i = false;
        }
    }

    public void showFromBid() {
        a();
        if (this.f28427f != null) {
            this.f28427f.a((String) null, (String) null, (String) null, d.b().a(1, 287, this.mUnitId, false, -1));
        }
    }

    public void setIVRewardEnable(int i10, double d10) {
        this.f28433l = i10;
        this.f28434m = (int) (d10 * 100.0d);
        this.f28435n = com.mbridge.msdk.foundation.same.a.J;
        this.f28432k = true;
        c();
    }

    private void a() {
        if (this.f28427f == null) {
            b(this.f28422a, this.mUnitId);
        }
        b();
    }

    private void b() {
        a aVar;
        if (this.f28430i) {
            a aVar2 = this.f28427f;
            if (aVar2 != null) {
                aVar2.a(new com.mbridge.msdk.newinterstitial.listener.a(this.f28428g));
            }
            this.f28430i = false;
        }
        if (this.f28431j) {
            a aVar3 = this.f28427f;
            if (aVar3 != null) {
                aVar3.a(this.f28424c, this.f28423b, this.f28425d, this.f28426e);
            }
            this.f28431j = false;
        }
        if (!this.f28432k || (aVar = this.f28427f) == null) {
            return;
        }
        aVar.a(this.f28433l, this.f28435n, this.f28434m);
        this.f28432k = false;
    }

    public MBBidInterstitialVideoHandler(String str, String str2) {
        a(str, str2);
    }
}
