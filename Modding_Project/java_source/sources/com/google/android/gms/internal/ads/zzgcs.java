package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgcb;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
abstract class zzgcs extends zzgcb.zzf {
    private static final zzgco zzbg;
    private static final zzgdw zzbh = new zzgdw(zzgcs.class);
    volatile int remainingField;
    volatile Set<Throwable> seenExceptionsField = null;

    static {
        Throwable th2;
        zzgco zzgcqVar;
        try {
            zzgcqVar = new zzgcp(null);
            th2 = null;
        } catch (Throwable th3) {
            th2 = th3;
            zzgcqVar = new zzgcq(null);
        }
        zzbg = zzgcqVar;
        if (th2 != null) {
            zzbh.zza().logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgcs(int i10) {
        this.remainingField = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzB() {
        return zzbg.zza(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set zzC() {
        Set<Throwable> set = this.seenExceptionsField;
        if (set == null) {
            Set newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            zzw(newSetFromMap);
            zzbg.zzb(this, null, newSetFromMap);
            Set<Throwable> set2 = this.seenExceptionsField;
            Objects.requireNonNull(set2);
            return set2;
        }
        return set;
    }

    abstract void zzw(Set set);
}
