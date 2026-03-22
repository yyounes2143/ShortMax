package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.VideoController;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdoi extends VideoController.VideoLifecycleCallbacks {
    private final zzdit zza;

    public zzdoi(zzdit zzditVar) {
        this.zza = zzditVar;
    }

    @Nullable
    private static com.google.android.gms.ads.internal.client.zzeg zza(zzdit zzditVar) {
        com.google.android.gms.ads.internal.client.zzed zzj = zzditVar.zzj();
        if (zzj == null) {
            return null;
        }
        try {
            return zzj.zzi();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoEnd() {
        com.google.android.gms.ads.internal.client.zzeg zza = zza(this.zza);
        if (zza == null) {
            return;
        }
        try {
            zza.zze();
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Unable to call onVideoEnd()", e10);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoPause() {
        com.google.android.gms.ads.internal.client.zzeg zza = zza(this.zza);
        if (zza == null) {
            return;
        }
        try {
            zza.zzg();
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Unable to call onVideoEnd()", e10);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoStart() {
        com.google.android.gms.ads.internal.client.zzeg zza = zza(this.zza);
        if (zza == null) {
            return;
        }
        try {
            zza.zzi();
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Unable to call onVideoEnd()", e10);
        }
    }
}
