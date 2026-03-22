package com.google.android.gms.internal.ads;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.math.RoundingMode;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzrq implements zzra {
    /* JADX INFO: Access modifiers changed from: protected */
    public zzrq(zzrp zzrpVar) {
    }

    protected static int zza(int i10, int i11, int i12) {
        return zzgbt.zzb(((i10 * i11) * i12) / 1000000);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final int zzb(int i10, int i11, int i12, int i13, int i14, int i15) {
        int zzc;
        int i16 = 250000;
        if (i12 != 0) {
            if (i12 != 1) {
                if (i11 == 5) {
                    i16 = 500000;
                } else if (i11 == 8) {
                    i16 = TTVideoEngineInterface.PLAYER_TIME_BASE;
                    i11 = 8;
                }
                if (i15 != -1) {
                    zzc = zzgbm.zzb(i15, 8, RoundingMode.CEILING);
                } else {
                    zzc = zzc(i11);
                }
                return zzgbt.zzb((i16 * zzc) / 1000000);
            }
            return zzgbt.zzb((zzc(i11) * 50000000) / 1000000);
        }
        int zza = zza(250000, i14, i13);
        int zza2 = zza(750000, i14, i13);
        String str = zzex.zza;
        return Math.max(zza, Math.min(i10 * 4, zza2));
    }

    private static int zzc(int i10) {
        boolean z10;
        int zza = zzadz.zza(i10);
        if (zza != -2147483647) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzf(z10);
        return zza;
    }
}
