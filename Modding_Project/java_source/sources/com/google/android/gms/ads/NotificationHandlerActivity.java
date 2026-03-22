package com.google.android.gms.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzbpm;
import com.google.android.gms.internal.ads.zzbtj;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
@KeepForSdk
/* loaded from: classes4.dex */
public final class NotificationHandlerActivity extends Activity {
    @NonNull
    @KeepForSdk
    public static final String CLASS_NAME = "com.google.android.gms.ads.NotificationHandlerActivity";

    @Override // android.app.Activity
    protected final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        try {
            zzbtj zzo = zzbb.zza().zzo(this, new zzbpm());
            if (zzo == null) {
                zzo.zzg("OfflineUtils is null");
            } else {
                zzo.zze(getIntent());
            }
        } catch (RemoteException e10) {
            zzo.zzg("RemoteException calling handleNotificationIntent: ".concat(e10.toString()));
        }
    }

    @Override // android.app.Activity
    protected final void onResume() {
        super.onResume();
        finish();
    }
}
