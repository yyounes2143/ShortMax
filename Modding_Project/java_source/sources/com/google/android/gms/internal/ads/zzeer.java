package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeer implements zzeds {
    private final Context zza;
    private final zzcpx zzb;
    private final Executor zzc;

    public zzeer(Context context, zzcpx zzcpxVar, Executor executor) {
        this.zza = context;
        this.zzb = zzcpxVar;
        this.zzc = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzeds
    public final /* bridge */ /* synthetic */ Object zza(zzfcn zzfcnVar, final zzfca zzfcaVar, zzedp zzedpVar) throws zzfdd, zzehf {
        final View zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzij)).booleanValue() && zzfcaVar.zzag) {
            zzbpz zzc = ((zzfdu) zzedpVar.zzb).zzc();
            if (zzc != null) {
                try {
                    zza = (View) ObjectWrapper.unwrap(zzc.zze());
                    boolean zzf = zzc.zzf();
                    if (zza != null) {
                        if (zzf) {
                            try {
                                zza = (View) zzgdn.zzn(zzgdn.zzh(null), new zzgcu() { // from class: com.google.android.gms.internal.ads.zzeep
                                    @Override // com.google.android.gms.internal.ads.zzgcu
                                    public final com.google.common.util.concurrent.e zza(Object obj) {
                                        com.google.common.util.concurrent.e zzh;
                                        zzh = zzgdn.zzh(zzcqm.zza(zzeer.this.zza, zza, zzfcaVar));
                                        return zzh;
                                    }
                                }, zzcaf.zzf).get();
                            } catch (InterruptedException | ExecutionException e10) {
                                throw new zzfdd(e10);
                            }
                        }
                    } else {
                        throw new zzfdd(new Exception("BannerAdapterWrapper interscrollerView should not be null"));
                    }
                } catch (RemoteException e11) {
                    throw new zzfdd(e11);
                }
            } else {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad.");
                throw new zzfdd(new Exception("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."));
            }
        } else {
            zza = ((zzfdu) zzedpVar.zzb).zza();
        }
        zzcpx zzcpxVar = this.zzb;
        zzcrq zzcrqVar = new zzcrq(zzfcnVar, zzfcaVar, zzedpVar.zza);
        final zzfdu zzfduVar = (zzfdu) zzedpVar.zzb;
        Objects.requireNonNull(zzfduVar);
        zzcot zza2 = zzcpxVar.zza(zzcrqVar, new zzcoz(zza, null, new zzcqy() { // from class: com.google.android.gms.internal.ads.zzeeq
            @Override // com.google.android.gms.internal.ads.zzcqy
            public final com.google.android.gms.ads.internal.client.zzed zza() {
                return zzfdu.this.zzb();
            }
        }, (zzfcb) zzfcaVar.zzu.get(0)));
        zza2.zzh().zza(zza);
        zza2.zzd().zzo(new zzcmg(zzfduVar), this.zzc);
        ((zzefd) zzedpVar.zzc).zzc(zza2.zzk());
        return zza2.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzeds
    public final void zzb(zzfcn zzfcnVar, zzfca zzfcaVar, zzedp zzedpVar) throws zzfdd {
        com.google.android.gms.ads.internal.client.zzr zza;
        zzfcw zzfcwVar = zzfcnVar.zza.zza;
        com.google.android.gms.ads.internal.client.zzr zzrVar = zzfcwVar.zze;
        if (zzrVar.zzn) {
            zza = new com.google.android.gms.ads.internal.client.zzr(this.zza, com.google.android.gms.ads.zzc.zzd(zzrVar.zze, zzrVar.zzb));
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzij)).booleanValue() && zzfcaVar.zzag) {
                zza = new com.google.android.gms.ads.internal.client.zzr(this.zza, com.google.android.gms.ads.zzc.zze(zzrVar.zze, zzrVar.zzb));
            } else {
                zza = zzfdc.zza(this.zza, zzfcaVar.zzu);
            }
        }
        com.google.android.gms.ads.internal.client.zzr zzrVar2 = zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzij)).booleanValue() && zzfcaVar.zzag) {
            ((zzfdu) zzedpVar.zzb).zzn(this.zza, zzrVar2, zzfcwVar.zzd, zzfcaVar.zzv.toString(), com.google.android.gms.ads.internal.util.zzbs.zzm(zzfcaVar.zzs), (zzbpw) zzedpVar.zzc);
            return;
        }
        ((zzfdu) zzedpVar.zzb).zzm(this.zza, zzrVar2, zzfcwVar.zzd, zzfcaVar.zzv.toString(), com.google.android.gms.ads.internal.util.zzbs.zzm(zzfcaVar.zzs), (zzbpw) zzedpVar.zzc);
    }
}
