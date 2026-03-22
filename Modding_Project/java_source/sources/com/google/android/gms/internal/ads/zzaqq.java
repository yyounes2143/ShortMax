package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaqq implements zzaqc {
    private final Map zza = new HashMap();
    @Nullable
    private final zzapp zzb;
    @Nullable
    private final BlockingQueue zzc;
    private final zzapu zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaqq(@NonNull zzapp zzappVar, @NonNull BlockingQueue blockingQueue, zzapu zzapuVar) {
        this.zzd = zzapuVar;
        this.zzb = zzappVar;
        this.zzc = blockingQueue;
    }

    @Override // com.google.android.gms.internal.ads.zzaqc
    public final synchronized void zza(zzaqd zzaqdVar) {
        try {
            Map map = this.zza;
            String zzj = zzaqdVar.zzj();
            List list = (List) map.remove(zzj);
            if (list != null && !list.isEmpty()) {
                if (zzaqp.zzb) {
                    zzaqp.zzd("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(list.size()), zzj);
                }
                zzaqd zzaqdVar2 = (zzaqd) list.remove(0);
                map.put(zzj, list);
                zzaqdVar2.zzu(this);
                try {
                    this.zzc.put(zzaqdVar2);
                } catch (InterruptedException e10) {
                    zzaqp.zzb("Couldn't add request to queue. %s", e10.toString());
                    Thread.currentThread().interrupt();
                    this.zzb.zzb();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqc
    public final void zzb(zzaqd zzaqdVar, zzaqj zzaqjVar) {
        List<zzaqd> list;
        zzapm zzapmVar = zzaqjVar.zzb;
        if (zzapmVar != null && !zzapmVar.zza(System.currentTimeMillis())) {
            String zzj = zzaqdVar.zzj();
            synchronized (this) {
                list = (List) this.zza.remove(zzj);
            }
            if (list != null) {
                if (zzaqp.zzb) {
                    zzaqp.zzd("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(list.size()), zzj);
                }
                for (zzaqd zzaqdVar2 : list) {
                    this.zzd.zzb(zzaqdVar2, zzaqjVar, null);
                }
                return;
            }
            return;
        }
        zza(zzaqdVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized boolean zzc(zzaqd zzaqdVar) {
        try {
            Map map = this.zza;
            String zzj = zzaqdVar.zzj();
            if (map.containsKey(zzj)) {
                List list = (List) map.get(zzj);
                if (list == null) {
                    list = new ArrayList();
                }
                zzaqdVar.zzm("waiting-for-response");
                list.add(zzaqdVar);
                map.put(zzj, list);
                if (zzaqp.zzb) {
                    zzaqp.zza("Request for cacheKey=%s is in flight, putting on hold.", zzj);
                }
                return true;
            }
            map.put(zzj, null);
            zzaqdVar.zzu(this);
            if (zzaqp.zzb) {
                zzaqp.zza("new request, sending to network %s", zzj);
            }
            return false;
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
