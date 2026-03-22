package com.android.billingclient.api;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzil;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class m extends com.google.android.gms.internal.play_billing.zzai {

    /* renamed from: a  reason: collision with root package name */
    final ExternalOfferAvailabilityListener f6647a;

    /* renamed from: b  reason: collision with root package name */
    final t f6648b;

    /* renamed from: c  reason: collision with root package name */
    final int f6649c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ m(ExternalOfferAvailabilityListener externalOfferAvailabilityListener, t tVar, int i10, zzbp zzbpVar) {
        this.f6647a = externalOfferAvailabilityListener;
        this.f6648b = tVar;
        this.f6649c = i10;
    }

    @Override // com.google.android.gms.internal.play_billing.zzaj
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            t tVar = this.f6648b;
            zzie zzieVar = zzie.NULL_BUNDLE_FROM_IS_EXTERNAL_PAYMENT_AVAILABLE_SERVICE_CALL;
            BillingResult billingResult = u.f6670h;
            int i10 = zzcg.zza;
            tVar.k(zzcg.zzb(zzieVar, 23, billingResult, null, zzil.BROADCAST_ACTION_UNSPECIFIED), this.f6649c);
            this.f6647a.onExternalOfferAvailabilityResponse(billingResult);
            return;
        }
        int zzb = com.google.android.gms.internal.play_billing.zzc.zzb(bundle, "BillingClient");
        BillingResult a10 = u.a(zzb, com.google.android.gms.internal.play_billing.zzc.zzj(bundle, "BillingClient"));
        if (zzb != 0) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "isExternalOfferAvailableAsync() failed. Response code: " + zzb);
            t tVar2 = this.f6648b;
            zzie zzieVar2 = zzie.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
            int i11 = zzcg.zza;
            tVar2.k(zzcg.zzb(zzieVar2, 23, a10, null, zzil.BROADCAST_ACTION_UNSPECIFIED), this.f6649c);
        }
        this.f6647a.onExternalOfferAvailabilityResponse(a10);
    }
}
