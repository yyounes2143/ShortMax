package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzelj {
    private final zzelo zza;
    private final String zzb;
    @Nullable
    private com.google.android.gms.ads.internal.client.zzea zzc;

    public zzelj(zzelo zzeloVar, String str) {
        this.zza = zzeloVar;
        this.zzb = str;
    }

    @Nullable
    public final synchronized String zza() {
        String str;
        str = null;
        try {
            com.google.android.gms.ads.internal.client.zzea zzeaVar = this.zzc;
            if (zzeaVar != null) {
                str = zzeaVar.zzg();
            }
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
            return null;
        }
        return str;
    }

    @Nullable
    public final synchronized String zzb() {
        String str;
        str = null;
        try {
            com.google.android.gms.ads.internal.client.zzea zzeaVar = this.zzc;
            if (zzeaVar != null) {
                str = zzeaVar.zzg();
            }
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
            return null;
        }
        return str;
    }

    public final synchronized void zzd(com.google.android.gms.ads.internal.client.zzm zzmVar, int i10) throws RemoteException {
        this.zzc = null;
        zzelp zzelpVar = new zzelp(i10);
        zzeli zzeliVar = new zzeli(this);
        this.zza.zzb(zzmVar, this.zzb, zzelpVar, zzeliVar);
    }

    public final synchronized boolean zze() throws RemoteException {
        return this.zza.zza();
    }
}
