package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgyr {
    static final zzgyr zza = new zzgyr(true);
    public static final /* synthetic */ int zzb = 0;
    private static volatile boolean zzc = false;
    private static volatile zzgyr zzd;
    private final Map zze;

    zzgyr() {
        this.zze = new HashMap();
    }

    public static zzgyr zza() {
        int i10 = zzhbc.zza;
        return zza;
    }

    public static zzgyr zzb() {
        zzgyr zzgyrVar = zzd;
        if (zzgyrVar != null) {
            return zzgyrVar;
        }
        synchronized (zzgyr.class) {
            try {
                zzgyr zzgyrVar2 = zzd;
                if (zzgyrVar2 != null) {
                    return zzgyrVar2;
                }
                int i10 = zzhbc.zza;
                zzgyr zzb2 = zzgyz.zzb(zzgyr.class);
                zzd = zzb2;
                return zzb2;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final zzgzf zzc(zzhas zzhasVar, int i10) {
        return (zzgzf) this.zze.get(new zzgyq(zzhasVar, i10));
    }

    zzgyr(boolean z10) {
        this.zze = Collections.emptyMap();
    }
}
