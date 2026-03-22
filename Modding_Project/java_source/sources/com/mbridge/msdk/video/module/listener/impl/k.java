package com.mbridge.msdk.video.module.listener.impl;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r0;
import com.mbridge.msdk.foundation.tools.z0;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: StatisticsOnNotifyListener.java */
/* loaded from: classes6.dex */
public class k extends f {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f31161a;

    /* renamed from: b  reason: collision with root package name */
    protected CampaignEx f31162b;

    /* renamed from: c  reason: collision with root package name */
    protected List<CampaignEx> f31163c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f31164d;

    /* renamed from: e  reason: collision with root package name */
    protected com.mbridge.msdk.videocommon.download.a f31165e;

    /* renamed from: f  reason: collision with root package name */
    protected com.mbridge.msdk.videocommon.entity.c f31166f;

    /* renamed from: g  reason: collision with root package name */
    protected String f31167g;

    /* renamed from: h  reason: collision with root package name */
    protected String f31168h;

    /* renamed from: i  reason: collision with root package name */
    protected com.mbridge.msdk.video.module.listener.a f31169i;

    /* renamed from: j  reason: collision with root package name */
    protected int f31170j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f31171k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f31172l = false;

    /* renamed from: m  reason: collision with root package name */
    private boolean f31173m = false;

    /* compiled from: StatisticsOnNotifyListener.java */
    /* loaded from: classes6.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                k kVar = k.this;
                if (kVar.f31161a && kVar.f31162b != null && z0.b(kVar.f31167g) && com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    com.mbridge.msdk.foundation.db.i a10 = com.mbridge.msdk.foundation.db.i.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                    com.mbridge.msdk.foundation.entity.f fVar = new com.mbridge.msdk.foundation.entity.f();
                    fVar.a(System.currentTimeMillis());
                    fVar.b(k.this.f31167g);
                    fVar.a(k.this.f31162b.getId());
                    a10.a(fVar);
                }
            } catch (Throwable th2) {
                p0.b("NotifyListener", th2.getMessage(), th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatisticsOnNotifyListener.java */
    /* loaded from: classes6.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                k kVar = k.this;
                if (kVar.f31161a && kVar.f31162b != null && z0.b(kVar.f31167g)) {
                    com.mbridge.msdk.videocommon.cache.a a10 = com.mbridge.msdk.videocommon.cache.a.a();
                    k kVar2 = k.this;
                    a10.a(kVar2.f31162b, kVar2.f31167g);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
            try {
                com.mbridge.msdk.videocommon.cache.a a11 = com.mbridge.msdk.videocommon.cache.a.a();
                k kVar3 = k.this;
                a11.b(kVar3.f31168h, kVar3.f31162b.getAdType());
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            } catch (Throwable th2) {
                p0.a("NotifyListener", th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StatisticsOnNotifyListener.java */
    /* loaded from: classes6.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).b(k.this.f31162b.getId());
            } catch (Throwable th2) {
                p0.b("NotifyListener", th2.getMessage(), th2);
            }
        }
    }

    /* compiled from: StatisticsOnNotifyListener.java */
    /* loaded from: classes6.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.videocommon.download.a aVar;
            try {
                if (r0.a().a("c_r_v_f_w_s_e", false)) {
                    return;
                }
                k kVar = k.this;
                if (kVar.f31161a && (aVar = kVar.f31165e) != null) {
                    if (aVar.c() != null && !TextUtils.isEmpty(k.this.f31165e.c().getVideoUrlEncode())) {
                        com.mbridge.msdk.foundation.db.m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(k.this.f31165e.c().getVideoUrlEncode());
                    }
                    if (!TextUtils.isEmpty(k.this.f31165e.k())) {
                        File file = new File(k.this.f31165e.k());
                        if (file.exists() && file.isFile() && file.delete()) {
                            p0.a("NotifyListener", "DEL File :" + file.getAbsolutePath());
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public k(CampaignEx campaignEx, com.mbridge.msdk.videocommon.download.a aVar, com.mbridge.msdk.videocommon.entity.c cVar, String str, String str2, com.mbridge.msdk.video.module.listener.a aVar2, int i10, boolean z10) {
        this.f31164d = false;
        this.f31169i = new f();
        this.f31170j = 1;
        if (!z10 && campaignEx != null && z0.b(str2) && aVar != null && aVar2 != null) {
            this.f31162b = campaignEx;
            this.f31168h = str;
            this.f31167g = str2;
            this.f31165e = aVar;
            this.f31166f = cVar;
            this.f31169i = aVar2;
            this.f31161a = true;
            this.f31170j = i10;
            this.f31164d = false;
        } else if (z10 && campaignEx != null && z0.b(str2) && aVar2 != null) {
            this.f31162b = campaignEx;
            this.f31168h = str;
            this.f31167g = str2;
            this.f31165e = aVar;
            this.f31166f = cVar;
            this.f31169i = aVar2;
            this.f31161a = true;
            this.f31170j = i10;
            this.f31164d = true;
        }
    }

    private void d() {
        if (this.f31161a && com.mbridge.msdk.foundation.same.buffer.b.f27060k != null && !TextUtils.isEmpty(this.f31162b.getId())) {
            com.mbridge.msdk.foundation.same.buffer.b.a(this.f31167g, this.f31162b, AdmobPreloadConfig.REWARD);
        }
    }

    private void f() {
        if (this.f31162b != null) {
            try {
                HashMap hashMap = new HashMap();
                List<com.mbridge.msdk.foundation.entity.d> a10 = com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.f31162b.getCampaignUnitId(), this.f31162b.getRequestId());
                if (a10 != null && a10.size() > 0 && a10.get(0) != null) {
                    if (a10.get(0).c() == 1) {
                        String b10 = a10.get(0).b();
                        hashMap.put("encrypt_p=", "encrypt_p=" + b10);
                        hashMap.put("irlfa=", "irlfa=1");
                        for (Map.Entry entry : hashMap.entrySet()) {
                            String str = (String) entry.getKey();
                            String str2 = (String) entry.getValue();
                            CampaignEx campaignEx = this.f31162b;
                            campaignEx.setImpressionURL(campaignEx.getImpressionURL().replaceAll(str, str2));
                            CampaignEx campaignEx2 = this.f31162b;
                            campaignEx2.setOnlyImpressionURL(campaignEx2.getOnlyImpressionURL().replaceAll(str, str2));
                        }
                    }
                    int a11 = com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.f31162b.getRequestId());
                    p0.a("BidReplaceCampignDao", "removeReplace count " + a11);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private void m() {
        new Thread(new c()).start();
    }

    public void a(CampaignEx campaignEx) {
        this.f31162b = campaignEx;
    }

    public void b(int i10) {
        if (this.f31162b != null) {
            if (i10 == 1 || i10 == 2) {
                com.mbridge.msdk.video.module.report.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f31162b, i10, this.f31170j);
            }
        }
    }

    public void c() {
        a aVar = new a();
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(aVar);
        } else {
            aVar.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e() {
        d dVar = new d();
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(dVar);
        } else {
            dVar.run();
        }
    }

    public void g() {
        int i10;
        if (this.f31161a && this.f31162b != null) {
            com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n("2000061", this.f31162b.getId(), this.f31162b.getRequestId(), this.f31162b.getRequestIdNotice(), this.f31167g, l0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
            if (this.f31162b.isMraid()) {
                i10 = com.mbridge.msdk.foundation.entity.n.N;
            } else {
                i10 = com.mbridge.msdk.foundation.entity.n.O;
            }
            nVar.b(i10);
            com.mbridge.msdk.foundation.same.report.g.b(nVar, com.mbridge.msdk.foundation.controller.c.m().d(), this.f31167g);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h() {
        String str;
        try {
            if (this.f31161a && !this.f31171k && !TextUtils.isEmpty(this.f31162b.getImpressionURL())) {
                this.f31171k = true;
                if (this.f31162b.isBidCampaign()) {
                    f();
                }
                String impressionURL = this.f31162b.getImpressionURL();
                if (this.f31162b.getSpareOfferFlag() == 1) {
                    str = impressionURL + "&to=1&cbt=" + this.f31162b.getCbt() + "&tmorl=" + this.f31170j;
                } else {
                    str = impressionURL + "&to=0&cbt=" + this.f31162b.getCbt() + "&tmorl=" + this.f31170j;
                }
                com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f31162b, this.f31167g, str, false, true, com.mbridge.msdk.click.retry.a.f26106m);
                com.mbridge.msdk.video.module.report.b.d(com.mbridge.msdk.foundation.controller.c.m().d(), this.f31162b);
                m();
                d();
            }
        } catch (Throwable th2) {
            p0.b("NotifyListener", th2.getMessage(), th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void i() {
        CampaignEx campaignEx;
        Map<String, Long> map;
        String str;
        try {
            CampaignEx campaignEx2 = this.f31162b;
            if (campaignEx2 != null && campaignEx2.isDynamicView() && this.f31164d && !this.f31162b.isCampaignIsFiltered()) {
                this.f31172l = true;
            } else if (this.f31161a && (campaignEx = this.f31162b) != null && !TextUtils.isEmpty(campaignEx.getOnlyImpressionURL()) && (map = com.mbridge.msdk.foundation.same.buffer.b.f27061l) != null && !map.containsKey(this.f31162b.getOnlyImpressionURL()) && !this.f31172l) {
                com.mbridge.msdk.foundation.same.buffer.b.f27061l.put(this.f31162b.getOnlyImpressionURL(), Long.valueOf(System.currentTimeMillis()));
                String onlyImpressionURL = this.f31162b.getOnlyImpressionURL();
                if (this.f31162b.getSpareOfferFlag() == 1) {
                    str = onlyImpressionURL + "&to=1&cbt=" + this.f31162b.getCbt() + "&tmorl=" + this.f31170j;
                } else {
                    str = onlyImpressionURL + "&to=0&cbt=" + this.f31162b.getCbt() + "&tmorl=" + this.f31170j;
                }
                String str2 = str;
                if (this.f31164d) {
                    if (this.f31162b.isCampaignIsFiltered()) {
                        com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f31162b, this.f31167g, str2, false, true, com.mbridge.msdk.click.retry.a.f26107n);
                        b();
                    }
                } else {
                    com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f31162b, this.f31167g, str2, false, true, com.mbridge.msdk.click.retry.a.f26107n);
                    b();
                }
                this.f31172l = true;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void j() {
        CampaignEx campaignEx;
        List<String> pv_urls;
        try {
            if (this.f31161a && !this.f31173m && (campaignEx = this.f31162b) != null) {
                this.f31173m = true;
                if ((!campaignEx.isDynamicView() || !this.f31164d || this.f31162b.isCampaignIsFiltered()) && (pv_urls = this.f31162b.getPv_urls()) != null && pv_urls.size() > 0) {
                    for (String str : pv_urls) {
                        com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f31162b, this.f31167g, str, false, true);
                    }
                }
            }
        } catch (Throwable th2) {
            p0.b("NotifyListener", th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void k() {
        CampaignEx campaignEx = this.f31162b;
        if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getCampaignUnitId()) && this.f31162b.getNativeVideoTracking() != null && this.f31162b.getNativeVideoTracking().i() != null) {
            Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
            CampaignEx campaignEx2 = this.f31162b;
            com.mbridge.msdk.click.a.a(d10, campaignEx2, campaignEx2.getCampaignUnitId(), this.f31162b.getNativeVideoTracking().i(), false, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void l() {
        com.mbridge.msdk.videocommon.download.a aVar = this.f31165e;
        if (aVar != null) {
            aVar.d(true);
        }
    }

    public void a(List<CampaignEx> list) {
        this.f31163c = list;
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i10, Object obj) {
        super.a(i10, obj);
        this.f31169i.a(i10, obj);
    }

    public void b() {
        try {
            b bVar = new b();
            if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(bVar);
            } else {
                bVar.run();
            }
        } catch (Throwable th2) {
            p0.b("NotifyListener", th2.getMessage(), th2);
        }
    }

    public void a(int i10, String str) {
        if (this.f31162b != null) {
            com.mbridge.msdk.foundation.same.report.g.c(new com.mbridge.msdk.foundation.entity.n("2000062", this.f31162b.getId(), this.f31162b.getRequestId(), this.f31162b.getRequestIdNotice(), this.f31167g, l0.s(com.mbridge.msdk.foundation.controller.c.m().d()), i10, str), com.mbridge.msdk.foundation.controller.c.m().d(), this.f31167g);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(String str) {
        try {
            if (this.f31162b != null) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("url", this.f31162b.getVideoUrlEncode());
                eVar.a("reason", str);
                String noticeUrl = this.f31162b.getNoticeUrl();
                String clickURL = this.f31162b.getClickURL();
                if (TextUtils.isEmpty(noticeUrl)) {
                    if (!TextUtils.isEmpty(clickURL)) {
                        eVar.a("offer_url", clickURL);
                    }
                } else {
                    eVar.a("offer_url", noticeUrl);
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000021", this.f31162b, eVar);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(int i10) {
        CampaignEx campaignEx = this.f31162b;
        if (campaignEx != null) {
            String noticeUrl = campaignEx.getNoticeUrl();
            if (TextUtils.isEmpty(noticeUrl)) {
                return;
            }
            if (i10 == 1 || i10 == 2) {
                if (!noticeUrl.contains("endscreen_type")) {
                    StringBuilder sb2 = new StringBuilder(noticeUrl);
                    if (noticeUrl.contains("?")) {
                        sb2.append("&endscreen_type=");
                        sb2.append(i10);
                    } else {
                        sb2.append("?endscreen_type=");
                        sb2.append(i10);
                    }
                    noticeUrl = sb2.toString();
                } else if (i10 == 2) {
                    if (noticeUrl.contains("endscreen_type=1")) {
                        noticeUrl = noticeUrl.replace("endscreen_type=1", "endscreen_type=2");
                    }
                } else if (noticeUrl.contains("endscreen_type=2")) {
                    noticeUrl = noticeUrl.replace("endscreen_type=2", "endscreen_type=1");
                }
                this.f31162b.setNoticeUrl(noticeUrl);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        com.mbridge.msdk.videocommon.download.b.getInstance().a(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str) {
        List<CampaignEx> list;
        if (this.f31162b == null || (list = this.f31163c) == null || list.size() == 0 || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("camp_position")) {
                this.f31162b = this.f31163c.get(jSONObject.getInt("camp_position"));
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("NotifyListener", e10.getMessage());
            }
        }
    }
}
