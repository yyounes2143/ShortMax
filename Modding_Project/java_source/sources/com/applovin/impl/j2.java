package com.applovin.impl;

import com.applovin.impl.b6;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public abstract class j2 {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f8157a;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.applovin.impl.sdk.k kVar) {
        if (f8157a) {
            return;
        }
        kVar.E().a(c2.E0, "no_ads_loaded");
    }

    public static void b(final com.applovin.impl.sdk.k kVar) {
        Long l10 = (Long) kVar.a(o3.f9112d8);
        if (l10.longValue() <= 0) {
            return;
        }
        kVar.r0().a(new p6(kVar, true, "submitIntegrationErrorReport", new Runnable() { // from class: com.applovin.impl.nb
            @Override // java.lang.Runnable
            public final void run() {
                j2.a(com.applovin.impl.sdk.k.this);
            }
        }), b6.b.OTHER, TimeUnit.SECONDS.toMillis(l10.longValue()));
    }

    public static void a() {
        f8157a = true;
    }
}
