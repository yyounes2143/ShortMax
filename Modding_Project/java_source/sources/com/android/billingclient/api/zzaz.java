package com.android.billingclient.api;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import androidx.annotation.Nullable;
import com.android.billingclient.api.BillingResult;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzil;
import java.util.Objects;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
final class zzaz extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ExternalOfferInformationDialogListener f6699a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ b f6700b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaz(b bVar, Handler handler, ExternalOfferInformationDialogListener externalOfferInformationDialogListener) {
        super(handler);
        this.f6699a = externalOfferInformationDialogListener;
        Objects.requireNonNull(bVar);
        this.f6700b = bVar;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i10, @Nullable Bundle bundle) {
        zzie zzieVar;
        BillingResult.Builder newBuilder = BillingResult.newBuilder();
        newBuilder.setResponseCode(i10);
        if (i10 != 0) {
            if (bundle == null) {
                this.f6700b.N(this.f6699a, u.f6670h, zzie.NULL_BUNDLE_IN_EXTERNAL_PAYMENT_INFORMATION_DIALOG_RECEIVER, null);
                return;
            }
            newBuilder.setDebugMessage(com.google.android.gms.internal.play_billing.zzc.zzj(bundle, "BillingClient"));
            int i11 = bundle.getInt("INTERNAL_LOG_ERROR_REASON");
            b bVar = this.f6700b;
            if (i11 != 0) {
                zzieVar = zzie.zzb(i11);
            } else {
                zzieVar = zzie.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
            }
            BillingResult build = newBuilder.build();
            String string = bundle.getString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS");
            int i12 = zzcg.zza;
            bVar.R(zzcg.zzb(zzieVar, 25, build, string, zzil.BROADCAST_ACTION_UNSPECIFIED));
        }
        this.f6699a.onExternalOfferInformationDialogResponse(newBuilder.build());
    }
}
