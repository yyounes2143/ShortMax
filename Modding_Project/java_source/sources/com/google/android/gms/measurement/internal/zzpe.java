package com.google.android.gms.measurement.internal;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
@VisibleForTesting
/* loaded from: classes5.dex */
public final class zzpe {
    private final zzpg zza;
    private int zzb = 1;
    private long zzc = zzd();

    public zzpe(zzpg zzpgVar) {
        this.zza = zzpgVar;
    }

    private final long zzd() {
        zzpg zzpgVar = this.zza;
        Preconditions.checkNotNull(zzpgVar);
        long longValue = ((Long) zzfy.zzu.zzb(null)).longValue();
        long longValue2 = ((Long) zzfy.zzv.zzb(null)).longValue();
        for (int i10 = 1; i10 < this.zzb; i10++) {
            longValue += longValue;
            if (longValue >= longValue2) {
                break;
            }
        }
        return zzpgVar.zzaZ().currentTimeMillis() + Math.min(longValue, longValue2);
    }

    public final void zza() {
        this.zzb++;
        this.zzc = zzd();
    }

    public final boolean zzb() {
        if (this.zza.zzaZ().currentTimeMillis() >= this.zzc) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ long zzc() {
        return this.zzc;
    }
}
