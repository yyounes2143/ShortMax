package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeyl implements zzgdj {
    final /* synthetic */ zzfhu zza;
    final /* synthetic */ zzfhj zzb;
    final /* synthetic */ zzcpx zzc;
    final /* synthetic */ zzeym zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeyl(zzeym zzeymVar, zzfhu zzfhuVar, zzfhj zzfhjVar, zzcpx zzcpxVar) {
        this.zza = zzfhuVar;
        this.zzb = zzfhjVar;
        this.zzc = zzcpxVar;
        Objects.requireNonNull(zzeymVar);
        this.zzd = zzeymVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        boolean z10;
        zzfhx zzfhxVar;
        zzfhu zzfhuVar;
        zzcyv zzcyvVar;
        zzdbb zzdbbVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzga)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Banner ad failed to load", th2);
        }
        zzeym zzeymVar = this.zzd;
        synchronized (zzeymVar) {
            try {
                zzcpx zzcpxVar = this.zzc;
                com.google.android.gms.ads.internal.client.zze zza = zzcpxVar.zzc().zza(th2);
                zzeymVar.zzn = zza;
                zzcpxVar.zze().zzdD(zza);
                zzfdt.zzb(zza.zza, th2, "BannerAdLoader.onFailure");
                z10 = zzeymVar.zzm;
                if (z10) {
                    zzeymVar.zzt();
                    zzcyvVar = zzeymVar.zzh;
                    zzdbbVar = zzeymVar.zzj;
                    zzcyvVar.zzd(zzdbbVar.zzc());
                }
                if (!((Boolean) zzbex.zzc.zze()).booleanValue() || (zzfhuVar = this.zza) == null) {
                    zzfhxVar = zzeymVar.zzi;
                    zzfhj zzfhjVar = this.zzb;
                    zzfhjVar.zza(zza);
                    zzfhjVar.zzh(th2);
                    zzfhjVar.zzg(false);
                    zzfhxVar.zzc(zzfhjVar.zzm());
                } else {
                    zzfhuVar.zzc(zza);
                    zzfhj zzfhjVar2 = this.zzb;
                    zzfhjVar2.zzh(th2);
                    zzfhjVar2.zzg(false);
                    zzfhuVar.zza(zzfhjVar2);
                    zzfhuVar.zzh();
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        boolean z10;
        zzfhx zzfhxVar;
        zzfhu zzfhuVar;
        zzeym zzeymVar = this.zzd;
        zzcos zzcosVar = (zzcos) obj;
        synchronized (zzeymVar) {
            try {
                z10 = zzeymVar.zzm;
                if (z10) {
                    zzeymVar.zzq();
                }
                if (!((Boolean) zzbex.zzc.zze()).booleanValue() || (zzfhuVar = this.zza) == null) {
                    zzfhxVar = zzeymVar.zzi;
                    zzfhj zzfhjVar = this.zzb;
                    zzfhjVar.zzb(zzcosVar.zzq().zzb);
                    zzfhjVar.zzd(zzcosVar.zzm().zzg());
                    zzfhjVar.zzg(true);
                    zzfhxVar.zzc(zzfhjVar.zzm());
                } else {
                    zzfhuVar.zzg(zzcosVar.zzq().zzb);
                    zzfhuVar.zze(zzcosVar.zzm().zzg());
                    zzfhj zzfhjVar2 = this.zzb;
                    zzfhjVar2.zzg(true);
                    zzfhuVar.zza(zzfhjVar2);
                    zzfhuVar.zzh();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
