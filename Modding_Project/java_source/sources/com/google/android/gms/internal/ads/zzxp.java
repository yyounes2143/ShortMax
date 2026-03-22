package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzxp {
    public final long zza;
    public final long zzb;

    public zzxp(long j10, long j11) {
        this.zza = j10;
        this.zzb = j11;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzxp)) {
            return false;
        }
        zzxp zzxpVar = (zzxp) obj;
        if (this.zza == zzxpVar.zza && this.zzb == zzxpVar.zzb) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.zza) * 31) + ((int) this.zzb);
    }
}
