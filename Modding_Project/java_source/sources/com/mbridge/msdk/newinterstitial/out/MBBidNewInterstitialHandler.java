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
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MBBidNewInterstitialHandler implements BaseExtraInterfaceForHandler {

    /* renamed from: a  reason: collision with root package name */
    private String f28436a;

    /* renamed from: b  reason: collision with root package name */
    private String f28437b;

    /* renamed from: c  reason: collision with root package name */
    private String f28438c;

    /* renamed from: d  reason: collision with root package name */
    private String f28439d;

    /* renamed from: e  reason: collision with root package name */
    private String f28440e;

    /* renamed from: f  reason: collision with root package name */
    private a f28441f;

    /* renamed from: g  reason: collision with root package name */
    private String f28442g;

    /* renamed from: h  reason: collision with root package name */
    private NewInterstitialListener f28443h;

    /* renamed from: i  reason: collision with root package name */
    private int f28444i = 2;

    /* renamed from: j  reason: collision with root package name */
    private boolean f28445j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f28446k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f28447l = false;

    /* renamed from: m  reason: collision with root package name */
    private int f28448m;

    /* renamed from: n  reason: collision with root package name */
    private int f28449n;

    /* renamed from: o  reason: collision with root package name */
    private int f28450o;

    public MBBidNewInterstitialHandler(Context context, String str, String str2) {
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
        this.f28436a = str;
        this.f28442g = str2;
        a();
    }

    private void b(String str, String str2) {
        try {
            if (this.f28441f == null) {
                a aVar = new a();
                this.f28441f = aVar;
                aVar.d(true);
                this.f28441f.e(true);
                this.f28441f.c(str, str2);
            }
        } catch (Throwable th2) {
            p0.b("MBBidNewInterstitialHandler", th2.getMessage(), th2);
        }
    }

    public void clearVideoCache() {
        try {
            a aVar = this.f28441f;
            if (aVar != null) {
                aVar.e();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.f28441f;
        if (aVar != null) {
            return aVar.j();
        }
        return "";
    }

    public String getRequestId() {
        a aVar = this.f28441f;
        if (aVar != null) {
            return aVar.m();
        }
        return "";
    }

    public boolean isBidReady() {
        a();
        a aVar = this.f28441f;
        if (aVar != null) {
            return aVar.c(true);
        }
        return false;
    }

    public void loadFormSelfFilling() {
        a();
        if (this.f28441f != null) {
            this.f28441f.a(false, d.b().a(1, 287, this.f28442g, true, 1));
        }
    }

    public void loadFromBid(String str) {
        a();
        if (this.f28441f != null) {
            this.f28441f.a(true, str, d.b().a(1, 287, this.f28442g, true, 2));
        }
    }

    public void playVideoMute(int i10) {
        this.f28444i = i10;
        a aVar = this.f28441f;
        if (aVar != null) {
            aVar.a(i10);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        this.f28438c = str;
        this.f28437b = str2;
        this.f28439d = str3;
        this.f28440e = str4;
        this.f28446k = true;
        MBridgeGlobalCommon.setAlertDialogText(this.f28442g, str, str2, str3, str4);
    }

    @Override // com.mbridge.msdk.out.BaseExtraInterfaceForHandler
    public void setExtraInfo(JSONObject jSONObject) {
        c.m().a(this.f28442g, jSONObject);
    }

    public void setIVRewardEnable(int i10, int i11) {
        this.f28448m = i10;
        this.f28449n = i11;
        this.f28450o = com.mbridge.msdk.foundation.same.a.K;
        this.f28447l = true;
        b();
    }

    public void setInterstitialVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f28443h = newInterstitialListener;
        this.f28445j = true;
        a aVar = this.f28441f;
        if (aVar != null && !aVar.u()) {
            this.f28441f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener, this.f28442g, true));
            this.f28445j = false;
        }
    }

    @Deprecated
    public void setRewardVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f28443h = newInterstitialListener;
        this.f28445j = true;
        a aVar = this.f28441f;
        if (aVar != null && !aVar.u()) {
            this.f28441f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener, this.f28442g, true));
            this.f28445j = false;
        }
    }

    public void showFromBid() {
        a();
        if (this.f28441f != null) {
            this.f28441f.a((String) null, (String) null, (String) null, d.b().a(1, 287, this.f28442g, false, -1));
        }
    }

    public void setIVRewardEnable(int i10, double d10) {
        this.f28448m = i10;
        this.f28449n = (int) (d10 * 100.0d);
        this.f28450o = com.mbridge.msdk.foundation.same.a.J;
        this.f28447l = true;
        b();
    }

    private void a() {
        a aVar;
        if (this.f28441f == null) {
            b(this.f28436a, this.f28442g);
        }
        if (this.f28445j) {
            a aVar2 = this.f28441f;
            if (aVar2 != null) {
                aVar2.a(new com.mbridge.msdk.newinterstitial.listener.a(this.f28443h, this.f28442g, true));
            }
            this.f28445j = false;
        }
        if (this.f28446k) {
            a aVar3 = this.f28441f;
            if (aVar3 != null) {
                aVar3.a(this.f28438c, this.f28437b, this.f28439d, this.f28440e);
            }
            this.f28446k = false;
        }
        if (!this.f28447l || (aVar = this.f28441f) == null) {
            return;
        }
        aVar.a(this.f28448m, this.f28450o, this.f28449n);
        this.f28447l = false;
    }

    private void b() {
        a aVar = this.f28441f;
        if (aVar != null) {
            aVar.a(this.f28448m, this.f28450o, this.f28449n);
        }
    }

    public MBBidNewInterstitialHandler(String str, String str2) {
        a(str, str2);
    }
}
