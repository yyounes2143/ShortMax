package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzafd {
    private final byte[] zza;
    private final int zzb;
    private int zzc;
    private int zzd;

    public zzafd(byte[] bArr) {
        this.zza = bArr;
        this.zzb = bArr.length;
    }

    public final int zza() {
        return (this.zzc * 8) + this.zzd;
    }

    public final int zzb(int i10) {
        int i11 = this.zzc;
        int i12 = i11 + 1;
        byte[] bArr = this.zza;
        int min = Math.min(i10, 8 - this.zzd);
        int i13 = ((bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) >> this.zzd) & (255 >> (8 - min));
        while (min < i10) {
            i13 |= (bArr[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << min;
            min += 8;
            i12++;
        }
        int i14 = i13 & ((-1) >>> (32 - i10));
        zzc(i10);
        return i14;
    }

    public final void zzc(int i10) {
        int i11;
        int i12 = i10 / 8;
        int i13 = this.zzc + i12;
        this.zzc = i13;
        int i14 = this.zzd + (i10 - (i12 * 8));
        this.zzd = i14;
        if (i14 > 7) {
            i13++;
            this.zzc = i13;
            i14 -= 8;
            this.zzd = i14;
        }
        boolean z10 = false;
        if (i13 >= 0 && (i13 < (i11 = this.zzb) || (i13 == i11 && i14 == 0))) {
            z10 = true;
        }
        zzdd.zzf(z10);
    }

    public final boolean zzd() {
        zzc(1);
        if (1 == (((this.zza[this.zzc] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) >> this.zzd) & 1)) {
            return true;
        }
        return false;
    }
}
