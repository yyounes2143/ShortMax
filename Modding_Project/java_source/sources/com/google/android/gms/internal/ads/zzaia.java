package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaia {
    private static final long[] zza = {128, 64, 32, 16, 8, 4, 2, 1};
    private final byte[] zzb = new byte[8];
    private int zzc;
    private int zzd;

    public static int zzb(int i10) {
        int i11 = 0;
        while (i11 < 8) {
            int i12 = i11 + 1;
            if ((zza[i11] & i10) == 0) {
                i11 = i12;
            } else {
                return i12;
            }
        }
        return -1;
    }

    public static long zzc(byte[] bArr, int i10, boolean z10) {
        long j10 = bArr[0] & 255;
        if (z10) {
            j10 &= ~zza[i10 - 1];
        }
        for (int i11 = 1; i11 < i10; i11++) {
            j10 = (j10 << 8) | (bArr[i11] & 255);
        }
        return j10;
    }

    public final int zza() {
        return this.zzd;
    }

    public final long zzd(zzadw zzadwVar, boolean z10, boolean z11, int i10) throws IOException {
        if (this.zzc == 0) {
            byte[] bArr = this.zzb;
            if (!zzadwVar.zzn(bArr, 0, 1, z10)) {
                return -1L;
            }
            int zzb = zzb(bArr[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            this.zzd = zzb;
            if (zzb != -1) {
                this.zzc = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
        }
        int i11 = this.zzd;
        if (i11 > i10) {
            this.zzc = 0;
            return -2L;
        }
        if (i11 != 1) {
            zzadwVar.zzi(this.zzb, 1, i11 - 1);
        }
        this.zzc = 0;
        return zzc(this.zzb, this.zzd, z11);
    }

    public final void zze() {
        this.zzc = 0;
        this.zzd = 0;
    }
}
