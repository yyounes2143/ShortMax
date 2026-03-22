package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzdzv implements zzgdj {
    final /* synthetic */ zzbva zza;
    final /* synthetic */ zzbvj zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdzv(zzeab zzeabVar, zzbvj zzbvjVar, zzbva zzbvaVar) {
        this.zzb = zzbvjVar;
        this.zza = zzbvaVar;
        Objects.requireNonNull(zzeabVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        try {
            this.zzb.zze(com.google.android.gms.ads.internal.util.zzbb.zzb(th2));
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.zze.zzb("Service can't call client", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        try {
            this.zzb.zzf((String) obj, this.zza);
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.zze.zzb("Service can't call client", e10);
        }
    }
}
