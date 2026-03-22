package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzdtz extends zzbwx {
    final /* synthetic */ zzdua zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdtz(zzdua zzduaVar) {
        Objects.requireNonNull(zzduaVar);
        this.zza = zzduaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zze() throws RemoteException {
        zzdtp zzdtpVar;
        long j10;
        zzdua zzduaVar = this.zza;
        zzdtpVar = zzduaVar.zzb;
        j10 = zzduaVar.zza;
        zzdtpVar.zzj(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzf() throws RemoteException {
        zzdtp zzdtpVar;
        long j10;
        zzdua zzduaVar = this.zza;
        zzdtpVar = zzduaVar.zzb;
        j10 = zzduaVar.zza;
        zzdtpVar.zzo(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzg() throws RemoteException {
        zzdtp zzdtpVar;
        long j10;
        zzdua zzduaVar = this.zza;
        zzdtpVar = zzduaVar.zzb;
        j10 = zzduaVar.zza;
        zzdtpVar.zzk(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzh(int i10) throws RemoteException {
        zzdtp zzdtpVar;
        long j10;
        zzdua zzduaVar = this.zza;
        zzdtpVar = zzduaVar.zzb;
        j10 = zzduaVar.zza;
        zzdtpVar.zzn(j10, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzi(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        zzdtp zzdtpVar;
        long j10;
        zzdua zzduaVar = this.zza;
        zzdtpVar = zzduaVar.zzb;
        j10 = zzduaVar.zza;
        zzdtpVar.zzn(j10, zzeVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzj() throws RemoteException {
        zzdtp zzdtpVar;
        long j10;
        zzdua zzduaVar = this.zza;
        zzdtpVar = zzduaVar.zzb;
        j10 = zzduaVar.zza;
        zzdtpVar.zzr(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzk(zzbws zzbwsVar) throws RemoteException {
        zzdtp zzdtpVar;
        long j10;
        zzdua zzduaVar = this.zza;
        zzdtpVar = zzduaVar.zzb;
        j10 = zzduaVar.zza;
        zzdtpVar.zzl(j10, zzbwsVar);
    }
}
