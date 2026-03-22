package com.applovin.impl;

import android.net.Uri;
import com.applovin.impl.e0;
import com.applovin.impl.j5;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class k5 extends j5 {

    /* renamed from: q  reason: collision with root package name */
    private final com.applovin.impl.sdk.ad.a f8238q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f8239r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f8240s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements e0.a {
        a() {
        }

        @Override // com.applovin.impl.e0.a
        public void a(Uri uri) {
            if (uri != null) {
                k5.this.f8238q.y1();
                k5.this.f8238q.d(uri);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements j5.e {
        b() {
        }

        @Override // com.applovin.impl.j5.e
        public void a(String str) {
            k5.this.f8238q.d(k5.this.d(str));
            k5.this.f8238q.b(true);
            com.applovin.impl.sdk.o oVar = k5.this.f7962c;
            if (com.applovin.impl.sdk.o.a()) {
                k5 k5Var = k5.this;
                com.applovin.impl.sdk.o oVar2 = k5Var.f7962c;
                String str2 = k5Var.f7961b;
                oVar2.a(str2, "Finish caching non-video resources for ad #" + k5.this.f8238q.getAdIdNumber());
            }
            k5 k5Var2 = k5.this;
            com.applovin.impl.sdk.o oVar3 = k5Var2.f7962c;
            String str3 = k5Var2.f7961b;
            oVar3.f(str3, "Ad updated with cachedHTML = " + k5.this.f8238q.s1());
        }
    }

    public k5(com.applovin.impl.sdk.ad.a aVar, com.applovin.impl.sdk.k kVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super("TaskCacheAppLovinAd", aVar, kVar, appLovinAdLoadListener);
        this.f8238q = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d(String str) {
        if (k7.j(com.applovin.impl.sdk.k.o())) {
            str = k7.c(str);
        }
        if (this.f8238q.isOpenMeasurementEnabled()) {
            return this.f7960a.e0().a(str, e2.a((AppLovinAdImpl) this.f8177g));
        }
        return str;
    }

    private void m() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f7962c.a(this.f7961b, "Caching non-optional HTML resources...");
        }
        this.f8238q.d(d(a(this.f8238q.s1(), this.f8238q.c0(), this.f8238q)));
        this.f8238q.b(true);
        a(this.f8238q);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.a(str, "Finish caching non-optional HTML resources for ad #" + this.f8238q.getAdIdNumber());
        }
        com.applovin.impl.sdk.o oVar2 = this.f7962c;
        String str2 = this.f7961b;
        oVar2.f(str2, "Ad HTML updated to reference locally cached non-optional resources = " + this.f8238q.s1());
    }

    private void n() {
        Uri c10;
        if (!l() && (c10 = c(this.f8238q.w1())) != null) {
            this.f8238q.y1();
            this.f8238q.d(c10);
        }
    }

    private d0 o() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f7962c.a(this.f7961b, "Caching HTML resources...");
        }
        return a(this.f8238q.s1(), this.f8238q.c0(), new b());
    }

    private e0 p() {
        return b(this.f8238q.w1(), new a());
    }

    private void q() {
        List<String> R = this.f8238q.R();
        if (CollectionUtils.isEmpty(R)) {
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.f7962c.a(this.f7961b, "Caching optional HTML resources...");
        }
        String s12 = this.f8238q.s1();
        for (String str : R) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str2 = this.f7961b;
                oVar.a(str2, "Caching optional resource: " + str);
            }
            int a10 = this.f7960a.H().a(str, this.f8177g);
            Map a11 = e2.a((AppLovinAdImpl) this.f8177g);
            String a12 = this.f7960a.H().a(com.applovin.impl.sdk.k.o(), str, this.f8238q.getCachePrefix(), this.f8238q.c0(), true, true, a10, this.f8179i, a11);
            if (StringUtils.isValidString(a12)) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar2 = this.f7962c;
                    String str3 = this.f7961b;
                    oVar2.a(str3, "Updating HTML with cached optional resource: " + a12);
                }
                this.f8238q.a(Uri.parse(a12));
                s12 = s12.replace(str, a12);
                this.f8238q.d(s12);
            } else {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar3 = this.f7962c;
                    String str4 = this.f7961b;
                    oVar3.b(str4, "Failed to cache optional resource: " + str);
                }
                a(str, "cacheOptionalHtmlResource", a11);
            }
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar4 = this.f7962c;
            String str5 = this.f7961b;
            oVar4.a(str5, "Finish caching optional HTML resources for ad #" + this.f8238q.getAdIdNumber());
        }
    }

    public void b(boolean z10) {
        this.f8240s = z10;
    }

    public void c(boolean z10) {
        this.f8239r = z10;
    }

    @Override // com.applovin.impl.j5, java.lang.Runnable
    public void run() {
        super.run();
        boolean O0 = this.f8238q.O0();
        boolean z10 = this.f8240s;
        if (!O0 && !z10) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str = this.f7961b;
                oVar.a(str, "Begin processing for non-streaming ad #" + this.f8238q.getAdIdNumber() + "...");
            }
            if (((Boolean) this.f7960a.a(v4.I0)).booleanValue()) {
                ArrayList arrayList = new ArrayList();
                if (!o0.e()) {
                    arrayList.addAll(e());
                }
                d0 o10 = o();
                if (o10 != null) {
                    arrayList.add(o10);
                }
                e0 p10 = p();
                if (p10 != null) {
                    arrayList.add(p10);
                }
                a(arrayList);
                f();
                q();
            } else {
                j();
                m();
                n();
                f();
                q();
            }
        } else {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.f7962c;
                String str2 = this.f7961b;
                oVar2.a(str2, "Begin caching for streaming ad #" + this.f8238q.getAdIdNumber() + "...");
            }
            if (((Boolean) this.f7960a.a(v4.I0)).booleanValue()) {
                if (!o0.e()) {
                    a(e());
                }
                ArrayList arrayList2 = new ArrayList();
                if (O0) {
                    if (this.f8239r) {
                        f();
                        d0 o11 = o();
                        if (o11 != null) {
                            arrayList2.add(o11);
                        }
                        e0 p11 = p();
                        if (p11 != null) {
                            arrayList2.add(p11);
                        }
                    } else {
                        d0 o12 = o();
                        if (o12 != null) {
                            a(Arrays.asList(o12));
                        }
                        f();
                        e0 p12 = p();
                        if (p12 != null) {
                            arrayList2.add(p12);
                        }
                    }
                } else {
                    f();
                    d0 o13 = o();
                    if (o13 != null) {
                        arrayList2.add(o13);
                    }
                }
                a(arrayList2);
                f();
            } else {
                j();
                if (O0) {
                    if (this.f8239r) {
                        f();
                    }
                    m();
                    if (!this.f8239r) {
                        f();
                    }
                    n();
                } else {
                    f();
                    m();
                }
            }
        }
        k();
    }
}
