package com.applovin.impl;

import com.applovin.impl.b6;
import com.applovin.impl.l7;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.HashSet;
/* loaded from: classes2.dex */
class i6 extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final p7 f8123g;

    /* renamed from: h  reason: collision with root package name */
    private final AppLovinAdLoadListener f8124h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i6(p7 p7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        super("TaskRenderVastAd", kVar);
        this.f8124h = appLovinAdLoadListener;
        this.f8123g = p7Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        if (com.applovin.impl.sdk.o.a()) {
            this.f7962c.a(this.f7961b, "Rendering VAST ad...");
        }
        int size = this.f8123g.a().size();
        HashSet hashSet = new HashSet(size);
        HashSet hashSet2 = new HashSet(size);
        String str2 = "";
        u7 u7Var = null;
        y7 y7Var = null;
        o7 o7Var = null;
        n7 n7Var = null;
        String str3 = "";
        for (m8 m8Var : this.f8123g.a()) {
            if (x7.b(m8Var)) {
                str = "Wrapper";
            } else {
                str = "InLine";
            }
            m8 b10 = m8Var.b(str);
            if (b10 != null) {
                m8 b11 = b10.b("AdSystem");
                if (b11 != null) {
                    u7Var = u7.a(b11, u7Var, this.f7960a);
                }
                str2 = x7.a(b10, "AdTitle", str2);
                str3 = x7.a(b10, "Description", str3);
                x7.a(b10.a("Impression"), hashSet, this.f8123g, this.f7960a);
                m8 c10 = b10.c("ViewableImpression");
                if (c10 != null) {
                    x7.a(c10.a("Viewable"), hashSet, this.f8123g, this.f7960a);
                }
                m8 b12 = b10.b("AdVerifications");
                if (b12 != null) {
                    n7Var = n7.a(b12, n7Var, this.f8123g, this.f7960a);
                }
                x7.a(b10.a("Error"), hashSet2, this.f8123g, this.f7960a);
                m8 c11 = b10.c("Creatives");
                if (c11 != null) {
                    for (m8 m8Var2 : c11.b()) {
                        m8 c12 = m8Var2.c("Linear");
                        if (c12 != null) {
                            y7Var = y7.a(c12, y7Var, this.f8123g, this.f7960a);
                        } else {
                            m8 b13 = m8Var2.b("CompanionAds");
                            if (b13 != null) {
                                m8 b14 = b13.b("Companion");
                                if (b14 != null) {
                                    o7Var = o7.a(b14, o7Var, this.f8123g, this.f7960a);
                                }
                            } else if (com.applovin.impl.sdk.o.a()) {
                                this.f7962c.b(this.f7961b, "Received and will skip rendering for an unidentified creative: " + m8Var2);
                            }
                        }
                    }
                }
            } else if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.b(this.f7961b, "Did not find wrapper or inline response for node: " + m8Var);
            }
        }
        l7 a10 = new l7.b().a(this.f7960a).a(this.f8123g.b()).b(this.f8123g.e()).a(this.f8123g.c()).b(str2).a(str3).a(u7Var).a(y7Var).a(o7Var).a(n7Var).b(hashSet).a(n7Var).a(hashSet2).a();
        q7 c13 = x7.c(a10);
        if (c13 == null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Finished rendering VAST ad: " + a10);
            }
            a10.getAdEventTracker().e();
            this.f7960a.r0().a((g5) new l5(a10, this.f7960a, this.f8124h), b6.b.CACHING);
            return;
        }
        x7.a(this.f8123g, this.f8124h, c13, -6, this.f7960a);
    }
}
