package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaop {
    public static int zza(byte[] bArr, int i10, int i11) {
        while (i10 < i11 && bArr[i10] != 71) {
            i10++;
        }
        return i10;
    }

    public static long zzb(zzen zzenVar, int i10, int i11) {
        zzenVar.zzL(i10);
        if (zzenVar.zza() >= 5) {
            int zzg = zzenVar.zzg();
            if ((8388608 & zzg) == 0 && ((zzg >> 8) & 8191) == i11 && (zzg & 32) != 0 && zzenVar.zzm() >= 7 && zzenVar.zza() >= 7 && (zzenVar.zzm() & 16) == 16) {
                byte[] bArr = new byte[6];
                zzenVar.zzH(bArr, 0, 6);
                long j10 = bArr[3] & 255;
                return ((bArr[0] & 255) << 25) | ((bArr[1] & 255) << 17) | ((bArr[2] & 255) << 9) | (j10 + j10) | ((bArr[4] & 255) >> 7);
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }
}
