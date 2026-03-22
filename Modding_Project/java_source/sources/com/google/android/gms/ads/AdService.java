package com.google.android.gms.ads;

import android.app.IntentService;
import android.content.Intent;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzbpm;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
@KeepForSdk
/* loaded from: classes4.dex */
public class AdService extends IntentService {
    @NonNull
    @KeepForSdk
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdService";

    public AdService() {
        super("AdService");
    }

    @Override // android.app.IntentService
    protected final void onHandleIntent(@NonNull Intent intent) {
        try {
            zzbb.zza().zzo(this, new zzbpm()).zze(intent);
        } catch (RemoteException e10) {
            zzo.zzg("RemoteException calling handleNotificationIntent: ".concat(e10.toString()));
        }
    }
}
