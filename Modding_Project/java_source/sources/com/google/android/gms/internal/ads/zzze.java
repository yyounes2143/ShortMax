package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzze {
    public final int zza;
    public final zzme[] zzb;
    public final zzyw[] zzc;
    public final zzbt zzd;
    @Nullable
    public final Object zze;

    public zzze(zzme[] zzmeVarArr, zzyw[] zzywVarArr, zzbt zzbtVar, @Nullable Object obj) {
        boolean z10;
        int length = zzmeVarArr.length;
        if (length == zzywVarArr.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        this.zzb = zzmeVarArr;
        this.zzc = (zzyw[]) zzywVarArr.clone();
        this.zzd = zzbtVar;
        this.zze = obj;
        this.zza = length;
    }

    public final boolean zza(@Nullable zzze zzzeVar, int i10) {
        if (zzzeVar == null || !Objects.equals(this.zzb[i10], zzzeVar.zzb[i10]) || !Objects.equals(this.zzc[i10], zzzeVar.zzc[i10])) {
            return false;
        }
        return true;
    }

    public final boolean zzb(int i10) {
        if (this.zzb[i10] != null) {
            return true;
        }
        return false;
    }
}
