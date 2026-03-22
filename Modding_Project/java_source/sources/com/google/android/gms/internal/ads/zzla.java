package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzla {
    public final long zza;
    public final float zzb;
    public final long zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzla(zzky zzkyVar, zzkz zzkzVar) {
        this.zza = zzky.zzc(zzkyVar);
        this.zzb = zzky.zza(zzkyVar);
        this.zzc = zzky.zzb(zzkyVar);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzla)) {
            return false;
        }
        zzla zzlaVar = (zzla) obj;
        if (this.zza == zzlaVar.zza && this.zzb == zzlaVar.zzb && this.zzc == zzlaVar.zzc) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.zza), Float.valueOf(this.zzb), Long.valueOf(this.zzc));
    }

    public final zzky zza() {
        return new zzky(this, null);
    }
}
