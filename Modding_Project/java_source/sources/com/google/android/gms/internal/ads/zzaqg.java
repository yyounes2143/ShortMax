package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaqg {
    private final AtomicInteger zza;
    private final Set zzb;
    private final PriorityBlockingQueue zzc;
    private final PriorityBlockingQueue zzd;
    private final zzapn zze;
    private final zzapw zzf;
    private final zzapx[] zzg;
    private zzapp zzh;
    private final List zzi;
    private final List zzj;
    private final zzapu zzk;

    public zzaqg(zzapn zzapnVar, zzapw zzapwVar, int i10) {
        zzapu zzapuVar = new zzapu(new Handler(Looper.getMainLooper()));
        this.zza = new AtomicInteger();
        this.zzb = new HashSet();
        this.zzc = new PriorityBlockingQueue();
        this.zzd = new PriorityBlockingQueue();
        this.zzi = new ArrayList();
        this.zzj = new ArrayList();
        this.zze = zzapnVar;
        this.zzf = zzapwVar;
        this.zzg = new zzapx[4];
        this.zzk = zzapuVar;
    }

    public final zzaqd zza(zzaqd zzaqdVar) {
        zzaqdVar.zzf(this);
        Set set = this.zzb;
        synchronized (set) {
            set.add(zzaqdVar);
        }
        zzaqdVar.zzg(this.zza.incrementAndGet());
        zzaqdVar.zzm("add-to-queue");
        zzc(zzaqdVar, 0);
        this.zzc.add(zzaqdVar);
        return zzaqdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(zzaqd zzaqdVar) {
        Set set = this.zzb;
        synchronized (set) {
            set.remove(zzaqdVar);
        }
        List<zzaqf> list = this.zzi;
        synchronized (list) {
            try {
                for (zzaqf zzaqfVar : list) {
                    zzaqfVar.zza();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        zzc(zzaqdVar, 5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzc(zzaqd zzaqdVar, int i10) {
        List<zzaqe> list = this.zzj;
        synchronized (list) {
            try {
                for (zzaqe zzaqeVar : list) {
                    zzaqeVar.zza();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zzd() {
        zzapp zzappVar = this.zzh;
        if (zzappVar != null) {
            zzappVar.zzb();
        }
        zzapx[] zzapxVarArr = this.zzg;
        for (int i10 = 0; i10 < 4; i10++) {
            zzapx zzapxVar = zzapxVarArr[i10];
            if (zzapxVar != null) {
                zzapxVar.zza();
            }
        }
        PriorityBlockingQueue priorityBlockingQueue = this.zzc;
        PriorityBlockingQueue priorityBlockingQueue2 = this.zzd;
        zzapn zzapnVar = this.zze;
        zzapu zzapuVar = this.zzk;
        zzapp zzappVar2 = new zzapp(priorityBlockingQueue, priorityBlockingQueue2, zzapnVar, zzapuVar);
        this.zzh = zzappVar2;
        zzappVar2.start();
        for (int i11 = 0; i11 < 4; i11++) {
            zzapx zzapxVar2 = new zzapx(priorityBlockingQueue2, this.zzf, zzapnVar, zzapuVar);
            zzapxVarArr[i11] = zzapxVar2;
            zzapxVar2.start();
        }
    }
}
