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
final class zzay extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AlternativeBillingOnlyInformationDialogListener f6697a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ b f6698b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzay(b bVar, Handler handler, AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener) {
        super(handler);
        this.f6697a = alternativeBillingOnlyInformationDialogListener;
        Objects.requireNonNull(bVar);
        this.f6698b = bVar;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i10, @Nullable Bundle bundle) {
        zzie zzieVar;
        BillingResult.Builder newBuilder = BillingResult.newBuilder();
        newBuilder.setResponseCode(i10);
        if (i10 != 0) {
            if (bundle == null) {
                this.f6698b.P(this.f6697a, u.f6670h, zzie.NULL_BUNDLE_IN_ALTERNATIVE_BILLING_ONLY_INFORMATION_DIALOG_RECEIVER, null);
                return;
            }
            newBuilder.setDebugMessage(com.google.android.gms.internal.play_billing.zzc.zzj(bundle, "BillingClient"));
            int i11 = bundle.getInt("INTERNAL_LOG_ERROR_REASON");
            b bVar = this.f6698b;
            if (i11 != 0) {
                zzieVar = zzie.zzb(i11);
            } else {
                zzieVar = zzie.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
            }
            BillingResult build = newBuilder.build();
            String string = bundle.getString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS");
            int i12 = zzcg.zza;
            bVar.R(zzcg.zzb(zzieVar, 16, build, string, zzil.BROADCAST_ACTION_UNSPECIFIED));
        }
        this.f6697a.onAlternativeBillingOnlyInformationDialogResponse(newBuilder.build());
    }
}
