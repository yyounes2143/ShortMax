package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzazt {
    @VisibleForTesting
    int zza;
    private final Object zzb = new Object();
    private final List zzc = new LinkedList();

    public final void zza(zzazs zzazsVar) {
        synchronized (this.zzb) {
            try {
                List list = this.zzc;
                if (list.size() >= 10) {
                    int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zze("Queue is full, current size = " + list.size());
                    list.remove(0);
                }
                int i11 = this.zza;
                this.zza = i11 + 1;
                zzazsVar.zzg(i11);
                zzazsVar.zzk();
                list.add(zzazsVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean zzb(zzazs zzazsVar) {
        synchronized (this.zzb) {
            try {
                Iterator it = this.zzc.iterator();
                while (it.hasNext()) {
                    zzazs zzazsVar2 = (zzazs) it.next();
                    if (!com.google.android.gms.ads.internal.zzv.zzp().zzi().zzK()) {
                        if (!zzazsVar.equals(zzazsVar2) && zzazsVar2.zzc().equals(zzazsVar.zzc())) {
                            it.remove();
                            return true;
                        }
                    } else if (!com.google.android.gms.ads.internal.zzv.zzp().zzi().zzL() && !zzazsVar.equals(zzazsVar2) && zzazsVar2.zzd().equals(zzazsVar.zzd())) {
                        it.remove();
                        return true;
                    }
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean zzc(zzazs zzazsVar) {
        synchronized (this.zzb) {
            try {
                if (this.zzc.contains(zzazsVar)) {
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
