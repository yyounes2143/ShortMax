package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdtv extends com.google.android.gms.ads.internal.client.zzbj {
    final /* synthetic */ zzdtp zza;
    final /* synthetic */ zzdtw zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdtv(zzdtw zzdtwVar, zzdtp zzdtpVar) {
        this.zza = zzdtpVar;
        Objects.requireNonNull(zzdtwVar);
        this.zzb = zzdtwVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzc() throws RemoteException {
        long j10;
        zzdtw zzdtwVar = this.zzb;
        zzdtp zzdtpVar = this.zza;
        j10 = zzdtwVar.zza;
        zzdtpVar.zzb(j10);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzd() throws RemoteException {
        long j10;
        zzdtw zzdtwVar = this.zzb;
        zzdtp zzdtpVar = this.zza;
        j10 = zzdtwVar.zza;
        zzdtpVar.zzc(j10);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zze(int i10) throws RemoteException {
        long j10;
        zzdtw zzdtwVar = this.zzb;
        zzdtp zzdtpVar = this.zza;
        j10 = zzdtwVar.zza;
        zzdtpVar.zzd(j10, i10);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        long j10;
        zzdtw zzdtwVar = this.zzb;
        zzdtp zzdtpVar = this.zza;
        j10 = zzdtwVar.zza;
        zzdtpVar.zzd(j10, zzeVar.zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzi() throws RemoteException {
        long j10;
        zzdtw zzdtwVar = this.zzb;
        zzdtp zzdtpVar = this.zza;
        j10 = zzdtwVar.zza;
        zzdtpVar.zze(j10);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzj() throws RemoteException {
        long j10;
        zzdtw zzdtwVar = this.zzb;
        zzdtp zzdtpVar = this.zza;
        j10 = zzdtwVar.zza;
        zzdtpVar.zzg(j10);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzg() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzh() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzk() {
    }
}
