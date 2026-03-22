package com.mbridge.msdk.advanced.middle;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.WebView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedWebview;
import com.mbridge.msdk.advanced.view.MBOutNativeAdvancedViewGroup;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.NativeAdvancedAdListener;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.j;
import com.mbridge.msdk.setting.l;
import org.json.JSONObject;
/* compiled from: NativeAdvancedProvider.java */
/* loaded from: classes4.dex */
public class c {
    private static String G = "NativeAdvancedProvider";
    private boolean A;
    private boolean B;
    private boolean C;

    /* renamed from: a  reason: collision with root package name */
    private String f25861a;

    /* renamed from: b  reason: collision with root package name */
    private String f25862b;

    /* renamed from: c  reason: collision with root package name */
    private MBridgeIds f25863c;

    /* renamed from: d  reason: collision with root package name */
    private com.mbridge.msdk.advanced.manager.b f25864d;

    /* renamed from: e  reason: collision with root package name */
    private com.mbridge.msdk.advanced.manager.c f25865e;

    /* renamed from: f  reason: collision with root package name */
    private b f25866f;

    /* renamed from: g  reason: collision with root package name */
    private NativeAdvancedAdListener f25867g;

    /* renamed from: h  reason: collision with root package name */
    private d f25868h;

    /* renamed from: i  reason: collision with root package name */
    private MBNativeAdvancedView f25869i;

    /* renamed from: j  reason: collision with root package name */
    private MBNativeAdvancedWebview f25870j;

    /* renamed from: k  reason: collision with root package name */
    private com.mbridge.msdk.advanced.view.a f25871k;

    /* renamed from: l  reason: collision with root package name */
    private l f25872l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f25873m;

    /* renamed from: n  reason: collision with root package name */
    private j f25874n;

    /* renamed from: x  reason: collision with root package name */
    private JSONObject f25884x;

    /* renamed from: z  reason: collision with root package name */
    private MBOutNativeAdvancedViewGroup f25886z;

    /* renamed from: o  reason: collision with root package name */
    private int f25875o = -1;

    /* renamed from: p  reason: collision with root package name */
    private boolean f25876p = false;

    /* renamed from: q  reason: collision with root package name */
    private int f25877q = 0;

    /* renamed from: r  reason: collision with root package name */
    private boolean f25878r = false;

    /* renamed from: s  reason: collision with root package name */
    private int f25879s = 0;

    /* renamed from: t  reason: collision with root package name */
    private boolean f25880t = false;

    /* renamed from: u  reason: collision with root package name */
    private int f25881u = 0;

    /* renamed from: v  reason: collision with root package name */
    private int f25882v = 0;

    /* renamed from: w  reason: collision with root package name */
    private Object f25883w = new Object();

    /* renamed from: y  reason: collision with root package name */
    private boolean f25885y = false;
    private boolean D = true;
    public boolean E = false;
    private ViewTreeObserver.OnScrollChangedListener F = new a();

    /* compiled from: NativeAdvancedProvider.java */
    /* loaded from: classes4.dex */
    class a implements ViewTreeObserver.OnScrollChangedListener {

        /* compiled from: NativeAdvancedProvider.java */
        /* renamed from: com.mbridge.msdk.advanced.middle.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class RunnableC0354a implements Runnable {
            RunnableC0354a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.D = true;
            }
        }

        a() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            if (c.this.D) {
                c.this.D = false;
                if (c.this.f25886z != null) {
                    c.this.f25886z.postDelayed(new RunnableC0354a(), 1000L);
                }
                try {
                    c.this.i();
                } catch (Exception e10) {
                    p0.b(c.G, e10.getMessage());
                }
            }
        }
    }

    public c(String str, String str2, Activity activity) {
        String str3;
        if (TextUtils.isEmpty(str)) {
            str3 = "";
        } else {
            str3 = str;
        }
        this.f25862b = str3;
        this.f25861a = str2;
        this.f25863c = new MBridgeIds(str, str2);
        a(activity);
    }

    private void e(int i10) {
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f25870j;
        if (mBNativeAdvancedWebview == null || mBNativeAdvancedWebview.isDestoryed()) {
            return;
        }
        try {
            if (this.f25870j != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("netstat", i10);
                f.a().a((WebView) this.f25870j, "onNetstatChanged", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            }
        } catch (Throwable th2) {
            p0.a(G, th2.getMessage());
        }
    }

    private void j() {
        a(this.f25875o);
        c(this.f25877q);
        g(this.f25879s);
        a(this.f25884x);
        e(l0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
    }

    public MBOutNativeAdvancedViewGroup d() {
        return this.f25886z;
    }

    public int f() {
        return this.f25875o;
    }

    public boolean g() {
        return this.f25873m;
    }

    public void h(int i10) {
        this.f25880t = true;
        g(i10);
    }

    public void i(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    if (this.C) {
                        return;
                    }
                    this.C = true;
                }
            } else if (this.B) {
                return;
            } else {
                this.B = true;
            }
        } else if (this.A) {
            return;
        } else {
            this.A = true;
        }
        try {
            i();
        } catch (Exception e10) {
            p0.b(G, e10.getMessage());
        }
    }

    private void g(int i10) {
        if (this.f25880t) {
            this.f25879s = i10;
            MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f25870j;
            if (mBNativeAdvancedWebview == null || mBNativeAdvancedWebview.isDestoryed()) {
                return;
            }
            com.mbridge.msdk.advanced.signal.a.a(this.f25870j, "setVideoPlayMode", "autoPlay", Integer.valueOf(i10));
        }
    }

    public void b(JSONObject jSONObject) {
        this.f25885y = true;
        a(jSONObject);
    }

    public void c(String str) {
        b bVar = new b(this, this.f25863c);
        this.f25866f = bVar;
        bVar.a(this.f25867g);
        this.f25866f.a(str);
        a(str, 2);
    }

    public void d(String str) {
        if (TextUtils.isEmpty(str)) {
            NativeAdvancedAdListener nativeAdvancedAdListener = this.f25867g;
            if (nativeAdvancedAdListener != null) {
                nativeAdvancedAdListener.onLoadFailed(this.f25863c, "bid  token is null or empty");
                return;
            }
            return;
        }
        c(str);
    }

    public void f(int i10) {
        if (i10 == 1) {
            this.A = false;
        } else if (i10 == 2) {
            this.B = false;
        } else if (i10 == 3) {
            this.C = false;
        }
        h();
    }

    private void h() {
        com.mbridge.msdk.advanced.manager.c cVar = this.f25865e;
        if (cVar != null) {
            cVar.e();
        }
    }

    public void a(boolean z10) {
        this.f25873m = z10;
    }

    public boolean b(String str) {
        return (this.f25886z == null || com.mbridge.msdk.advanced.manager.d.a(this.f25869i, this.f25862b, this.f25861a, str, this.f25875o, false, true) == null) ? false : true;
    }

    private void a(JSONObject jSONObject) {
        if (this.f25885y) {
            this.f25884x = jSONObject;
            MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f25870j;
            if (mBNativeAdvancedWebview == null || mBNativeAdvancedWebview.isDestoryed()) {
                return;
            }
            com.mbridge.msdk.advanced.signal.a.a(this.f25870j, "setStyleList", "", jSONObject);
        }
    }

    public void b(int i10) {
        this.f25876p = true;
        a(i10);
    }

    private void c(int i10) {
        if (this.f25878r) {
            this.f25877q = i10;
            MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f25870j;
            if (mBNativeAdvancedWebview == null || mBNativeAdvancedWebview.isDestoryed()) {
                return;
            }
            com.mbridge.msdk.advanced.signal.a.a(this.f25870j, "setVolume", "mute", Integer.valueOf(i10));
        }
    }

    public void d(int i10) {
        this.f25878r = true;
        c(i10);
    }

    public void b(int i10, int i11) {
        a(i10, i11);
    }

    public String e() {
        if (this.E) {
            com.mbridge.msdk.advanced.manager.c cVar = this.f25865e;
            if (cVar != null) {
                return cVar.c();
            }
            return "";
        }
        com.mbridge.msdk.advanced.manager.b bVar = this.f25864d;
        if (bVar != null) {
            return bVar.d();
        }
        return "";
    }

    public void b(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (this.f25872l == null) {
                this.f25872l = h.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.f25861a);
            }
            this.f25868h = new d(this, this.f25867g, campaignEx);
            p0.a(G, "show start");
            if (this.f25881u != 0 && this.f25882v != 0) {
                a(campaignEx, false);
                return;
            }
            d dVar = this.f25868h;
            if (dVar != null) {
                dVar.a(this.f25863c, "width or height is 0  or width or height is too small");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.A && this.B && this.C) {
            CampaignEx a10 = com.mbridge.msdk.advanced.manager.d.a(this.f25869i, this.f25862b, this.f25861a, "", this.f25875o, true, true);
            com.mbridge.msdk.advanced.manager.c cVar = this.f25865e;
            if (cVar != null) {
                cVar.f();
            }
            b(a10);
        }
    }

    public void a(NativeAdvancedAdListener nativeAdvancedAdListener) {
        this.f25867g = nativeAdvancedAdListener;
    }

    private void a(int i10) {
        if (this.f25876p) {
            this.f25875o = i10;
            MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f25870j;
            if (mBNativeAdvancedWebview == null || mBNativeAdvancedWebview.isDestoryed()) {
                return;
            }
            int i11 = this.f25875o;
            if (i11 == 1) {
                this.f25865e.a(true);
                com.mbridge.msdk.advanced.signal.a.a(this.f25870j, "showCloseButton", "", null);
            } else if (i11 == 0) {
                this.f25865e.a(false);
                com.mbridge.msdk.advanced.signal.a.a(this.f25870j, "hideCloseButton", "", null);
            }
        }
    }

    public String c() {
        if (this.E) {
            com.mbridge.msdk.advanced.manager.c cVar = this.f25865e;
            if (cVar != null) {
                return cVar.a();
            }
            return "";
        }
        com.mbridge.msdk.advanced.manager.b bVar = this.f25864d;
        if (bVar != null) {
            return bVar.c();
        }
        return "";
    }

    public void b() {
        if (this.f25867g != null) {
            this.f25867g = null;
        }
        if (this.f25866f != null) {
            this.f25866f = null;
        }
        if (this.f25868h != null) {
            this.f25868h = null;
        }
        com.mbridge.msdk.advanced.manager.b bVar = this.f25864d;
        if (bVar != null) {
            bVar.a((MBNativeAdvancedView) null);
            this.f25864d.e();
        }
        com.mbridge.msdk.advanced.manager.c cVar = this.f25865e;
        if (cVar != null) {
            cVar.g();
        }
        MBNativeAdvancedView mBNativeAdvancedView = this.f25869i;
        if (mBNativeAdvancedView != null) {
            mBNativeAdvancedView.destroy();
        }
        com.mbridge.msdk.advanced.common.c.b(this.f25862b + this.f25861a + e());
        com.mbridge.msdk.advanced.view.a aVar = this.f25871k;
        if (aVar != null) {
            aVar.b();
        }
        MBOutNativeAdvancedViewGroup mBOutNativeAdvancedViewGroup = this.f25886z;
        if (mBOutNativeAdvancedViewGroup != null) {
            mBOutNativeAdvancedViewGroup.getViewTreeObserver().removeOnScrollChangedListener(this.F);
            this.f25886z.removeAllViews();
            this.f25886z = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(CampaignEx campaignEx, boolean z10) {
        j();
        MBOutNativeAdvancedViewGroup mBOutNativeAdvancedViewGroup = this.f25886z;
        if (mBOutNativeAdvancedViewGroup == null || mBOutNativeAdvancedViewGroup.getParent() == null) {
            return;
        }
        if (campaignEx != null && z10) {
            if (this.f25872l == null) {
                this.f25872l = h.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.f25861a);
            }
            this.f25868h = new d(this, this.f25867g, campaignEx);
        }
        if (this.f25865e == null) {
            com.mbridge.msdk.advanced.manager.c cVar = new com.mbridge.msdk.advanced.manager.c(com.mbridge.msdk.foundation.controller.c.m().d(), this.f25862b, this.f25861a);
            this.f25865e = cVar;
            cVar.a(this);
        }
        a(campaignEx);
    }

    private void a(CampaignEx campaignEx) {
        if (com.mbridge.msdk.advanced.manager.d.a(this.f25869i, campaignEx, this.f25862b, this.f25861a)) {
            this.f25865e.a(this.f25868h);
            p0.b(G, "start show process");
            this.f25865e.a(campaignEx, this.f25869i, true);
        }
    }

    private void a(String str, int i10) {
        boolean z10;
        this.D = true;
        synchronized (this.f25883w) {
            try {
                if (this.f25873m) {
                    if (this.f25866f != null) {
                        this.f25866f.a(new com.mbridge.msdk.foundation.error.b(880016, "current unit is loading"), i10);
                        this.f25873m = true;
                    }
                    return;
                }
                this.f25873m = true;
                if (this.f25881u != 0 && this.f25882v != 0) {
                    if (this.f25869i == null) {
                        if (this.f25866f != null) {
                            this.f25866f.a(new com.mbridge.msdk.foundation.error.b(880030), i10);
                            return;
                        }
                        return;
                    }
                    try {
                        z10 = com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.b(com.mbridge.msdk.foundation.controller.c.m().d());
                    } catch (Exception e10) {
                        p0.b(G, e10.getMessage());
                        z10 = false;
                    }
                    if (!z10) {
                        if (this.f25866f != null) {
                            this.f25866f.a(new com.mbridge.msdk.foundation.error.b(880029), i10);
                            return;
                        }
                        return;
                    }
                    this.f25869i.clearResStateAndRemoveClose();
                    l a10 = h.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f25861a);
                    this.f25872l = a10;
                    if (a10 == null) {
                        this.f25872l = l.k(this.f25861a);
                    }
                    if (this.f25864d == null) {
                        this.f25864d = new com.mbridge.msdk.advanced.manager.b(this.f25862b, this.f25861a, 0L);
                    }
                    b bVar = this.f25866f;
                    if (bVar != null) {
                        bVar.a(str);
                        this.f25864d.a(this.f25866f);
                    }
                    this.f25869i.resetLoadState();
                    this.f25864d.a(this.f25869i);
                    this.f25864d.a(this.f25872l);
                    this.f25864d.a(this.f25881u, this.f25882v);
                    this.f25864d.a(this.f25875o);
                    this.f25864d.b(str, i10);
                } else if (this.f25866f != null) {
                    this.f25866f.a(new com.mbridge.msdk.foundation.error.b(880028), i10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void a(Activity activity) {
        com.mbridge.msdk.advanced.view.a aVar;
        ViewGroup.LayoutParams layoutParams;
        if (this.f25865e == null) {
            com.mbridge.msdk.advanced.manager.c cVar = new com.mbridge.msdk.advanced.manager.c(com.mbridge.msdk.foundation.controller.c.m().d(), this.f25862b, this.f25861a);
            this.f25865e = cVar;
            cVar.a(this);
        }
        if (this.f25870j == null) {
            try {
                this.f25870j = new MBNativeAdvancedWebview(com.mbridge.msdk.foundation.controller.c.m().d());
            } catch (Exception e10) {
                p0.b(G, e10.getMessage());
            }
            if (this.f25871k == null) {
                try {
                    this.f25871k = new com.mbridge.msdk.advanced.view.a(this.f25861a, this.f25865e.b(), this);
                } catch (Exception e11) {
                    p0.b(G, e11.getMessage());
                }
            }
            MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f25870j;
            if (mBNativeAdvancedWebview != null && (aVar = this.f25871k) != null) {
                mBNativeAdvancedWebview.setWebViewClient(aVar);
            }
        }
        if (this.f25869i == null) {
            Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
            if (activity == null) {
                activity = d10;
            }
            MBNativeAdvancedView mBNativeAdvancedView = new MBNativeAdvancedView(activity);
            this.f25869i = mBNativeAdvancedView;
            mBNativeAdvancedView.setAdvancedNativeWebview(this.f25870j);
            MBNativeAdvancedWebview mBNativeAdvancedWebview2 = this.f25870j;
            if (mBNativeAdvancedWebview2 != null && mBNativeAdvancedWebview2.getParent() == null) {
                this.f25869i.addView(this.f25870j, new ViewGroup.LayoutParams(-1, -1));
            }
        }
        if (this.f25886z == null) {
            this.f25886z = new MBOutNativeAdvancedViewGroup(com.mbridge.msdk.foundation.controller.c.m().d());
            if (this.f25881u != 0 && this.f25882v != 0) {
                layoutParams = new ViewGroup.LayoutParams(this.f25881u, this.f25882v);
            } else {
                layoutParams = new ViewGroup.LayoutParams(-1, -1);
            }
            this.f25886z.setLayoutParams(layoutParams);
            this.f25886z.setProvider(this);
            this.f25886z.addView(this.f25869i);
            this.f25886z.getViewTreeObserver().addOnScrollChangedListener(this.F);
        }
        if (this.f25874n == null) {
            this.f25874n = new j();
        }
        this.f25874n.a(com.mbridge.msdk.foundation.controller.c.m().d(), com.mbridge.msdk.foundation.controller.c.m().b(), com.mbridge.msdk.foundation.controller.c.m().c(), this.f25861a);
    }

    public String a(String str) {
        com.mbridge.msdk.advanced.manager.b bVar = this.f25864d;
        if (bVar != null) {
            return bVar.a(str);
        }
        return "";
    }

    private void a(int i10, int i11) {
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        this.f25882v = i10;
        this.f25881u = i11;
        this.f25886z.setLayoutParams(new ViewGroup.LayoutParams(i11, i10));
    }
}
