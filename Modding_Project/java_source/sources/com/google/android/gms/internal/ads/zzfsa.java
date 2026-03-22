package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfsa {
    private final String zza;
    private final long zzb;

    public zzfsa() {
        this.zza = null;
        this.zzb = -1L;
    }

    public final long zza() {
        return this.zzb;
    }

    @Nullable
    public final String zzb() {
        return this.zza;
    }

    public final boolean zzc() {
        if (this.zza != null && this.zzb > 0) {
            return true;
        }
        return false;
    }

    public zzfsa(String str, long j10) {
        this.zza = str;
        this.zzb = j10;
    }
}
