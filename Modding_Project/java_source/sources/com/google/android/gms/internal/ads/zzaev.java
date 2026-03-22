package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaev {
    public static final zzaev zza = new zzaev(0, 0);
    public final long zzb;
    public final long zzc;

    public zzaev(long j10, long j11) {
        this.zzb = j10;
        this.zzc = j11;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaev.class == obj.getClass()) {
            zzaev zzaevVar = (zzaev) obj;
            if (this.zzb == zzaevVar.zzb && this.zzc == zzaevVar.zzc) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.zzb) * 31) + ((int) this.zzc);
    }

    public final String toString() {
        return "[timeUs=" + this.zzb + ", position=" + this.zzc + "]";
    }
}
