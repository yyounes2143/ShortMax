package com.android.billingclient.api;

import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.zzhx;
import com.google.android.gms.internal.play_billing.zzib;
import com.google.android.gms.internal.play_billing.zzij;
import com.google.android.gms.internal.play_billing.zzil;
import com.google.android.gms.internal.play_billing.zzjo;
import com.google.android.gms.internal.play_billing.zzjs;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public interface t {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f6662a = 0;

    static {
        com.google.android.gms.internal.play_billing.zzbw.zzc("com.android.vending.billing.PURCHASES_UPDATED", zzil.PURCHASES_UPDATED_ACTION, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED", zzil.LOCAL_PURCHASES_UPDATED_ACTION, "com.android.vending.billing.ALTERNATIVE_BILLING", zzil.ALTERNATIVE_BILLING_ACTION);
    }

    void a(zzhx zzhxVar, long j10, boolean z10);

    void b(zzhx zzhxVar, int i10, long j10);

    void c(zzij zzijVar);

    void d(@Nullable zzib zzibVar, int i10);

    void e(zzjo zzjoVar);

    void f(@Nullable zzjs zzjsVar);

    void g(zzhx zzhxVar, int i10, long j10, boolean z10);

    void h(zzhx zzhxVar);

    void i(zzib zzibVar, long j10, boolean z10);

    void j(@Nullable zzib zzibVar);

    void k(@Nullable zzhx zzhxVar, int i10);
}
