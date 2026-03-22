package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzelu implements zzgdj {
    final /* synthetic */ zzeln zza;
    final /* synthetic */ zzfhu zzb;
    final /* synthetic */ zzfhj zzc;
    final /* synthetic */ zzdhb zzd;
    final /* synthetic */ zzelv zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzelu(zzelv zzelvVar, zzeln zzelnVar, zzfhu zzfhuVar, zzfhj zzfhjVar, zzdhb zzdhbVar) {
        this.zza = zzelnVar;
        this.zzb = zzfhuVar;
        this.zzc = zzfhjVar;
        this.zzd = zzdhbVar;
        Objects.requireNonNull(zzelvVar);
        this.zze = zzelvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        zzche zzcheVar;
        zzfhx zzfhxVar;
        zzfhu zzfhuVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzga)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Native ad failed to load", th2);
        }
        zzdhb zzdhbVar = this.zzd;
        final com.google.android.gms.ads.internal.client.zze zza = zzdhbVar.zza().zza(th2);
        zzdhbVar.zzb().zzdD(zza);
        zzelv zzelvVar = this.zze;
        zzcheVar = zzelvVar.zzb;
        zzcheVar.zzA().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzelt
            @Override // java.lang.Runnable
            public final void run() {
                zzell zzellVar;
                zzellVar = zzelu.this.zze.zzd;
                zzellVar.zza().zzdD(zza);
            }
        });
        zzfdt.zzb(zza.zza, th2, "NativeAdLoader.onFailure");
        this.zza.zza();
        if (!((Boolean) zzbex.zzc.zze()).booleanValue() || (zzfhuVar = this.zzb) == null) {
            zzfhxVar = zzelvVar.zze;
            zzfhj zzfhjVar = this.zzc;
            zzfhjVar.zza(zza);
            zzfhjVar.zzh(th2);
            zzfhjVar.zzg(false);
            zzfhxVar.zzc(zzfhjVar.zzm());
            return;
        }
        zzfhuVar.zzc(zza);
        zzfhj zzfhjVar2 = this.zzc;
        zzfhjVar2.zzh(th2);
        zzfhjVar2.zzg(false);
        zzfhuVar.zza(zzfhjVar2);
        zzfhuVar.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzell zzellVar;
        zzche zzcheVar;
        zzfhx zzfhxVar;
        zzfhu zzfhuVar;
        zzelv zzelvVar = this.zze;
        zzcra zzcraVar = (zzcra) obj;
        synchronized (zzelvVar) {
            try {
                zzdaj zzo = zzcraVar.zzo();
                zzellVar = zzelvVar.zzd;
                zzo.zza(zzellVar.zzd());
                this.zza.zzb(zzcraVar);
                zzcheVar = zzelvVar.zzb;
                zzcheVar.zzA().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzels
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzell zzellVar2;
                        zzellVar2 = zzelu.this.zze.zzd;
                        zzellVar2.zzb().zzu();
                    }
                });
                if (!((Boolean) zzbex.zzc.zze()).booleanValue() || (zzfhuVar = this.zzb) == null) {
                    zzfhxVar = zzelvVar.zze;
                    zzfhj zzfhjVar = this.zzc;
                    zzfhjVar.zzb(zzcraVar.zzq().zzb);
                    zzfhjVar.zzd(zzcraVar.zzm().zzg());
                    zzfhjVar.zzg(true);
                    zzfhxVar.zzc(zzfhjVar.zzm());
                } else {
                    zzfhuVar.zzg(zzcraVar.zzq().zzb);
                    zzfhuVar.zze(zzcraVar.zzm().zzg());
                    zzfhj zzfhjVar2 = this.zzc;
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
