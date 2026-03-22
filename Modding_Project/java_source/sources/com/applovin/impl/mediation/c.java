package com.applovin.impl.mediation;

import com.applovin.impl.z2;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f8706a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f8707b;

    /* renamed from: c  reason: collision with root package name */
    private final a f8708c;

    /* renamed from: d  reason: collision with root package name */
    private com.applovin.impl.g0 f8709d;

    /* loaded from: classes2.dex */
    public interface a {
        void a(z2 z2Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(com.applovin.impl.sdk.k kVar, a aVar) {
        this.f8706a = kVar;
        this.f8707b = kVar.O();
        this.f8708c = aVar;
    }

    public void a(final z2 z2Var, long j10) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f8707b;
            oVar.a("AdHiddenCallbackTimeoutManager", "Scheduling in " + j10 + "ms...");
        }
        this.f8709d = com.applovin.impl.g0.a(j10, this.f8706a, new Runnable() { // from class: com.applovin.impl.mediation.s
            @Override // java.lang.Runnable
            public final void run() {
                c.this.a(z2Var);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(z2 z2Var) {
        if (com.applovin.impl.sdk.o.a()) {
            this.f8707b.a("AdHiddenCallbackTimeoutManager", "Timing out...");
        }
        this.f8708c.a(z2Var);
    }

    public void a() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f8707b.a("AdHiddenCallbackTimeoutManager", "Cancelling timeout");
        }
        com.applovin.impl.g0 g0Var = this.f8709d;
        if (g0Var != null) {
            g0Var.a();
            this.f8709d = null;
        }
    }
}
