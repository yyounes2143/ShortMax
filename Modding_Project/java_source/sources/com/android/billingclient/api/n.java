package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import java.lang.ref.WeakReference;
import java.util.concurrent.CancellationException;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
final class n extends com.google.android.gms.internal.play_billing.zzan {

    /* renamed from: a  reason: collision with root package name */
    final WeakReference f6650a;

    /* renamed from: b  reason: collision with root package name */
    final ResultReceiver f6651b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ n(WeakReference weakReference, ResultReceiver resultReceiver, zzbp zzbpVar) {
        this.f6650a = weakReference;
        this.f6651b = resultReceiver;
    }

    @Override // com.google.android.gms.internal.play_billing.zzao
    public final void zza(Bundle bundle) throws RemoteException {
        ResultReceiver resultReceiver = this.f6651b;
        if (resultReceiver == null) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Unable to send result for in-app messaging");
        } else if (bundle == null) {
            resultReceiver.send(0, null);
        } else {
            Activity activity = (Activity) this.f6650a.get();
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("KEY_LAUNCH_INTENT");
            if (activity != null && pendingIntent != null) {
                try {
                    Intent intent = new Intent(activity, ProxyBillingActivity.class);
                    intent.putExtra("in_app_message_result_receiver", resultReceiver);
                    intent.putExtra("IN_APP_MESSAGE_INTENT", pendingIntent);
                    activity.startActivity(intent);
                    return;
                } catch (CancellationException e10) {
                    this.f6651b.send(0, null);
                    com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Exception caught while launching intent for in-app messaging.", e10);
                    return;
                }
            }
            resultReceiver.send(0, null);
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Unable to launch intent for in-app messaging");
        }
    }
}
