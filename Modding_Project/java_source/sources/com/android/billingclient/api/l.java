package com.android.billingclient.api;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzil;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class l extends com.google.android.gms.internal.play_billing.zzag {

    /* renamed from: a  reason: collision with root package name */
    final AlternativeBillingOnlyAvailabilityListener f6644a;

    /* renamed from: b  reason: collision with root package name */
    final t f6645b;

    /* renamed from: c  reason: collision with root package name */
    final int f6646c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ l(AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener, t tVar, int i10, zzbp zzbpVar) {
        this.f6644a = alternativeBillingOnlyAvailabilityListener;
        this.f6645b = tVar;
        this.f6646c = i10;
    }

    @Override // com.google.android.gms.internal.play_billing.zzah
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            t tVar = this.f6645b;
            zzie zzieVar = zzie.NULL_BUNDLE_FROM_IS_ALTERNATIVE_BILLING_ONLY_AVAILABLE_SERVICE_CALL;
            BillingResult billingResult = u.f6670h;
            int i10 = zzcg.zza;
            tVar.k(zzcg.zzb(zzieVar, 14, billingResult, null, zzil.BROADCAST_ACTION_UNSPECIFIED), this.f6646c);
            this.f6644a.onAlternativeBillingOnlyAvailabilityResponse(billingResult);
            return;
        }
        int zzb = com.google.android.gms.internal.play_billing.zzc.zzb(bundle, "BillingClient");
        BillingResult a10 = u.a(zzb, com.google.android.gms.internal.play_billing.zzc.zzj(bundle, "BillingClient"));
        if (zzb != 0) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "isAlternativeBillingOnlyAvailableAsync() failed. Response code: " + zzb);
            t tVar2 = this.f6645b;
            zzie zzieVar2 = zzie.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
            int i11 = zzcg.zza;
            tVar2.k(zzcg.zzb(zzieVar2, 14, a10, null, zzil.BROADCAST_ACTION_UNSPECIFIED), this.f6646c);
        }
        this.f6644a.onAlternativeBillingOnlyAvailabilityResponse(a10);
    }
}
