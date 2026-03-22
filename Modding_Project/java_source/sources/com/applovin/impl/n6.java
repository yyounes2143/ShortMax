package com.applovin.impl;

import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class n6 extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final p7 f9026g;

    /* renamed from: h  reason: collision with root package name */
    private final AppLovinAdLoadListener f9027h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n6(p7 p7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        super("TaskResolveVastWrapper", kVar);
        this.f9027h = appLovinAdLoadListener;
        this.f9026g = p7Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        String a10 = x7.a(this.f9026g);
        if (StringUtils.isValidString(a10)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str = this.f7961b;
                oVar.a(str, "Resolving VAST ad with depth " + this.f9026g.d() + " at " + a10);
            }
            try {
                this.f7960a.r0().a(new a(com.applovin.impl.sdk.network.a.a(this.f7960a).b(a10).c(ShareTarget.METHOD_GET).a(m8.f8481f).a(((Integer) this.f7960a.a(v4.K4)).intValue()).c(((Integer) this.f7960a.a(v4.L4)).intValue()).a(false).a(), this.f7960a));
                return;
            } catch (Throwable th2) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7962c.a(this.f7961b, "Unable to resolve VAST wrapper", th2);
                }
                a(-1);
                return;
            }
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.f7962c.b(this.f7961b, "Resolving VAST failed. Could not find resolution URL");
        }
        a(-1);
    }

    /* loaded from: classes2.dex */
    class a extends j6 {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar) {
            super(aVar, kVar);
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, m8 m8Var, int i10) {
            this.f7960a.r0().a(f6.a(m8Var, n6.this.f9026g, n6.this.f9027h, n6.this.f7960a));
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, int i10, String str2, m8 m8Var) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str3 = this.f7961b;
                oVar.b(str3, "Unable to resolve VAST wrapper. Server returned " + i10);
            }
            n6.this.a(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.b(str, "Failed to resolve VAST wrapper due to error code " + i10);
        }
        if (i10 == -1009) {
            AppLovinAdLoadListener appLovinAdLoadListener = this.f9027h;
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener.failedToReceiveAd(i10);
                return;
            }
            return;
        }
        x7.a(this.f9026g, this.f9027h, i10 == -1001 ? q7.TIMED_OUT : q7.GENERAL_WRAPPER_ERROR, i10, this.f7960a);
    }
}
