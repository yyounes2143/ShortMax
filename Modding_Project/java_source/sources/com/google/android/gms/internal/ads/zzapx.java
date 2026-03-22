package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzapx extends Thread {
    private final BlockingQueue zza;
    private final zzapw zzb;
    private final zzapn zzc;
    private volatile boolean zzd = false;
    private final zzapu zze;

    public zzapx(BlockingQueue blockingQueue, zzapw zzapwVar, zzapn zzapnVar, zzapu zzapuVar) {
        this.zza = blockingQueue;
        this.zzb = zzapwVar;
        this.zzc = zzapnVar;
        this.zze = zzapuVar;
    }

    private void zzb() throws InterruptedException {
        zzaqd zzaqdVar = (zzaqd) this.zza.take();
        SystemClock.elapsedRealtime();
        zzaqdVar.zzt(3);
        try {
            try {
                zzaqdVar.zzm("network-queue-take");
                zzaqdVar.zzw();
                TrafficStats.setThreadStatsTag(zzaqdVar.zzc());
                zzapz zza = this.zzb.zza(zzaqdVar);
                zzaqdVar.zzm("network-http-complete");
                if (zza.zze && zzaqdVar.zzv()) {
                    zzaqdVar.zzp("not-modified");
                    zzaqdVar.zzr();
                } else {
                    zzaqj zzh = zzaqdVar.zzh(zza);
                    zzaqdVar.zzm("network-parse-complete");
                    zzapm zzapmVar = zzh.zzb;
                    if (zzapmVar != null) {
                        this.zzc.zzd(zzaqdVar.zzj(), zzapmVar);
                        zzaqdVar.zzm("network-cache-written");
                    }
                    zzaqdVar.zzq();
                    this.zze.zzb(zzaqdVar, zzh, null);
                    zzaqdVar.zzs(zzh);
                }
            } catch (zzaqm e10) {
                SystemClock.elapsedRealtime();
                this.zze.zza(zzaqdVar, e10);
                zzaqdVar.zzr();
            } catch (Exception e11) {
                zzaqp.zzc(e11, "Unhandled exception %s", e11.toString());
                zzaqm zzaqmVar = new zzaqm(e11);
                SystemClock.elapsedRealtime();
                this.zze.zza(zzaqdVar, zzaqmVar);
                zzaqdVar.zzr();
            }
            zzaqdVar.zzt(4);
        } catch (Throwable th2) {
            zzaqdVar.zzt(4);
            throw th2;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                zzb();
            } catch (InterruptedException unused) {
                if (this.zzd) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzaqp.zzb("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    public final void zza() {
        this.zzd = true;
        interrupt();
    }
}
