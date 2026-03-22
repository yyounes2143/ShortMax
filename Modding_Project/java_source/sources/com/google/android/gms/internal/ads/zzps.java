package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzps {
    public static final zzps zza = new zzpq().zzd();
    public final boolean zzb;
    public final boolean zzc;
    public final boolean zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzps(zzpq zzpqVar, zzpr zzprVar) {
        boolean z10;
        boolean z11;
        boolean z12;
        z10 = zzpqVar.zza;
        this.zzb = z10;
        z11 = zzpqVar.zzb;
        this.zzc = z11;
        z12 = zzpqVar.zzc;
        this.zzd = z12;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzps.class == obj.getClass()) {
            zzps zzpsVar = (zzps) obj;
            if (this.zzb == zzpsVar.zzb && this.zzc == zzpsVar.zzc && this.zzd == zzpsVar.zzd) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        boolean z10 = this.zzb;
        boolean z11 = this.zzc;
        return ((z10 ? 1 : 0) << 2) + (z11 ? 1 : 0) + (z11 ? 1 : 0) + (this.zzd ? 1 : 0);
    }
}
