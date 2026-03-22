package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzoa {
    @VisibleForTesting
    protected long zza;
    @VisibleForTesting
    protected long zzb;
    final /* synthetic */ zzoc zzc;
    private final zzay zzd;

    public zzoa(zzoc zzocVar) {
        Objects.requireNonNull(zzocVar);
        this.zzc = zzocVar;
        this.zzd = new zznz(this, zzocVar.zzu);
        long elapsedRealtime = zzocVar.zzu.zzaZ().elapsedRealtime();
        this.zza = elapsedRealtime;
        this.zzb = elapsedRealtime;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zza(long j10) {
        this.zzc.zzg();
        this.zzd.zzd();
        this.zza = j10;
        this.zzb = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzb(long j10) {
        this.zzd.zzd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzc() {
        this.zzd.zzd();
        long elapsedRealtime = this.zzc.zzu.zzaZ().elapsedRealtime();
        this.zza = elapsedRealtime;
        this.zzb = elapsedRealtime;
    }

    @WorkerThread
    public final boolean zzd(boolean z10, boolean z11, long j10) {
        zzoc zzocVar = this.zzc;
        zzocVar.zzg();
        zzocVar.zzb();
        if (zzocVar.zzu.zzB()) {
            zzic zzicVar = zzocVar.zzu;
            zzicVar.zzd().zzk.zzb(zzicVar.zzaZ().currentTimeMillis());
        }
        long j11 = j10 - this.zza;
        if (!z10 && j11 < 1000) {
            zzocVar.zzu.zzaV().zzk().zzb("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j11));
            return false;
        }
        if (!z11) {
            j11 = j10 - this.zzb;
            this.zzb = j10;
        }
        zzic zzicVar2 = zzocVar.zzu;
        zzicVar2.zzaV().zzk().zzb("Recording user engagement, ms", Long.valueOf(j11));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j11);
        zzic zzicVar3 = zzocVar.zzu;
        zzpp.zzav(zzicVar3.zzs().zzh(!zzicVar2.zzc().zzv()), bundle, true);
        if (!z11) {
            zzicVar3.zzj().zzF("auto", "_e", bundle);
        }
        this.zza = j10;
        zzay zzayVar = this.zzd;
        zzayVar.zzd();
        zzayVar.zzb(((Long) zzfy.zzaq.zzb(null)).longValue());
        return true;
    }
}
