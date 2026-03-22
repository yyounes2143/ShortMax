package com.google.android.gms.internal.ads;

import android.os.Binder;
import android.os.Bundle;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdxo {
    private final ScheduledExecutorService zza;
    private final zzgdy zzb;
    private final zzgdy zzc;
    private final zzdyk zzd;
    private final zzhgl zze;

    public zzdxo(ScheduledExecutorService scheduledExecutorService, zzgdy zzgdyVar, zzgdy zzgdyVar2, zzdyk zzdykVar, zzhgl zzhglVar) {
        this.zza = scheduledExecutorService;
        this.zzb = zzgdyVar;
        this.zzc = zzgdyVar2;
        this.zzd = zzdykVar;
        this.zze = zzhglVar;
    }

    public static /* synthetic */ zzdyy zza(zzdxo zzdxoVar, zzbvq zzbvqVar) {
        return (zzdyy) zzdxoVar.zzd.zza(zzbvqVar).get(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfS)).intValue(), TimeUnit.SECONDS);
    }

    public static /* synthetic */ com.google.common.util.concurrent.e zzb(zzdxo zzdxoVar, final zzbvq zzbvqVar, int i10, Throwable th2) {
        Bundle bundle;
        if (zzbvqVar != null && (bundle = zzbvqVar.zzm) != null) {
            bundle.putBoolean("ls", true);
        }
        return zzgdn.zzn(((zzeab) zzdxoVar.zze.zzb()).zzd(zzbvqVar, i10), new zzgcu() { // from class: com.google.android.gms.internal.ads.zzdxl
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj) {
                return zzgdn.zzh(new zzdyy((InputStream) obj, zzbvq.this));
            }
        }, zzdxoVar.zzb);
    }

    public final com.google.common.util.concurrent.e zzc(final zzbvq zzbvqVar) {
        com.google.common.util.concurrent.e zza;
        String str = zzbvqVar.zzd;
        com.google.android.gms.ads.internal.zzv.zzr();
        if (com.google.android.gms.ads.internal.util.zzs.zzD(str)) {
            zza = zzgdn.zzg(new zzdyx(1));
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhK)).booleanValue()) {
                zza = this.zzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdxm
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzdxo.zza(zzdxo.this, zzbvqVar);
                    }
                });
            } else {
                zza = this.zzd.zza(zzbvqVar);
            }
        }
        final int callingUid = Binder.getCallingUid();
        zzgde zzw = zzgde.zzw(zza);
        zzbcv zzbcvVar = zzbde.zzfS;
        return (zzgde) zzgdn.zzf((zzgde) zzgdn.zzo(zzw, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcvVar)).intValue(), TimeUnit.SECONDS, this.zza), Throwable.class, new zzgcu() { // from class: com.google.android.gms.internal.ads.zzdxn
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj) {
                return zzdxo.zzb(zzdxo.this, zzbvqVar, callingUid, (Throwable) obj);
            }
        }, this.zzb);
    }
}
