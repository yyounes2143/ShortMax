package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzafp implements zzafj {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;

    private zzafp(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.zza = i10;
        this.zzb = i12;
        this.zzc = i13;
        this.zzd = i14;
        this.zze = i15;
        this.zzf = i16;
    }

    public static zzafp zzd(zzen zzenVar) {
        int zzi = zzenVar.zzi();
        zzenVar.zzM(12);
        int zzi2 = zzenVar.zzi();
        int zzi3 = zzenVar.zzi();
        int zzi4 = zzenVar.zzi();
        zzenVar.zzM(4);
        int zzi5 = zzenVar.zzi();
        int zzi6 = zzenVar.zzi();
        zzenVar.zzM(4);
        return new zzafp(zzi, zzi2, zzi3, zzi4, zzi5, zzi6, zzenVar.zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final int zza() {
        return 1752331379;
    }

    public final int zzb() {
        int i10 = this.zza;
        if (i10 != 1935960438) {
            if (i10 != 1935963489) {
                if (i10 != 1937012852) {
                    zzea.zzf("AviStreamHeaderChunk", "Found unsupported streamType fourCC: ".concat(String.valueOf(Integer.toHexString(i10))));
                    return -1;
                }
                return 3;
            }
            return 1;
        }
        return 2;
    }

    public final long zzc() {
        RoundingMode roundingMode = RoundingMode.DOWN;
        return zzex.zzu(this.zzd, this.zzb * 1000000, this.zzc, roundingMode);
    }
}
