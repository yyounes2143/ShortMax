package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbal {
    final long zza;
    final String zzb;
    final int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbal(long j10, String str, int i10) {
        this.zza = j10;
        this.zzb = str;
        this.zzc = i10;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof zzbal)) {
            return false;
        }
        zzbal zzbalVar = (zzbal) obj;
        if (zzbalVar.zza != this.zza || zzbalVar.zzc != this.zzc) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (int) this.zza;
    }
}
