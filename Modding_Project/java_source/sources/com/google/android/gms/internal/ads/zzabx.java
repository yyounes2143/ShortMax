package com.google.android.gms.internal.ads;

import androidx.collection.SieveCacheKt;
import java.util.Queue;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzabx {
    private final zzabs zza;
    private long zzj;
    private final zzaap zzk;
    private final zzabq zzb = new zzabq();
    private final zzet zzc = new zzet(10);
    private final zzet zzd = new zzet(10);
    private final zzec zze = new zzec(16);
    private long zzf = -9223372036854775807L;
    private zzcd zzi = zzcd.zza;
    private long zzg = -9223372036854775807L;
    private long zzh = -9223372036854775807L;

    public zzabx(zzaap zzaapVar, zzabs zzabsVar) {
        this.zzk = zzaapVar;
        this.zza = zzabsVar;
    }

    private static Object zzh(zzet zzetVar) {
        boolean z10;
        if (zzetVar.zza() > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        while (zzetVar.zza() > 1) {
            zzetVar.zzb();
        }
        Object zzb = zzetVar.zzb();
        zzb.getClass();
        return zzb;
    }

    public final void zza() {
        this.zze.zzd();
        this.zzf = -9223372036854775807L;
        this.zzg = -9223372036854775807L;
        this.zzh = -9223372036854775807L;
        zzet zzetVar = this.zzd;
        if (zzetVar.zza() > 0) {
            this.zzj = ((Long) zzh(zzetVar)).longValue();
        }
        zzet zzetVar2 = this.zzc;
        if (zzetVar2.zza() > 0) {
            zzetVar2.zzd(0L, (zzcd) zzh(zzetVar2));
        }
    }

    public final void zzb(long j10) {
        this.zze.zzc(j10);
        this.zzf = j10;
        this.zzh = -9223372036854775807L;
    }

    public final void zzc(int i10, long j10) {
        long j11;
        if (this.zze.zze()) {
            this.zza.zzf(i10);
            this.zzj = j10;
            return;
        }
        zzet zzetVar = this.zzd;
        long j12 = this.zzf;
        if (j12 == -9223372036854775807L) {
            j11 = SieveCacheKt.NodeMetaMask;
        } else {
            j11 = j12 + 1;
        }
        zzetVar.zzd(j11, Long.valueOf(j10));
    }

    public final void zzd(int i10, int i11) {
        long j10;
        long j11 = this.zzf;
        if (j11 == -9223372036854775807L) {
            j10 = 0;
        } else {
            j10 = j11 + 1;
        }
        this.zzc.zzd(j10, new zzcd(i10, i11, 1.0f));
    }

    public final void zze(long j10, long j11) throws zzin {
        long zzd;
        Executor executor;
        Queue queue;
        while (true) {
            zzec zzecVar = this.zze;
            if (!zzecVar.zze()) {
                zzet zzetVar = this.zzd;
                long zza = zzecVar.zza();
                Long l10 = (Long) zzetVar.zzc(zza);
                if (l10 != null && l10.longValue() != this.zzj) {
                    this.zzj = l10.longValue();
                    this.zza.zzf(2);
                }
                zzabs zzabsVar = this.zza;
                long j12 = this.zzj;
                zzabq zzabqVar = this.zzb;
                int zza2 = zzabsVar.zza(zza, j10, j11, j12, false, false, zzabqVar);
                if (zza2 != 0 && zza2 != 1) {
                    if (zza2 != 2 && zza2 != 3) {
                        if (zza2 == 4) {
                            this.zzg = zza;
                        } else {
                            return;
                        }
                    } else {
                        this.zzg = zza;
                        zzecVar.zzb();
                        final zzaap zzaapVar = this.zzk;
                        zzaar zzaarVar = zzaapVar.zza;
                        executor = zzaarVar.zzh;
                        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaan
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzacl zzaclVar;
                                zzaclVar = zzaap.this.zza.zzg;
                                zzaclVar.zzc();
                            }
                        });
                        queue = zzaarVar.zzc;
                        ((zzacm) queue.remove()).zzb();
                    }
                } else {
                    this.zzg = zza;
                    long zzb = zzecVar.zzb();
                    zzcd zzcdVar = (zzcd) this.zzc.zzc(zzb);
                    if (zzcdVar != null && !zzcdVar.equals(zzcd.zza) && !zzcdVar.equals(this.zzi)) {
                        this.zzi = zzcdVar;
                        this.zzk.zza(zzcdVar);
                    }
                    if (zza2 == 0) {
                        zzd = System.nanoTime();
                    } else {
                        zzd = zzabqVar.zzd();
                    }
                    this.zzk.zzb(zzd, zzb, zzabsVar.zzn());
                }
            } else {
                return;
            }
        }
    }

    public final void zzf() {
        long j10 = this.zzf;
        if (j10 == -9223372036854775807L) {
            j10 = Long.MIN_VALUE;
            this.zzf = Long.MIN_VALUE;
            this.zzg = Long.MIN_VALUE;
        }
        this.zzh = j10;
    }

    public final boolean zzg() {
        long j10 = this.zzh;
        if (j10 != -9223372036854775807L && this.zzg == j10) {
            return true;
        }
        return false;
    }
}
