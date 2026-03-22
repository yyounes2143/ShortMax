package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaes {
    public final zzaev zza;
    public final zzaev zzb;

    public zzaes(zzaev zzaevVar, zzaev zzaevVar2) {
        this.zza = zzaevVar;
        this.zzb = zzaevVar2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaes.class == obj.getClass()) {
            zzaes zzaesVar = (zzaes) obj;
            if (this.zza.equals(zzaesVar.zza) && this.zzb.equals(zzaesVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.zza.hashCode() * 31) + this.zzb.hashCode();
    }

    public final String toString() {
        String concat;
        zzaev zzaevVar = this.zza;
        zzaev zzaevVar2 = this.zzb;
        String obj = zzaevVar.toString();
        if (zzaevVar.equals(zzaevVar2)) {
            concat = "";
        } else {
            concat = ", ".concat(zzaevVar2.toString());
        }
        return "[" + obj + concat + "]";
    }
}
