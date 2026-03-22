package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import com.google.android.gms.internal.play_billing.zzbj;
import com.google.android.gms.internal.play_billing.zzie;
import java.lang.ref.WeakReference;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
final class i extends com.google.android.gms.internal.play_billing.zzaa {

    /* renamed from: a  reason: collision with root package name */
    final WeakReference f6637a;

    /* renamed from: b  reason: collision with root package name */
    final ResultReceiver f6638b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ i(WeakReference weakReference, ResultReceiver resultReceiver, zzbp zzbpVar) {
        this.f6637a = weakReference;
        this.f6638b = resultReceiver;
    }

    @Override // com.google.android.gms.internal.play_billing.zzab
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            this.f6638b.send(6, null);
        } else if (!bundle.containsKey("RESPONSE_CODE")) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Response bundle doesn't contain a response code");
            this.f6638b.send(6, bundle);
        } else {
            int zzb = com.google.android.gms.internal.play_billing.zzc.zzb(bundle, "BillingClient");
            if (zzb != 0) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Unable to launch intent for alternative billing only dialog" + zzb);
                this.f6638b.send(zzb, bundle);
                return;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT");
            if (pendingIntent == null) {
                com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "User has acknowledged the alternative billing only dialog before.");
                this.f6638b.send(0, bundle);
                return;
            }
            try {
                Activity activity = (Activity) this.f6637a.get();
                Intent intent = new Intent(activity, ProxyBillingActivityV2.class);
                intent.putExtra("alternative_billing_only_dialog_result_receiver", this.f6638b);
                intent.putExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT", pendingIntent);
                activity.startActivity(intent);
            } catch (RuntimeException e10) {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Runtime error while launching intent for alternative billing only dialog.", e10);
                Bundle bundle2 = new Bundle();
                bundle2.putInt("RESPONSE_CODE", 6);
                bundle2.putString("DEBUG_MESSAGE", "An internal error occurred.");
                bundle2.putInt("INTERNAL_LOG_ERROR_REASON", zzie.RUNTIME_EXCEPTION_ON_LAUNCHING_ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT.zza());
                bundle2.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", String.format("%s: %s", e10.getClass().getName(), zzbj.zzb(e10.getMessage())));
                this.f6638b.send(6, bundle2);
            }
        }
    }
}
