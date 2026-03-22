package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Comparator;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public class zzxt implements zzyw {
    protected final zzbm zza;
    protected final int zzb;
    protected final int[] zzc;
    private final zzz[] zzd;
    private int zze;

    public zzxt(zzbm zzbmVar, int[] iArr, int i10) {
        boolean z10;
        int length = iArr.length;
        if (length > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzf(z10);
        zzbmVar.getClass();
        this.zza = zzbmVar;
        this.zzb = length;
        this.zzd = new zzz[length];
        for (int i11 = 0; i11 < iArr.length; i11++) {
            this.zzd[i11] = zzbmVar.zzb(iArr[i11]);
        }
        Arrays.sort(this.zzd, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxs
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((zzz) obj2).zzj - ((zzz) obj).zzj;
            }
        });
        this.zzc = new int[this.zzb];
        for (int i12 = 0; i12 < this.zzb; i12++) {
            this.zzc[i12] = zzbmVar.zza(this.zzd[i12]);
        }
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzxt zzxtVar = (zzxt) obj;
            if (this.zza.equals(zzxtVar.zza) && Arrays.equals(this.zzc, zzxtVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.zze;
        if (i10 == 0) {
            int identityHashCode = (System.identityHashCode(this.zza) * 31) + Arrays.hashCode(this.zzc);
            this.zze = identityHashCode;
            return identityHashCode;
        }
        return i10;
    }

    @Override // com.google.android.gms.internal.ads.zzzb
    public final zzz zza(int i10) {
        return this.zzd[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzyw
    public final zzz zzb() {
        return this.zzd[0];
    }

    @Override // com.google.android.gms.internal.ads.zzzb
    public final zzbm zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzzb
    public final int zze(int i10) {
        return this.zzc[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzyw
    public final int zzf() {
        return this.zzc[0];
    }

    @Override // com.google.android.gms.internal.ads.zzzb
    public final int zzg(int i10) {
        for (int i11 = 0; i11 < this.zzb; i11++) {
            if (this.zzc[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzzb
    public final int zzh() {
        return this.zzc.length;
    }
}
