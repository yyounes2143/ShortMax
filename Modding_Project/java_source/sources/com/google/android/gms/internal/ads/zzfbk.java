package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfbk implements zzgdj {
    final /* synthetic */ zzeln zza;
    final /* synthetic */ zzfhu zzb;
    final /* synthetic */ zzfhj zzc;
    final /* synthetic */ zzfbl zzd;
    final /* synthetic */ zzfbn zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfbk(zzfbn zzfbnVar, zzeln zzelnVar, zzfhu zzfhuVar, zzfhj zzfhjVar, zzfbl zzfblVar) {
        this.zza = zzelnVar;
        this.zzb = zzfhuVar;
        this.zzc = zzfhjVar;
        this.zzd = zzfblVar;
        Objects.requireNonNull(zzfbnVar);
        this.zze = zzfbnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        zzezr zzezrVar;
        final com.google.android.gms.ads.internal.client.zze zza;
        zzfbd zzfbdVar;
        zzdor zzk;
        zzfhx zzfhxVar;
        zzfhu zzfhuVar;
        Executor executor;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzga)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Rewarded ad failed to load", th2);
        }
        zzfbn zzfbnVar = this.zze;
        zzezrVar = zzfbnVar.zze;
        zzdos zzdosVar = (zzdos) zzezrVar.zzd();
        if (zzdosVar == null) {
            zza = zzfdx.zzb(th2, null);
        } else {
            zza = zzdosVar.zzb().zza(th2);
        }
        synchronized (zzfbnVar) {
            try {
                if (zzdosVar == null) {
                    zzfbdVar = zzfbnVar.zzd;
                    zzfbdVar.zzdD(zza);
                    zzk = zzfbnVar.zzk(this.zzd);
                    zzk.zze().zzb().zzc().zzh();
                } else {
                    zzdosVar.zza().zzdD(zza);
                    executor = zzfbnVar.zzb;
                    executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbi
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzfbd zzfbdVar2;
                            zzfbdVar2 = zzfbk.this.zze.zzd;
                            zzfbdVar2.zzdD(zza);
                        }
                    });
                }
                zzfdt.zzb(zza.zza, th2, "RewardedAdLoader.onFailure");
                this.zza.zza();
                if (!((Boolean) zzbex.zzc.zze()).booleanValue() || (zzfhuVar = this.zzb) == null) {
                    zzfhxVar = zzfbnVar.zzg;
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
        zzfbd zzfbdVar;
        Executor executor;
        final zzfbd zzfbdVar2;
        zzfbd zzfbdVar3;
        zzfhx zzfhxVar;
        zzfhu zzfhuVar;
        zzfbn zzfbnVar = this.zze;
        zzdon zzdonVar = (zzdon) obj;
        synchronized (zzfbnVar) {
            try {
                zzdaj zzo = zzdonVar.zzo();
                zzfbdVar = zzfbnVar.zzd;
                zzo.zzd(zzfbdVar);
                this.zza.zzb(zzdonVar);
                executor = zzfbnVar.zzb;
                zzfbdVar2 = zzfbnVar.zzd;
                Objects.requireNonNull(zzfbdVar2);
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbj
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzfbd.this.zzu();
                    }
                });
                zzfbdVar3 = zzfbnVar.zzd;
                zzfbdVar3.onAdMetadataChanged();
                if (!((Boolean) zzbex.zzc.zze()).booleanValue() || (zzfhuVar = this.zzb) == null) {
                    zzfhxVar = zzfbnVar.zzg;
                    zzfhj zzfhjVar = this.zzc;
                    zzfhjVar.zzb(zzdonVar.zzq().zzb);
                    zzfhjVar.zzd(zzdonVar.zzm().zzg());
                    zzfhjVar.zzg(true);
                    zzfhxVar.zzc(zzfhjVar.zzm());
                } else {
                    zzfhuVar.zzg(zzdonVar.zzq().zzb);
                    zzfhuVar.zze(zzdonVar.zzm().zzg());
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
