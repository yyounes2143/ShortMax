package com.android.billingclient.api;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzil;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class g extends com.google.android.gms.internal.play_billing.zzw {

    /* renamed from: a  reason: collision with root package name */
    final AlternativeBillingOnlyReportingDetailsListener f6631a;

    /* renamed from: b  reason: collision with root package name */
    final t f6632b;

    /* renamed from: c  reason: collision with root package name */
    final int f6633c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ g(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener, t tVar, int i10, zzbp zzbpVar) {
        this.f6631a = alternativeBillingOnlyReportingDetailsListener;
        this.f6632b = tVar;
        this.f6633c = i10;
    }

    @Override // com.google.android.gms.internal.play_billing.zzx
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            t tVar = this.f6632b;
            zzie zzieVar = zzie.NULL_BUNDLE_FROM_CREATE_ALTERNATIVE_BILLING_ONLY_TOKEN_SERVICE_CALL;
            BillingResult billingResult = u.f6670h;
            int i10 = zzcg.zza;
            tVar.k(zzcg.zzb(zzieVar, 15, billingResult, null, zzil.BROADCAST_ACTION_UNSPECIFIED), this.f6633c);
            this.f6631a.onAlternativeBillingOnlyTokenResponse(billingResult, null);
            return;
        }
        int zzb = com.google.android.gms.internal.play_billing.zzc.zzb(bundle, "BillingClient");
        BillingResult a10 = u.a(zzb, com.google.android.gms.internal.play_billing.zzc.zzj(bundle, "BillingClient"));
        if (zzb != 0) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "createAlternativeBillingOnlyReportingDetailsAsync() failed. Response code: " + zzb);
            t tVar2 = this.f6632b;
            zzie zzieVar2 = zzie.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
            int i11 = zzcg.zza;
            tVar2.k(zzcg.zzb(zzieVar2, 15, a10, null, zzil.BROADCAST_ACTION_UNSPECIFIED), this.f6633c);
            this.f6631a.onAlternativeBillingOnlyTokenResponse(a10, null);
            return;
        }
        try {
            this.f6631a.onAlternativeBillingOnlyTokenResponse(a10, new AlternativeBillingOnlyReportingDetails(bundle.getString("CREATE_ALTERNATIVE_BILLING_ONLY_REPORTING_DETAILS")));
        } catch (JSONException e10) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Error when parsing invalid alternative billing only reporting details. \n Exception: ", e10);
            t tVar3 = this.f6632b;
            zzie zzieVar3 = zzie.ERROR_DECODING_ALTERNATIVE_BILLING_ONLY_REPORTING_DETAILS;
            BillingResult billingResult2 = u.f6670h;
            int i12 = zzcg.zza;
            tVar3.k(zzcg.zzb(zzieVar3, 15, billingResult2, null, zzil.BROADCAST_ACTION_UNSPECIFIED), this.f6633c);
            this.f6631a.onAlternativeBillingOnlyTokenResponse(billingResult2, null);
        }
    }
}
