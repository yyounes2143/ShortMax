package com.android.billingclient.api;

import android.text.TextUtils;
import com.google.android.gms.internal.play_billing.zzie;
import java.util.Objects;
import java.util.concurrent.Callable;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
final class d implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ PurchasesResponseListener f6621a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f6622b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ b f6623c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(b bVar, PurchasesResponseListener purchasesResponseListener, String str, boolean z10) {
        this.f6621a = purchasesResponseListener;
        this.f6622b = str;
        Objects.requireNonNull(bVar);
        this.f6623c = bVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        boolean a02;
        zzcw F0;
        b bVar = this.f6623c;
        a02 = bVar.a0(30000L);
        if (!a02) {
            zzie zzieVar = zzie.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult = u.f6672j;
            bVar.H0(zzieVar, 9, billingResult);
            this.f6621a.onQueryPurchasesResponse(billingResult, com.google.android.gms.internal.play_billing.zzbt.zzk());
            return null;
        }
        String str = this.f6622b;
        if (!TextUtils.isEmpty(str)) {
            F0 = bVar.F0(str, false, 9);
            if (F0.zzb() != null) {
                this.f6621a.onQueryPurchasesResponse(F0.zza(), F0.zzb());
                return null;
            }
            this.f6621a.onQueryPurchasesResponse(F0.zza(), com.google.android.gms.internal.play_billing.zzbt.zzk());
            return null;
        }
        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Please provide a valid product type.");
        zzie zzieVar2 = zzie.EMPTY_PRODUCT_TYPE;
        BillingResult billingResult2 = u.f6667e;
        bVar.H0(zzieVar2, 9, billingResult2);
        this.f6621a.onQueryPurchasesResponse(billingResult2, com.google.android.gms.internal.play_billing.zzbt.zzk());
        return null;
    }
}
