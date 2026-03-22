package com.google.android.gms.internal.ads;

import android.os.Binder;
import android.os.Bundle;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdwu {
    private final zzgdy zza;
    private final zzgdy zzb;
    private final zzdye zzc;
    private final zzhgl zzd;

    public zzdwu(zzgdy zzgdyVar, zzgdy zzgdyVar2, zzdye zzdyeVar, zzhgl zzhglVar) {
        this.zza = zzgdyVar;
        this.zzb = zzgdyVar2;
        this.zzc = zzdyeVar;
        this.zzd = zzhglVar;
    }

    public static /* synthetic */ zzdyy zza(zzdwu zzdwuVar, zzbvq zzbvqVar) {
        return (zzdyy) zzdwuVar.zzc.zza(zzbvqVar).get(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfS)).intValue(), TimeUnit.SECONDS);
    }

    public static /* synthetic */ com.google.common.util.concurrent.e zzb(zzdwu zzdwuVar, final zzbvq zzbvqVar, int i10, zzdyx zzdyxVar) {
        Bundle bundle;
        if (zzbvqVar != null && (bundle = zzbvqVar.zzm) != null) {
            bundle.putBoolean("ls", true);
        }
        return zzgdn.zzn(((zzeab) zzdwuVar.zzd.zzb()).zzc(zzbvqVar, i10), new zzgcu() { // from class: com.google.android.gms.internal.ads.zzdwq
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj) {
                return zzgdn.zzh(new zzdyy((InputStream) obj, zzbvq.this));
            }
        }, zzdwuVar.zzb);
    }

    public final com.google.common.util.concurrent.e zzc(final zzbvq zzbvqVar) {
        com.google.common.util.concurrent.e zzf;
        String str = zzbvqVar.zzd;
        com.google.android.gms.ads.internal.zzv.zzr();
        if (com.google.android.gms.ads.internal.util.zzs.zzD(str)) {
            zzf = zzgdn.zzg(new zzdyx(1));
        } else {
            zzf = zzgdn.zzf(this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdwr
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzdwu.zza(zzdwu.this, zzbvqVar);
                }
            }), ExecutionException.class, new zzgcu() { // from class: com.google.android.gms.internal.ads.zzdws
                @Override // com.google.android.gms.internal.ads.zzgcu
                public final com.google.common.util.concurrent.e zza(Object obj) {
                    Throwable th2 = (ExecutionException) obj;
                    if (th2.getCause() != null) {
                        th2 = th2.getCause();
                    }
                    return zzgdn.zzg(th2);
                }
            }, this.zzb);
        }
        final int callingUid = Binder.getCallingUid();
        return zzgdn.zzf(zzf, zzdyx.class, new zzgcu() { // from class: com.google.android.gms.internal.ads.zzdwt
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj) {
                return zzdwu.zzb(zzdwu.this, zzbvqVar, callingUid, (zzdyx) obj);
            }
        }, this.zzb);
    }
}
