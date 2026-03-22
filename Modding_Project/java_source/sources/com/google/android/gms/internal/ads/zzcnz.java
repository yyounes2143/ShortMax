package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcnz implements zzazw {
    private final ScheduledExecutorService zza;
    private final Clock zzb;
    @Nullable
    private ScheduledFuture zzc;
    private long zzd = -1;
    private long zze = -1;
    private Runnable zzf = null;
    private boolean zzg = false;

    public zzcnz(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        this.zza = scheduledExecutorService;
        this.zzb = clock;
        com.google.android.gms.ads.internal.zzv.zzb().zzc(this);
    }

    @Override // com.google.android.gms.internal.ads.zzazw
    public final void zza(boolean z10) {
        if (z10) {
            zzc();
        } else {
            zzb();
        }
    }

    @VisibleForTesting
    final synchronized void zzb() {
        try {
            if (!this.zzg) {
                ScheduledFuture scheduledFuture = this.zzc;
                if (scheduledFuture != null && !scheduledFuture.isDone()) {
                    this.zzc.cancel(true);
                    this.zze = this.zzd - this.zzb.elapsedRealtime();
                } else {
                    this.zze = -1L;
                }
                this.zzg = true;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @VisibleForTesting
    final synchronized void zzc() {
        ScheduledFuture scheduledFuture;
        try {
            if (this.zzg) {
                if (this.zze > 0 && (scheduledFuture = this.zzc) != null && scheduledFuture.isCancelled()) {
                    this.zzc = this.zza.schedule(this.zzf, this.zze, TimeUnit.MILLISECONDS);
                }
                this.zzg = false;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void zzd(int i10, Runnable runnable) {
        this.zzf = runnable;
        long j10 = i10;
        this.zzd = this.zzb.elapsedRealtime() + j10;
        this.zzc = this.zza.schedule(runnable, j10, TimeUnit.MILLISECONDS);
    }
}
