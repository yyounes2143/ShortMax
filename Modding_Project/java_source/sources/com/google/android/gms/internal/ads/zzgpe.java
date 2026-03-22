package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzgpe {
    private final Class zza;
    private final Class zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgpe(Class cls, Class cls2, zzgpf zzgpfVar) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgpe)) {
            return false;
        }
        zzgpe zzgpeVar = (zzgpe) obj;
        if (!zzgpeVar.zza.equals(this.zza) || !zzgpeVar.zzb.equals(this.zzb)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    public final String toString() {
        Class cls = this.zzb;
        String simpleName = this.zza.getSimpleName();
        String simpleName2 = cls.getSimpleName();
        return simpleName + " with serialization type: " + simpleName2;
    }
}
