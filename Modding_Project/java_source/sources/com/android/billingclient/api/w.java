package com.android.billingclient.api;

import android.content.Context;
import com.google.android.gms.internal.play_billing.zzji;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
final class w {

    /* renamed from: a  reason: collision with root package name */
    private boolean f6691a;

    /* renamed from: b  reason: collision with root package name */
    private a5.h f6692b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(Context context) {
        try {
            c5.u.f(context);
            this.f6692b = c5.u.c().g(com.google.android.datatransport.cct.a.f17010g).a("PLAY_BILLING_LIBRARY", zzji.class, a5.c.b("proto"), new a5.g() { // from class: com.android.billingclient.api.zzcm
                @Override // a5.g
                public final Object apply(Object obj) {
                    return ((zzji) obj).zzM();
                }
            });
        } catch (Throwable unused) {
            this.f6691a = true;
        }
    }

    public final void a(zzji zzjiVar) {
        if (this.f6691a) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingLogger", "Skipping logging since initialization failed.");
            return;
        }
        try {
            this.f6692b.b(a5.d.f(zzjiVar));
        } catch (Throwable unused) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingLogger", "logging failed.");
        }
    }
}
