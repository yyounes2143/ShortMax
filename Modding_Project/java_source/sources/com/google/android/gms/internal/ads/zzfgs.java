package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzfgs {
    private static final com.google.common.util.concurrent.e zza = zzgdn.zzh(null);
    private final zzgdy zzb;
    private final ScheduledExecutorService zzc;
    private final zzfgt zzd;

    public zzfgs(zzgdy zzgdyVar, ScheduledExecutorService scheduledExecutorService, zzfgt zzfgtVar) {
        this.zzb = zzgdyVar;
        this.zzc = scheduledExecutorService;
        this.zzd = zzfgtVar;
    }

    public final zzfgi zza(Object obj, com.google.common.util.concurrent.e... eVarArr) {
        return new zzfgi(this, obj, Arrays.asList(eVarArr), null);
    }

    public final zzfgq zzb(Object obj, com.google.common.util.concurrent.e eVar) {
        return new zzfgq(this, obj, eVar, Collections.singletonList(eVar), eVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract String zzf(Object obj);
}
