package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.ss.texturerender.TextureRenderKeys;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeo {
    public static final zzeo zza = new zzeo(-1, -1);
    private final int zzb;
    private final int zzc;

    static {
        new zzeo(0, 0);
    }

    public zzeo(int i10, int i11) {
        boolean z10 = false;
        if ((i10 == -1 || i10 >= 0) && (i11 == -1 || i11 >= 0)) {
            z10 = true;
        }
        zzdd.zzd(z10);
        this.zzb = i10;
        this.zzc = i11;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzeo) {
            zzeo zzeoVar = (zzeo) obj;
            if (this.zzb == zzeoVar.zzb && this.zzc == zzeoVar.zzc) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.zzb;
        return ((i10 >>> 16) | (i10 << 16)) ^ this.zzc;
    }

    public final String toString() {
        return this.zzb + TextureRenderKeys.KEY_IS_X + this.zzc;
    }

    public final int zza() {
        return this.zzc;
    }

    public final int zzb() {
        return this.zzb;
    }
}
