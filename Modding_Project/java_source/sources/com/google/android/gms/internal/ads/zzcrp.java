package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcrp {
    private final Executor zza;
    private final ScheduledExecutorService zzb;
    private final com.google.common.util.concurrent.e zzc;
    private volatile boolean zzd = true;

    public zzcrp(Executor executor, ScheduledExecutorService scheduledExecutorService, com.google.common.util.concurrent.e eVar) {
        this.zza = executor;
        this.zzb = scheduledExecutorService;
        this.zzc = eVar;
    }

    public static /* synthetic */ com.google.common.util.concurrent.e zza(zzcrp zzcrpVar, zzgdj zzgdjVar, com.google.common.util.concurrent.e eVar, zzcra zzcraVar) {
        if (zzcraVar != null) {
            zzgdjVar.zzb(zzcraVar);
        }
        return zzgdn.zzo(eVar, ((Long) zzbfr.zza.zze()).longValue(), TimeUnit.MILLISECONDS, zzcrpVar.zzb);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzc(final zzcrp zzcrpVar, List list, final zzgdj zzgdjVar) {
        if (list != null && !list.isEmpty()) {
            com.google.common.util.concurrent.e zzh = zzgdn.zzh(null);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                final com.google.common.util.concurrent.e eVar = (com.google.common.util.concurrent.e) it.next();
                zzgcu zzgcuVar = new zzgcu() { // from class: com.google.android.gms.internal.ads.zzcrl
                    @Override // com.google.android.gms.internal.ads.zzgcu
                    public final com.google.common.util.concurrent.e zza(Object obj) {
                        zzgdj.this.zza((Throwable) obj);
                        return zzgdn.zzh(null);
                    }
                };
                Executor executor = zzcrpVar.zza;
                zzh = zzgdn.zzn(zzgdn.zzf(zzh, Throwable.class, zzgcuVar, executor), new zzgcu() { // from class: com.google.android.gms.internal.ads.zzcrm
                    @Override // com.google.android.gms.internal.ads.zzgcu
                    public final com.google.common.util.concurrent.e zza(Object obj) {
                        return zzcrp.zza(zzcrp.this, zzgdjVar, eVar, (zzcra) obj);
                    }
                }, executor);
            }
            zzgdn.zzr(zzh, new zzcro(zzcrpVar, zzgdjVar), zzcrpVar.zza);
            return;
        }
        zzcrpVar.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcrk
            @Override // java.lang.Runnable
            public final void run() {
                zzgdj.this.zza(new zzdwm(3));
            }
        });
    }

    public final void zze(zzgdj zzgdjVar) {
        zzgdn.zzr(this.zzc, new zzcrn(this, zzgdjVar), this.zza);
    }

    public final boolean zzf() {
        return this.zzd;
    }
}
