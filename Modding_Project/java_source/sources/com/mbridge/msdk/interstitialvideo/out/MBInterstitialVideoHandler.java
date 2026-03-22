package com.mbridge.msdk.interstitialvideo.out;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.newreward.function.common.MBridgeGlobalCommon;
import com.mbridge.msdk.reward.controller.a;
import com.mbridge.msdk.setting.h;
@Deprecated
/* loaded from: classes5.dex */
public class MBInterstitialVideoHandler {

    /* renamed from: a  reason: collision with root package name */
    private String f27697a;

    /* renamed from: b  reason: collision with root package name */
    private a f27698b;

    /* renamed from: c  reason: collision with root package name */
    private String f27699c;

    /* renamed from: d  reason: collision with root package name */
    private String f27700d;

    /* renamed from: e  reason: collision with root package name */
    private String f27701e;

    /* renamed from: f  reason: collision with root package name */
    private String f27702f;

    /* renamed from: g  reason: collision with root package name */
    private String f27703g;

    /* renamed from: h  reason: collision with root package name */
    private InterstitialVideoListener f27704h;

    /* renamed from: i  reason: collision with root package name */
    private int f27705i = 2;

    /* renamed from: j  reason: collision with root package name */
    private boolean f27706j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f27707k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f27708l = false;

    /* renamed from: m  reason: collision with root package name */
    private int f27709m;

    /* renamed from: n  reason: collision with root package name */
    private int f27710n;

    /* renamed from: o  reason: collision with root package name */
    private int f27711o;

    public MBInterstitialVideoHandler(Context context, String str, String str2) {
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
        this.f27699c = str2;
        this.f27697a = str;
        a();
    }

    private void b(String str, String str2) {
        try {
            if (this.f27698b == null) {
                a aVar = new a();
                this.f27698b = aVar;
                aVar.d(true);
                this.f27698b.c(str, str2);
                h.b().g(str2);
            }
        } catch (Throwable th2) {
            p0.b("MBRewardVideoHandler", th2.getMessage(), th2);
        }
    }

    public void clearVideoCache() {
        try {
            a aVar = this.f27698b;
            if (aVar != null) {
                aVar.e();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.f27698b;
        if (aVar != null) {
            return aVar.j();
        }
        return "";
    }

    public String getRequestId() {
        a aVar = this.f27698b;
        if (aVar != null) {
            return aVar.m();
        }
        return "";
    }

    public boolean isReady() {
        a();
        a aVar = this.f27698b;
        if (aVar != null) {
            return aVar.c(true);
        }
        return false;
    }

    public void load() {
        a();
        if (this.f27698b != null) {
            this.f27698b.a(true, d.b().a(0, 287, this.f27699c, true, 2));
        }
    }

    public void loadFormSelfFilling() {
        a();
        if (this.f27698b != null) {
            this.f27698b.a(false, d.b().a(0, 287, this.f27699c, true, 1));
        }
    }

    public void playVideoMute(int i10) {
        this.f27705i = i10;
        a aVar = this.f27698b;
        if (aVar != null) {
            aVar.a(i10);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        this.f27700d = str;
        this.f27701e = str2;
        this.f27702f = str3;
        this.f27703g = str4;
        this.f27707k = true;
        MBridgeGlobalCommon.setAlertDialogText(this.f27699c, str, str2, str3, str4);
    }

    public void setIVRewardEnable(int i10, int i11) {
        this.f27709m = i10;
        this.f27710n = i11;
        this.f27711o = com.mbridge.msdk.foundation.same.a.K;
        this.f27708l = true;
        b();
    }

    public void setInterstitialVideoListener(InterstitialVideoListener interstitialVideoListener) {
        this.f27704h = interstitialVideoListener;
        this.f27706j = true;
        a aVar = this.f27698b;
        if (aVar != null && !aVar.u()) {
            this.f27698b.a(new com.mbridge.msdk.interstitialvideo.listener.a(interstitialVideoListener));
            this.f27706j = false;
        }
    }

    @Deprecated
    public void setRewardVideoListener(InterstitialVideoListener interstitialVideoListener) {
        this.f27704h = interstitialVideoListener;
        this.f27706j = true;
        a aVar = this.f27698b;
        if (aVar != null && !aVar.u()) {
            this.f27698b.a(new com.mbridge.msdk.interstitialvideo.listener.a(interstitialVideoListener));
            this.f27706j = false;
        }
    }

    public void show() {
        a();
        if (this.f27698b != null) {
            this.f27698b.a((String) null, (String) null, (String) null, d.b().a(0, 287, this.f27699c, false, -1));
        }
    }

    public void setIVRewardEnable(int i10, double d10) {
        this.f27709m = i10;
        this.f27710n = (int) (d10 * 100.0d);
        this.f27711o = com.mbridge.msdk.foundation.same.a.J;
        this.f27708l = true;
        b();
    }

    private void a() {
        a aVar;
        if (this.f27698b == null) {
            b(this.f27697a, this.f27699c);
        }
        if (this.f27706j) {
            this.f27698b.a(new com.mbridge.msdk.interstitialvideo.listener.a(this.f27704h, this.f27699c, false));
            this.f27706j = false;
        }
        if (this.f27707k) {
            this.f27698b.a(this.f27700d, this.f27701e, this.f27702f, this.f27703g);
            this.f27707k = false;
        }
        if (!this.f27708l || (aVar = this.f27698b) == null) {
            return;
        }
        aVar.a(this.f27709m, this.f27711o, this.f27710n);
        this.f27708l = false;
    }

    private void b() {
        a aVar = this.f27698b;
        if (aVar != null) {
            aVar.a(this.f27709m, this.f27711o, this.f27710n);
        }
    }

    public MBInterstitialVideoHandler(String str, String str2) {
        a(str, str2);
    }
}
