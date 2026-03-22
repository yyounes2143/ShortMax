package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdm {
    private boolean zza;

    public zzdm() {
        throw null;
    }

    public final synchronized void zza() throws InterruptedException {
        while (!this.zza) {
            wait();
        }
    }

    public final synchronized void zzb() {
        boolean z10 = false;
        while (!this.zza) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z10 = true;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    public final synchronized boolean zzc(long j10) {
        if (j10 > 0) {
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j11 = j10 + elapsedRealtime;
                if (j11 < elapsedRealtime) {
                    zzb();
                } else {
                    boolean z10 = false;
                    while (!this.zza && elapsedRealtime < j11) {
                        try {
                            wait(j11 - elapsedRealtime);
                        } catch (InterruptedException unused) {
                            z10 = true;
                        }
                        elapsedRealtime = SystemClock.elapsedRealtime();
                    }
                    if (z10) {
                        Thread.currentThread().interrupt();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.zza;
    }

    public final synchronized boolean zzd() {
        boolean z10;
        z10 = this.zza;
        this.zza = false;
        return z10;
    }

    public final synchronized boolean zze() {
        return this.zza;
    }

    public final synchronized boolean zzf() {
        if (this.zza) {
            return false;
        }
        this.zza = true;
        notifyAll();
        return true;
    }

    public zzdm(zzdj zzdjVar) {
    }
}
