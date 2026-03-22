package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaho implements zzau {
    public final List zza;

    public zzaho(List list) {
        this.zza = list;
        boolean z10 = false;
        if (!list.isEmpty()) {
            long j10 = ((zzahn) list.get(0)).zzb;
            int i10 = 1;
            while (true) {
                if (i10 >= list.size()) {
                    break;
                } else if (((zzahn) list.get(i10)).zza < j10) {
                    z10 = true;
                    break;
                } else {
                    j10 = ((zzahn) list.get(i10)).zzb;
                    i10++;
                }
            }
        }
        zzdd.zzd(!z10);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaho.class == obj.getClass()) {
            return this.zza.equals(((zzaho) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        return "SlowMotion: segments=".concat(this.zza.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzau
    public final /* synthetic */ void zza(zzar zzarVar) {
    }
}
