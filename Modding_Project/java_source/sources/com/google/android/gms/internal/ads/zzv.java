package com.google.android.gms.internal.ads;

import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzv {
    private final SparseBooleanArray zza;

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzv)) {
            return false;
        }
        return this.zza.equals(((zzv) obj).zza);
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final int zza(int i10) {
        SparseBooleanArray sparseBooleanArray = this.zza;
        zzdd.zza(i10, 0, sparseBooleanArray.size());
        return sparseBooleanArray.keyAt(i10);
    }

    public final int zzb() {
        return this.zza.size();
    }

    public final boolean zzc(int i10) {
        return this.zza.get(i10);
    }
}
