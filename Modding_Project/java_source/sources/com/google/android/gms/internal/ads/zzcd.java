package com.google.android.gms.internal.ads;

import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcd {
    public static final zzcd zza = new zzcd(0, 0, 1.0f);
    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)
    public final int zzb;
    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)
    public final int zzc;
    @FloatRange(from = 0.0d, fromInclusive = false)
    public final float zzd;

    static {
        String str = zzex.zza;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(3, 36);
    }

    public zzcd(@IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @FloatRange(from = 0.0d, fromInclusive = false) float f10) {
        this.zzb = i10;
        this.zzc = i11;
        this.zzd = f10;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcd) {
            zzcd zzcdVar = (zzcd) obj;
            if (this.zzb == zzcdVar.zzb && this.zzc == zzcdVar.zzc && this.zzd == zzcdVar.zzd) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.zzb + 217) * 31) + this.zzc) * 31) + Float.floatToRawIntBits(this.zzd);
    }
}
