package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzexf implements zzgdj {
    final /* synthetic */ zzeln zza;
    final /* synthetic */ zzfhu zzb;
    final /* synthetic */ zzfhj zzc;
    final /* synthetic */ zzexg zzd;
    final /* synthetic */ zzexi zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzexf(zzexi zzexiVar, zzeln zzelnVar, zzfhu zzfhuVar, zzfhj zzfhjVar, zzexg zzexgVar) {
        this.zza = zzelnVar;
        this.zzb = zzfhuVar;
        this.zzc = zzfhjVar;
        this.zzd = zzexgVar;
        Objects.requireNonNull(zzexiVar);
        this.zze = zzexiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        zzezr zzezrVar;
        final com.google.android.gms.ads.internal.client.zze zza;
        zzexy zzexyVar;
        zzcvd zzm;
        zzfhx zzfhxVar;
        zzfhu zzfhuVar;
        Executor executor;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzga)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("App open ad failed to load", th2);
        }
        zzexi zzexiVar = this.zze;
        zzezrVar = zzexiVar.zze;
        zzcoc zzcocVar = (zzcoc) zzezrVar.zzd();
        if (zzcocVar == null) {
            zza = zzfdx.zzb(th2, null);
        } else {
            zza = zzcocVar.zzb().zza(th2);
        }
        synchronized (zzexiVar) {
            try {
                zzexiVar.zzj = null;
                if (zzcocVar == null) {
                    zzexyVar = zzexiVar.zzd;
                    zzexyVar.zzdD(zza);
                    zzm = zzexiVar.zzm(this.zzd);
                    ((zzcoc) zzm.zzh()).zzb().zzc().zzh();
                } else {
                    zzcocVar.zzc().zzdD(zza);
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zziB)).booleanValue()) {
                        executor = zzexiVar.zzc;
                        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzexe
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzexy zzexyVar2;
                                zzexyVar2 = zzexf.this.zze.zzd;
                                zzexyVar2.zzdD(zza);
                            }
                        });
                    }
                }
                zzfdt.zzb(zza.zza, th2, "AppOpenAdLoader.onFailure");
                this.zza.zza();
                if (!((Boolean) zzbex.zzc.zze()).booleanValue() || (zzfhuVar = this.zzb) == null) {
                    zzfhxVar = zzexiVar.zzh;
                    zzfhj zzfhjVar = this.zzc;
                    zzfhjVar.zza(zza);
                    zzfhjVar.zzh(th2);
                    zzfhjVar.zzg(false);
                    zzfhxVar.zzc(zzfhjVar.zzm());
                } else {
                    zzfhuVar.zzc(zza);
                    zzfhj zzfhjVar2 = this.zzc;
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
        zzfhx zzfhxVar;
        zzfhu zzfhuVar;
        zzexy zzexyVar;
        zzcra zzcraVar = (zzcra) obj;
        zzexi zzexiVar = this.zze;
        synchronized (zzexiVar) {
            try {
                zzexiVar.zzj = null;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zziB)).booleanValue()) {
                    zzdaj zzo = zzcraVar.zzo();
                    zzexyVar = zzexiVar.zzd;
                    zzo.zzb(zzexyVar);
                }
                this.zza.zzb(zzcraVar);
                if (!((Boolean) zzbex.zzc.zze()).booleanValue() || (zzfhuVar = this.zzb) == null) {
                    zzfhxVar = zzexiVar.zzh;
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
