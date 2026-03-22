package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfgk {
    public static final zzfgq zza(Callable callable, Object obj, zzfgs zzfgsVar) {
        zzgdy zzgdyVar;
        zzgdyVar = zzfgsVar.zzb;
        return zzb(callable, zzgdyVar, obj, zzfgsVar);
    }

    public static final zzfgq zzb(Callable callable, zzgdy zzgdyVar, Object obj, zzfgs zzfgsVar) {
        com.google.common.util.concurrent.e eVar;
        eVar = zzfgs.zza;
        return new zzfgq(zzfgsVar, obj, eVar, Collections.emptyList(), zzgdyVar.zzb(callable));
    }

    public static final zzfgq zzc(com.google.common.util.concurrent.e eVar, Object obj, zzfgs zzfgsVar) {
        com.google.common.util.concurrent.e eVar2;
        eVar2 = zzfgs.zza;
        return new zzfgq(zzfgsVar, obj, eVar2, Collections.emptyList(), eVar);
    }

    public static final zzfgq zzd(final zzfgf zzfgfVar, zzgdy zzgdyVar, Object obj, zzfgs zzfgsVar) {
        return zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzfgj
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzfgf.this.zza();
                return null;
            }
        }, zzgdyVar, obj, zzfgsVar);
    }
}
