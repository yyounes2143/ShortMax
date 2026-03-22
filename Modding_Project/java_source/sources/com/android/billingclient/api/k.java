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
final class k extends com.google.android.gms.internal.play_billing.zzae {

    /* renamed from: a  reason: collision with root package name */
    final WeakReference f6642a;

    /* renamed from: b  reason: collision with root package name */
    final ResultReceiver f6643b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ k(WeakReference weakReference, ResultReceiver resultReceiver, zzbp zzbpVar) {
        this.f6642a = weakReference;
        this.f6643b = resultReceiver;
    }

    @Override // com.google.android.gms.internal.play_billing.zzaf
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            this.f6643b.send(6, null);
        } else if (!bundle.containsKey("RESPONSE_CODE")) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Response bundle doesn't contain a response code");
            this.f6643b.send(6, bundle);
        } else {
            int zzb = com.google.android.gms.internal.play_billing.zzc.zzb(bundle, "BillingClient");
            if (zzb != 0) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Unable to launch intent for external offer dialog" + zzb);
                this.f6643b.send(zzb, bundle);
                return;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("EXTERNAL_PAYMENT_DIALOG_INTENT");
            if (pendingIntent == null) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "The PendingIntent for the external offer dialog is null");
                Bundle bundle2 = new Bundle();
                bundle2.putInt("RESPONSE_CODE", 6);
                bundle2.putString("DEBUG_MESSAGE", "An internal error occurred.");
                this.f6643b.send(6, bundle2);
                return;
            }
            try {
                Activity activity = (Activity) this.f6642a.get();
                Intent intent = new Intent(activity, ProxyBillingActivityV2.class);
                intent.putExtra("external_payment_dialog_result_receiver", this.f6643b);
                intent.putExtra("external_payment_dialog_pending_intent", pendingIntent);
                activity.startActivity(intent);
            } catch (RuntimeException e10) {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Runtime error while launching intent for the external offer dialog.", e10);
                Bundle bundle3 = new Bundle();
                bundle3.putInt("RESPONSE_CODE", 6);
                bundle3.putString("DEBUG_MESSAGE", "An internal error occurred.");
                bundle3.putInt("INTERNAL_LOG_ERROR_REASON", zzie.RUNTIME_EXCEPTION_ON_LAUNCHING_EXTERNAL_PAYMENT_DIALOG_INTENT.zza());
                bundle3.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", String.format("%s: %s", e10.getClass().getName(), zzbj.zzb(e10.getMessage())));
                this.f6643b.send(6, bundle3);
            }
        }
    }
}
