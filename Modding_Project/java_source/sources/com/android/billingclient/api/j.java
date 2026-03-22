package com.android.billingclient.api;

import android.os.Bundle;
import android.os.RemoteException;
import com.android.billingclient.api.BillingResult;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzil;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class j extends com.google.android.gms.internal.play_billing.zzac {

    /* renamed from: a  reason: collision with root package name */
    final BillingConfigResponseListener f6639a;

    /* renamed from: b  reason: collision with root package name */
    final t f6640b;

    /* renamed from: c  reason: collision with root package name */
    final int f6641c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ j(BillingConfigResponseListener billingConfigResponseListener, t tVar, int i10, zzbp zzbpVar) {
        this.f6639a = billingConfigResponseListener;
        this.f6640b = tVar;
        this.f6641c = i10;
    }

    @Override // com.google.android.gms.internal.play_billing.zzad
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            t tVar = this.f6640b;
            zzie zzieVar = zzie.NULL_BUNDLE_FROM_GET_BILLING_CONFIG_SERVICE_CALL;
            BillingResult billingResult = u.f6670h;
            int i10 = zzcg.zza;
            tVar.k(zzcg.zzb(zzieVar, 13, billingResult, null, zzil.BROADCAST_ACTION_UNSPECIFIED), this.f6641c);
            this.f6639a.onBillingConfigResponse(billingResult, null);
            return;
        }
        int zzb = com.google.android.gms.internal.play_billing.zzc.zzb(bundle, "BillingClient");
        String zzj = com.google.android.gms.internal.play_billing.zzc.zzj(bundle, "BillingClient");
        BillingResult.Builder newBuilder = BillingResult.newBuilder();
        newBuilder.setResponseCode(zzb);
        newBuilder.setDebugMessage(zzj);
        if (zzb != 0) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "getBillingConfig() failed. Response code: " + zzb);
            BillingResult build = newBuilder.build();
            t tVar2 = this.f6640b;
            zzie zzieVar2 = zzie.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
            int i11 = zzcg.zza;
            tVar2.k(zzcg.zzb(zzieVar2, 13, build, null, zzil.BROADCAST_ACTION_UNSPECIFIED), this.f6641c);
            this.f6639a.onBillingConfigResponse(build, null);
        } else if (!bundle.containsKey("BILLING_CONFIG")) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "getBillingConfig() returned a bundle with neither an error nor a billing config response");
            newBuilder.setResponseCode(6);
            BillingResult build2 = newBuilder.build();
            t tVar3 = this.f6640b;
            zzie zzieVar3 = zzie.MISSING_BILLING_CONFIG_IN_GET_BILLING_CONFIG_RESPONSE;
            int i12 = zzcg.zza;
            tVar3.k(zzcg.zzb(zzieVar3, 13, build2, null, zzil.BROADCAST_ACTION_UNSPECIFIED), this.f6641c);
            this.f6639a.onBillingConfigResponse(build2, null);
        } else {
            try {
                this.f6639a.onBillingConfigResponse(newBuilder.build(), new BillingConfig(bundle.getString("BILLING_CONFIG")));
            } catch (JSONException e10) {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Got a JSON exception trying to decode BillingConfig. \n Exception: ", e10);
                t tVar4 = this.f6640b;
                zzie zzieVar4 = zzie.ERROR_DECODING_BILLING_CONFIG_DATA;
                BillingResult billingResult2 = u.f6670h;
                int i13 = zzcg.zza;
                tVar4.k(zzcg.zzb(zzieVar4, 13, billingResult2, null, zzil.BROADCAST_ACTION_UNSPECIFIED), this.f6641c);
                this.f6639a.onBillingConfigResponse(billingResult2, null);
            }
        }
    }
}
