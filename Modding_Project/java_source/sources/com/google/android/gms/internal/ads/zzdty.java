package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzdty extends zzbxb {
    final /* synthetic */ zzdua zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdty(zzdua zzduaVar) {
        Objects.requireNonNull(zzduaVar);
        this.zza = zzduaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zze(int i10) throws RemoteException {
        zzdtp zzdtpVar;
        long j10;
        zzdua zzduaVar = this.zza;
        zzdtpVar = zzduaVar.zzb;
        j10 = zzduaVar.zza;
        zzdtpVar.zzm(j10, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        zzdtp zzdtpVar;
        long j10;
        zzdua zzduaVar = this.zza;
        zzdtpVar = zzduaVar.zzb;
        j10 = zzduaVar.zza;
        zzdtpVar.zzm(j10, zzeVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzg() throws RemoteException {
        zzdtp zzdtpVar;
        long j10;
        zzdua zzduaVar = this.zza;
        zzdtpVar = zzduaVar.zzb;
        j10 = zzduaVar.zza;
        zzdtpVar.zzp(j10);
    }
}
