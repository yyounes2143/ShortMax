package com.mbridge.msdk.mbbanner.controll;

import android.text.TextUtils;
import android.view.View;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.d1;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbbanner.common.manager.c;
import com.mbridge.msdk.out.BannerAdListener;
import com.mbridge.msdk.out.BannerSize;
import com.mbridge.msdk.out.MBBannerView;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.j;
import com.mbridge.msdk.setting.l;
import com.ss.texturerender.TextureRenderKeys;
import java.util.List;
/* compiled from: BannerController.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: x  reason: collision with root package name */
    private static String f27864x = "BannerController";

    /* renamed from: a  reason: collision with root package name */
    private String f27865a;

    /* renamed from: b  reason: collision with root package name */
    private String f27866b;

    /* renamed from: c  reason: collision with root package name */
    private String f27867c;

    /* renamed from: d  reason: collision with root package name */
    private MBridgeIds f27868d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f27869e;

    /* renamed from: f  reason: collision with root package name */
    private int f27870f;

    /* renamed from: g  reason: collision with root package name */
    private MBBannerView f27871g;

    /* renamed from: h  reason: collision with root package name */
    private int f27872h;

    /* renamed from: i  reason: collision with root package name */
    private int f27873i;

    /* renamed from: j  reason: collision with root package name */
    private int f27874j;

    /* renamed from: l  reason: collision with root package name */
    private BannerAdListener f27876l;

    /* renamed from: m  reason: collision with root package name */
    private CampaignUnit f27877m;

    /* renamed from: n  reason: collision with root package name */
    private c f27878n;

    /* renamed from: o  reason: collision with root package name */
    private l f27879o;

    /* renamed from: p  reason: collision with root package name */
    private j f27880p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f27881q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f27882r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f27883s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f27884t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f27885u;

    /* renamed from: k  reason: collision with root package name */
    private int f27875k = -1;

    /* renamed from: v  reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.listener.c f27886v = new C0388a();

    /* renamed from: w  reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.listener.b f27887w = new b();

    public a(MBBannerView mBBannerView, BannerSize bannerSize, String str, String str2) {
        this.f27871g = mBBannerView;
        if (bannerSize != null) {
            this.f27872h = bannerSize.getHeight();
            this.f27873i = bannerSize.getWidth();
        }
        this.f27865a = str2;
        str = TextUtils.isEmpty(str) ? "" : str;
        this.f27866b = str;
        this.f27868d = new MBridgeIds(str, this.f27865a);
        f();
    }

    private int a(int i10) {
        if (i10 > 0) {
            int i11 = 10;
            if (i10 >= 10) {
                i11 = 180;
                if (i10 <= 180) {
                    return i10;
                }
            }
            return i11;
        }
        return i10;
    }

    private void l() {
        l e10 = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f27865a);
        this.f27879o = e10;
        if (e10 == null) {
            this.f27879o = l.i(this.f27865a);
        }
        if (this.f27875k == -1) {
            this.f27874j = a(this.f27879o.D());
        }
        if (this.f27870f == 0) {
            boolean z10 = true;
            if (this.f27879o.g() != 1) {
                z10 = false;
            }
            this.f27869e = z10;
            c cVar = this.f27878n;
            if (cVar != null) {
                cVar.c(z10);
            }
        }
    }

    /* compiled from: BannerController.java */
    /* loaded from: classes5.dex */
    class b implements com.mbridge.msdk.mbbanner.common.listener.b {
        b() {
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.b
        public void a(String str, CampaignUnit campaignUnit, boolean z10) {
            a.this.f27877m = campaignUnit;
            a.this.a(1, (com.mbridge.msdk.foundation.error.b) null);
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.b
        public void b(com.mbridge.msdk.foundation.error.b bVar) {
            a.this.a(bVar.f(), bVar);
            a.this.c();
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.b
        public void a(com.mbridge.msdk.foundation.error.b bVar) {
            a.this.a(2, bVar);
            a.this.a(bVar.f(), bVar);
            a.this.c();
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.b
        public void a(String str, int i10, boolean z10) {
            if (a.this.f27871g != null) {
                a.this.f27884t = true;
                a.this.j();
            }
        }
    }

    private boolean a(View view) {
        return true;
    }

    private void f() {
        b(com.mbridge.msdk.foundation.controller.c.m().b(), com.mbridge.msdk.foundation.controller.c.m().c());
        l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.f27883s || !this.f27884t) {
            return;
        }
        if (a(this.f27871g)) {
            if (this.f27877m != null) {
                if (this.f27878n == null) {
                    this.f27878n = new c(this.f27871g, this.f27886v, this.f27866b, this.f27865a, this.f27869e, this.f27879o);
                }
                this.f27878n.a(this.f27867c);
                this.f27878n.b(this.f27881q);
                this.f27878n.d(this.f27882r);
                this.f27878n.a(this.f27869e, this.f27870f);
                this.f27878n.b(this.f27877m);
            } else {
                a(new com.mbridge.msdk.foundation.error.b(880043));
            }
        } else {
            a(new com.mbridge.msdk.foundation.error.b(880044));
        }
        this.f27884t = false;
    }

    private void k() {
        MBBannerView mBBannerView = this.f27871g;
        if (mBBannerView != null) {
            if (this.f27881q && this.f27882r && !this.f27885u && !d1.a(mBBannerView, 1)) {
                com.mbridge.msdk.mbbanner.common.manager.a b10 = com.mbridge.msdk.mbbanner.common.manager.a.b();
                String str = this.f27866b;
                String str2 = this.f27865a;
                b10.a(3, str, str2, new com.mbridge.msdk.mbbanner.common.data.a(this.f27873i + TextureRenderKeys.KEY_IS_X + this.f27872h, this.f27874j * 1000), this.f27887w);
            } else {
                com.mbridge.msdk.mbbanner.common.manager.a.b().a(2, this.f27866b, this.f27865a, null, null);
            }
            if (this.f27881q) {
                return;
            }
            com.mbridge.msdk.mbbanner.common.manager.a.b().a(4, this.f27866b, this.f27865a, null, null);
            com.mbridge.msdk.mbbanner.common.manager.a.b().b(this.f27865a);
        }
    }

    public void c() {
        if (this.f27883s) {
            return;
        }
        k();
        l();
        com.mbridge.msdk.mbbanner.common.data.a aVar = new com.mbridge.msdk.mbbanner.common.data.a(this.f27873i + TextureRenderKeys.KEY_IS_X + this.f27872h, this.f27874j * 1000);
        aVar.c(this.f27866b);
        aVar.a(true);
        aVar.b(com.mbridge.msdk.mbbanner.common.report.a.b(""));
        com.mbridge.msdk.mbbanner.common.manager.a.b().a(this.f27866b, this.f27865a, aVar, this.f27887w);
    }

    public String d() {
        CampaignUnit campaignUnit = this.f27877m;
        if (campaignUnit != null) {
            return com.mbridge.msdk.foundation.same.c.b(campaignUnit.getAds());
        }
        return "";
    }

    public String e() {
        CampaignUnit campaignUnit = this.f27877m;
        if (campaignUnit != null && campaignUnit.getRequestId() != null) {
            return this.f27877m.getRequestId();
        }
        return "";
    }

    public void g() {
        com.mbridge.msdk.mbbanner.common.manager.a b10 = com.mbridge.msdk.mbbanner.common.manager.a.b();
        String str = this.f27866b;
        String str2 = this.f27865a;
        b10.a(4, str, str2, new com.mbridge.msdk.mbbanner.common.data.a(this.f27873i + TextureRenderKeys.KEY_IS_X + this.f27872h, this.f27874j * 1000), this.f27887w);
    }

    public void h() {
        com.mbridge.msdk.mbbanner.common.manager.a b10 = com.mbridge.msdk.mbbanner.common.manager.a.b();
        String str = this.f27866b;
        String str2 = this.f27865a;
        b10.a(3, str, str2, new com.mbridge.msdk.mbbanner.common.data.a(this.f27873i + TextureRenderKeys.KEY_IS_X + this.f27872h, this.f27874j * 1000), this.f27887w);
    }

    public void i() {
        this.f27883s = true;
        if (this.f27876l != null) {
            this.f27876l = null;
        }
        if (this.f27887w != null) {
            this.f27887w = null;
        }
        if (this.f27886v != null) {
            this.f27886v = null;
        }
        if (this.f27871g != null) {
            this.f27871g = null;
        }
        com.mbridge.msdk.mbbanner.common.manager.a.b().a(4, this.f27866b, this.f27865a, null, null);
        com.mbridge.msdk.mbbanner.common.manager.a.b().b(this.f27865a);
        com.mbridge.msdk.mbbanner.common.manager.a.b().c();
        c cVar = this.f27878n;
        if (cVar != null) {
            cVar.h();
        }
    }

    public void b(int i10) {
        int a10 = a(i10);
        this.f27875k = a10;
        this.f27874j = a10;
    }

    private void b(String str, String str2) {
        if (this.f27880p == null) {
            this.f27880p = new j();
        }
        this.f27880p.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, str2, this.f27865a);
    }

    public void b(boolean z10) {
        this.f27881q = z10;
        b();
        j();
    }

    /* compiled from: BannerController.java */
    /* renamed from: com.mbridge.msdk.mbbanner.controll.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class C0388a implements com.mbridge.msdk.mbbanner.common.listener.c {
        C0388a() {
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.c
        public void a(List<CampaignEx> list) {
            p0.b(a.f27864x, "onShowSuccessed:");
            if (a.this.f27876l != null) {
                a.this.f27876l.onLoadSuccessed(a.this.f27868d);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.c a10 = com.mbridge.msdk.mbbanner.common.report.a.a(a.this.f27865a, list.get(0).getLocalRequestId());
                a10.b(list);
                a10.g(1);
                a10.d(TextUtils.isEmpty(list.get(0).getBannerUrl()) ? 2 : 1);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000048", a10, (e) null);
            } catch (Exception e10) {
                p0.b(a.f27864x, e10.getMessage());
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.c
        public void b() {
            if (a.this.f27876l != null) {
                a.this.f27876l.onCloseBanner(a.this.f27868d);
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.c
        public void c() {
            if (a.this.f27876l != null) {
                a.this.f27876l.onClick(a.this.f27868d);
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.c
        public void d() {
            if (a.this.f27876l != null) {
                a.this.f27876l.closeFullScreen(a.this.f27868d);
                a.this.f27885u = false;
                com.mbridge.msdk.mbbanner.common.manager.a b10 = com.mbridge.msdk.mbbanner.common.manager.a.b();
                String str = a.this.f27866b;
                String str2 = a.this.f27865a;
                b10.a(3, str, str2, new com.mbridge.msdk.mbbanner.common.data.a(a.this.f27873i + TextureRenderKeys.KEY_IS_X + a.this.f27872h, a.this.f27874j * 1000), a.this.f27887w);
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.c
        public void onLeaveApp() {
            if (a.this.f27876l != null) {
                a.this.f27876l.onLeaveApp(a.this.f27868d);
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.c
        public void a(CampaignEx campaignEx) {
            a.this.c();
            if (a.this.f27876l != null) {
                a.this.f27876l.onLogImpression(a.this.f27868d);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.c a10 = com.mbridge.msdk.mbbanner.common.report.a.a(a.this.f27865a, campaignEx.getLocalRequestId());
                a10.a(campaignEx);
                a10.h(campaignEx.isBidCampaign() ? "1" : MBridgeConstans.ENDCARD_URL_TYPE_PL);
                int i10 = 1;
                a10.g(a.this.f27878n != null ? a.this.f27878n.c() : 1);
                if (a.this.f27874j != 0) {
                    i10 = 2;
                }
                a10.b(i10);
                a10.c(a.this.f27874j);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000128", a10, (e) null);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000130", a10, (e) null);
            } catch (Exception e10) {
                p0.b(a.f27864x, e10.getMessage());
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.c
        public void a(com.mbridge.msdk.foundation.error.b bVar) {
            a.this.a(bVar);
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.c
        public void a() {
            if (a.this.f27876l != null) {
                a.this.f27876l.showFullScreen(a.this.f27868d);
                a.this.f27885u = true;
                com.mbridge.msdk.mbbanner.common.manager.a.b().a(2, a.this.f27866b, a.this.f27865a, null, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, com.mbridge.msdk.foundation.error.b bVar) {
        CampaignUnit campaignUnit;
        String str2 = "";
        if (bVar != null) {
            try {
                str2 = bVar.g();
                if (TextUtils.isEmpty(str)) {
                    str = bVar.f();
                }
            } catch (Throwable th2) {
                p0.b(f27864x, th2.getMessage());
            }
        }
        if (TextUtils.isEmpty(str) && (campaignUnit = this.f27877m) != null) {
            str = campaignUnit.getLocalRequestId();
        }
        com.mbridge.msdk.foundation.same.report.metrics.c a10 = com.mbridge.msdk.mbbanner.common.report.a.a(this.f27865a, str);
        CampaignUnit campaignUnit2 = this.f27877m;
        a10.b(campaignUnit2 != null ? campaignUnit2.getAds() : null);
        a10.a(bVar);
        CampaignUnit campaignUnit3 = this.f27877m;
        if (campaignUnit3 != null && !campaignUnit3.getAds().isEmpty()) {
            a10.d(TextUtils.isEmpty(this.f27877m.getAds().get(0).getBannerUrl()) ? 1 : 2);
        }
        a10.b(true);
        com.mbridge.msdk.mbbanner.common.report.a.a("2000047", a10, (e) null);
        BannerAdListener bannerAdListener = this.f27876l;
        if (bannerAdListener != null) {
            bannerAdListener.onLoadFailed(this.f27868d, str2);
        }
    }

    public void b() {
        k();
        c cVar = this.f27878n;
        if (cVar != null) {
            cVar.b(this.f27881q);
            this.f27878n.d(this.f27882r);
        }
    }

    public void c(boolean z10) {
        this.f27882r = z10;
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, com.mbridge.msdk.foundation.error.b bVar) {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.c a10 = com.mbridge.msdk.mbbanner.common.report.a.a(this.f27865a, bVar == null ? this.f27877m.getLocalRequestId() : bVar.f());
            e eVar = new e();
            eVar.a("result", Integer.valueOf(i10));
            CampaignUnit campaignUnit = this.f27877m;
            if (campaignUnit != null && !campaignUnit.getAds().isEmpty()) {
                CampaignEx campaignEx = this.f27877m.getAds().get(0);
                if (campaignEx != null) {
                    a10.d(TextUtils.isEmpty(campaignEx.getBannerUrl()) ? 2 : 1);
                }
                a10.b(this.f27877m.getAds());
            }
            if (bVar != null) {
                a10.a(bVar);
            }
            com.mbridge.msdk.mbbanner.common.report.a.a("2000126", a10, eVar);
        } catch (Exception e10) {
            p0.b(f27864x, e10.getMessage());
        }
    }

    public void a(BannerSize bannerSize) {
        if (bannerSize != null) {
            this.f27872h = bannerSize.getHeight();
            this.f27873i = bannerSize.getWidth();
        }
    }

    public void a(boolean z10) {
        this.f27869e = z10;
        this.f27870f = z10 ? 1 : 2;
    }

    public void a(String str, String str2) {
        boolean z10;
        if (this.f27872h >= 1 && this.f27873i >= 1) {
            try {
                z10 = com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.b(com.mbridge.msdk.foundation.controller.c.m().d());
            } catch (Exception e10) {
                p0.b(f27864x, e10.getMessage());
                z10 = false;
            }
            if (!z10) {
                a(str2, new com.mbridge.msdk.foundation.error.b(880029));
                return;
            }
            this.f27867c = str2;
            com.mbridge.msdk.mbbanner.common.data.a aVar = new com.mbridge.msdk.mbbanner.common.data.a(this.f27873i + TextureRenderKeys.KEY_IS_X + this.f27872h, this.f27874j * 1000);
            aVar.a(str);
            aVar.c(this.f27866b);
            aVar.b(str2);
            com.mbridge.msdk.mbbanner.common.manager.a.b().b(this.f27866b, this.f27865a, aVar, this.f27887w);
            com.mbridge.msdk.mbbanner.common.manager.a.b().a(1, this.f27866b, this.f27865a, aVar, this.f27887w);
            return;
        }
        a(str2, new com.mbridge.msdk.foundation.error.b(880037));
    }

    public void a(BannerAdListener bannerAdListener) {
        this.f27876l = bannerAdListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.foundation.error.b bVar) {
        a(this.f27867c, bVar);
        if (bVar.b() != 880044) {
            c();
        }
    }

    public void a(int i10, int i11, int i12, int i13) {
        c cVar = this.f27878n;
        if (cVar != null) {
            cVar.a(i10, i11, i12, i13);
        }
    }
}
