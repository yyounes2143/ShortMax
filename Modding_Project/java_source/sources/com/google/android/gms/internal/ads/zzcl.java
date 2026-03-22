package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcl {
    public static final zzcl zza = new zzcl(-1, -1, -1);
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;

    public zzcl(int i10, int i11, int i12) {
        int i13;
        this.zzb = i10;
        this.zzc = i11;
        this.zzd = i12;
        if (zzex.zzK(i12)) {
            i13 = zzex.zzk(i12) * i11;
        } else {
            i13 = -1;
        }
        this.zze = i13;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzcl)) {
            return false;
        }
        zzcl zzclVar = (zzcl) obj;
        if (this.zzb == zzclVar.zzb && this.zzc == zzclVar.zzc && this.zzd == zzclVar.zzd) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), Integer.valueOf(this.zzd));
    }

    public final String toString() {
        return "AudioFormat[sampleRate=" + this.zzb + ", channelCount=" + this.zzc + ", encoding=" + this.zzd + "]";
    }
}
