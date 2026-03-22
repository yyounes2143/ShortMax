package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfgq {
    final /* synthetic */ zzfgs zza;
    private final Object zzb;
    @Nullable
    private final String zzc;
    private final com.google.common.util.concurrent.e zzd;
    private final List zze;
    private final com.google.common.util.concurrent.e zzf;

    public final zzfgg zza() {
        zzfgt zzfgtVar;
        Object obj = this.zzb;
        String str = this.zzc;
        if (str == null) {
            str = this.zza.zzf(obj);
        }
        final zzfgg zzfggVar = new zzfgg(obj, str, this.zzf);
        zzfgtVar = this.zza.zzd;
        zzfgtVar.zza(zzfggVar);
        com.google.common.util.concurrent.e eVar = this.zzd;
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzfgo
            @Override // java.lang.Runnable
            public final void run() {
                zzfgt zzfgtVar2;
                zzfgtVar2 = zzfgq.this.zza.zzd;
                zzfgtVar2.zzc(zzfggVar);
            }
        };
        zzgdy zzgdyVar = zzcaf.zzg;
        eVar.addListener(runnable, zzgdyVar);
        zzgdn.zzr(zzfggVar, new zzfgp(this, zzfggVar), zzgdyVar);
        return zzfggVar;
    }

    public final zzfgq zzb(Object obj) {
        return this.zza.zzb(obj, zza());
    }

    public final zzfgq zzc(Class cls, zzgcu zzgcuVar) {
        zzgdy zzgdyVar;
        zzfgs zzfgsVar = this.zza;
        zzgdyVar = zzfgsVar.zzb;
        return new zzfgq(zzfgsVar, this.zzb, this.zzc, this.zzd, this.zze, zzgdn.zzf(this.zzf, cls, zzgcuVar, zzgdyVar));
    }

    public final zzfgq zzd(final com.google.common.util.concurrent.e eVar) {
        return zzg(new zzgcu() { // from class: com.google.android.gms.internal.ads.zzfgn
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj) {
                return com.google.common.util.concurrent.e.this;
            }
        }, zzcaf.zzg);
    }

    public final zzfgq zze(final zzfge zzfgeVar) {
        return zzf(new zzgcu() { // from class: com.google.android.gms.internal.ads.zzfgm
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj) {
                return zzgdn.zzh(zzfge.this.zza(obj));
            }
        });
    }

    public final zzfgq zzf(zzgcu zzgcuVar) {
        zzgdy zzgdyVar;
        zzgdyVar = this.zza.zzb;
        return zzg(zzgcuVar, zzgdyVar);
    }

    public final zzfgq zzg(zzgcu zzgcuVar, Executor executor) {
        return new zzfgq(this.zza, this.zzb, this.zzc, this.zzd, this.zze, zzgdn.zzn(this.zzf, zzgcuVar, executor));
    }

    public final zzfgq zzh(String str) {
        return new zzfgq(this.zza, this.zzb, str, this.zzd, this.zze, this.zzf);
    }

    public final zzfgq zzi(long j10, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService;
        zzfgs zzfgsVar = this.zza;
        scheduledExecutorService = zzfgsVar.zzc;
        return new zzfgq(zzfgsVar, this.zzb, this.zzc, this.zzd, this.zze, zzgdn.zzo(this.zzf, j10, timeUnit, scheduledExecutorService));
    }

    private zzfgq(zzfgs zzfgsVar, Object obj, String str, com.google.common.util.concurrent.e eVar, List list, com.google.common.util.concurrent.e eVar2) {
        Objects.requireNonNull(zzfgsVar);
        this.zza = zzfgsVar;
        this.zzb = obj;
        this.zzc = str;
        this.zzd = eVar;
        this.zze = list;
        this.zzf = eVar2;
    }
}
