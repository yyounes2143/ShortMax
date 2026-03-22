package com.android.billingclient.api;

import androidx.core.util.Consumer;
import com.google.android.gms.internal.play_billing.zzie;
import java.util.Objects;
import java.util.concurrent.TimeoutException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class p implements com.google.android.gms.internal.play_billing.zzcs {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Consumer f6656a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Runnable f6657b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ s f6658c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ int f6659d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(s sVar, int i10, Consumer consumer, Runnable runnable) {
        this.f6659d = i10;
        this.f6656a = consumer;
        this.f6657b = runnable;
        Objects.requireNonNull(sVar);
        this.f6658c = sVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzcs
    public final void zza(Throwable th2) {
        if (th2 instanceof TimeoutException) {
            this.f6658c.q1(zzie.BILLING_OVERRIDE_SERVICE_CALL_TIMEOUT, 28, u.F);
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClientTesting", "Asynchronous call to Billing Override Service timed out.", th2);
        } else {
            this.f6658c.q1(zzie.BILLING_OVERRIDE_SERVICE_CALL_EXCEPTION, 28, u.F);
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClientTesting", "An error occurred while retrieving billing override.", th2);
        }
        this.f6657b.run();
    }

    @Override // com.google.android.gms.internal.play_billing.zzcs
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        boolean n12;
        BillingResult o12;
        Integer num = (Integer) obj;
        int intValue = num.intValue();
        s sVar = this.f6658c;
        n12 = s.n1(intValue);
        if (n12) {
            o12 = sVar.o1(this.f6659d, num.intValue());
            this.f6656a.accept(o12);
            return;
        }
        this.f6657b.run();
    }
}
