package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbs {
    public final int zza;
    private final zzbm zzb;
    private final boolean zzc;
    private final int[] zzd;
    private final boolean[] zze;

    static {
        String str = zzex.zza;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
    }

    public zzbs(zzbm zzbmVar, boolean z10, int[] iArr, boolean[] zArr) {
        boolean z11;
        int i10 = zzbmVar.zza;
        this.zza = i10;
        boolean z12 = true;
        if (i10 == iArr.length && i10 == zArr.length) {
            z11 = true;
        } else {
            z11 = false;
        }
        zzdd.zzd(z11);
        this.zzb = zzbmVar;
        this.zzc = (!z10 || i10 <= 1) ? false : z12;
        this.zzd = (int[]) iArr.clone();
        this.zze = (boolean[]) zArr.clone();
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzbs.class == obj.getClass()) {
            zzbs zzbsVar = (zzbs) obj;
            if (this.zzc == zzbsVar.zzc && this.zzb.equals(zzbsVar.zzb) && Arrays.equals(this.zzd, zzbsVar.zzd) && Arrays.equals(this.zze, zzbsVar.zze)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.zzb.hashCode() * 31) + (this.zzc ? 1 : 0)) * 31) + Arrays.hashCode(this.zzd)) * 31) + Arrays.hashCode(this.zze);
    }

    public final int zza() {
        return this.zzb.zzc;
    }

    public final zzz zzb(int i10) {
        return this.zzb.zzb(i10);
    }

    public final boolean zzc() {
        for (boolean z10 : this.zze) {
            if (z10) {
                return true;
            }
        }
        return false;
    }

    public final boolean zzd(int i10) {
        return this.zze[i10];
    }
}
