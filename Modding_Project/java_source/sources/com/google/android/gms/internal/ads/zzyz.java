package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzyz {
    private final int[] zza;
    private final zzxk[] zzb;
    private final int[] zzc;
    private final int[][][] zzd;
    private final zzxk zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public zzyz(String[] strArr, int[] iArr, zzxk[] zzxkVarArr, int[] iArr2, int[][][] iArr3, zzxk zzxkVar) {
        this.zza = iArr;
        this.zzb = zzxkVarArr;
        this.zzd = iArr3;
        this.zzc = iArr2;
        this.zze = zzxkVar;
    }

    public final int zza(int i10, int i11, boolean z10) {
        zzxk[] zzxkVarArr = this.zzb;
        int i12 = zzxkVarArr[i10].zzb(i11).zza;
        int[] iArr = new int[i12];
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < i12; i15++) {
            if ((this.zzd[i10][i11][i15] & 7) == 4) {
                iArr[i14] = i15;
                i14++;
            }
        }
        int[] copyOf = Arrays.copyOf(iArr, i14);
        String str = null;
        int i16 = 0;
        int i17 = 16;
        boolean z11 = false;
        while (i13 < copyOf.length) {
            String str2 = zzxkVarArr[i10].zzb(i11).zzb(copyOf[i13]).zzo;
            int i18 = i16 + 1;
            if (i16 == 0) {
                str = str2;
            } else {
                z11 |= !Objects.equals(str, str2);
            }
            i17 = Math.min(i17, this.zzd[i10][i11][i13] & 24);
            i13++;
            i16 = i18;
        }
        if (z11) {
            return Math.min(i17, this.zzc[i10]);
        }
        return i17;
    }

    public final int zzb(int i10, int i11, int i12) {
        return this.zzd[i10][i11][i12];
    }

    public final int zzc(int i10) {
        return this.zza[i10];
    }

    public final zzxk zzd(int i10) {
        return this.zzb[i10];
    }

    public final zzxk zze() {
        return this.zze;
    }
}
