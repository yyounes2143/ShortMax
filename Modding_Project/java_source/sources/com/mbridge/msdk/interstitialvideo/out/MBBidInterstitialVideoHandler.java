package com.mbridge.msdk.interstitialvideo.out;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.newreward.function.common.MBridgeGlobalCommon;
import com.mbridge.msdk.reward.controller.a;
@Deprecated
/* loaded from: classes5.dex */
public class MBBidInterstitialVideoHandler {

    /* renamed from: a  reason: collision with root package name */
    private a f27681a;

    /* renamed from: b  reason: collision with root package name */
    private String f27682b;

    /* renamed from: c  reason: collision with root package name */
    private String f27683c;

    /* renamed from: d  reason: collision with root package name */
    private String f27684d;

    /* renamed from: e  reason: collision with root package name */
    private String f27685e;

    /* renamed from: f  reason: collision with root package name */
    private String f27686f;

    /* renamed from: g  reason: collision with root package name */
    private String f27687g;

    /* renamed from: h  reason: collision with root package name */
    private InterstitialVideoListener f27688h;

    /* renamed from: i  reason: collision with root package name */
    private int f27689i = 2;

    /* renamed from: j  reason: collision with root package name */
    private boolean f27690j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f27691k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f27692l = false;

    /* renamed from: m  reason: collision with root package name */
    private boolean f27693m = false;

    /* renamed from: n  reason: collision with root package name */
    private int f27694n;

    /* renamed from: o  reason: collision with root package name */
    private int f27695o;

    /* renamed from: p  reason: collision with root package name */
    private int f27696p;

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
        this.f27682b = str2;
        this.f27683c = str;
        a();
    }

    private void b(String str, String str2) {
        try {
            if (this.f27681a == null) {
                a aVar = new a();
                this.f27681a = aVar;
                aVar.d(true);
                this.f27681a.e(true);
                this.f27681a.c(str, str2);
            }
        } catch (Throwable th2) {
            p0.b("MBBidRewardVideoHandler", th2.getMessage(), th2);
        }
    }

    public void clearVideoCache() {
        try {
            a aVar = this.f27681a;
            if (aVar != null) {
                aVar.e();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.f27681a;
        if (aVar != null) {
            return aVar.j();
        }
        return "";
    }

    public String getRequestId() {
        a aVar = this.f27681a;
        if (aVar != null) {
            return aVar.m();
        }
        return "";
    }

    public boolean isBidReady() {
        a();
        a aVar = this.f27681a;
        if (aVar != null) {
            return aVar.c(true);
        }
        return false;
    }

    public void loadFormSelfFilling() {
        a();
        if (this.f27681a != null) {
            this.f27681a.a(false, d.b().a(1, 287, this.f27682b, true, 1));
        }
    }

    public void loadFromBid(String str) {
        a();
        if (this.f27681a != null) {
            this.f27681a.a(true, str, d.b().a(1, 287, this.f27682b, true, 2));
        }
    }

    public void playVideoMute(int i10) {
        this.f27689i = i10;
        a aVar = this.f27681a;
        if (aVar != null) {
            aVar.a(i10);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        this.f27684d = str;
        this.f27685e = str2;
        this.f27686f = str3;
        this.f27687g = str4;
        this.f27691k = true;
        this.f27692l = true;
        MBridgeGlobalCommon.setAlertDialogText(this.f27682b, str, str2, str3, str4);
    }

    public void setIVRewardEnable(int i10, int i11) {
        this.f27694n = i10;
        this.f27695o = i11;
        this.f27696p = com.mbridge.msdk.foundation.same.a.K;
        this.f27693m = true;
        b();
    }

    public void setInterstitialVideoListener(InterstitialVideoListener interstitialVideoListener) {
        this.f27688h = interstitialVideoListener;
        this.f27690j = true;
        a aVar = this.f27681a;
        if (aVar != null && !aVar.u()) {
            this.f27681a.a(new com.mbridge.msdk.interstitialvideo.listener.a(interstitialVideoListener, this.f27682b, true));
            this.f27690j = false;
        }
    }

    @Deprecated
    public void setRewardVideoListener(InterstitialVideoListener interstitialVideoListener) {
        this.f27688h = interstitialVideoListener;
        this.f27690j = true;
        a aVar = this.f27681a;
        if (aVar != null && !aVar.u()) {
            this.f27681a.a(new com.mbridge.msdk.interstitialvideo.listener.a(interstitialVideoListener, this.f27682b, true));
            this.f27690j = false;
        }
    }

    public void showFromBid() {
        a();
        if (this.f27681a != null) {
            this.f27681a.a((String) null, (String) null, (String) null, d.b().a(1, 287, this.f27682b, false, -1));
        }
    }

    public void setIVRewardEnable(int i10, double d10) {
        this.f27694n = i10;
        this.f27695o = (int) (d10 * 100.0d);
        this.f27696p = com.mbridge.msdk.foundation.same.a.J;
        this.f27693m = true;
        b();
    }

    private void a() {
        a aVar;
        if (this.f27681a == null) {
            b(this.f27683c, this.f27682b);
        }
        if (this.f27690j) {
            a aVar2 = this.f27681a;
            if (aVar2 != null) {
                aVar2.a(new com.mbridge.msdk.interstitialvideo.listener.a(this.f27688h, this.f27682b, true));
            }
            this.f27690j = false;
        }
        if (this.f27691k) {
            a aVar3 = this.f27681a;
            if (aVar3 != null) {
                aVar3.a(this.f27684d, this.f27685e, this.f27686f, this.f27687g);
            }
            this.f27691k = false;
        }
        if (!this.f27693m || (aVar = this.f27681a) == null) {
            return;
        }
        aVar.a(this.f27694n, this.f27696p, this.f27695o);
        this.f27693m = false;
    }

    private void b() {
        a aVar = this.f27681a;
        if (aVar != null) {
            aVar.a(this.f27694n, this.f27696p, this.f27695o);
        }
    }

    public MBBidInterstitialVideoHandler(String str, String str2) {
        a(str, str2);
    }
}
