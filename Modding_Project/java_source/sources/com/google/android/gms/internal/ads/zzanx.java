package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzanx {
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private final zzeu zza = new zzeu(0);
    private long zzf = -9223372036854775807L;
    private long zzg = -9223372036854775807L;
    private long zzh = -9223372036854775807L;
    private final zzen zzb = new zzen();

    public static long zzc(zzen zzenVar) {
        int zzc = zzenVar.zzc();
        if (zzenVar.zza() >= 9) {
            byte[] bArr = new byte[9];
            zzenVar.zzH(bArr, 0, 9);
            zzenVar.zzL(zzc);
            byte b10 = bArr[0];
            if ((b10 & 196) == 68) {
                byte b11 = bArr[2];
                if ((b11 & 4) == 4) {
                    byte b12 = bArr[4];
                    if ((b12 & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3) {
                        long j10 = b10;
                        long j11 = b11;
                        long j12 = (j11 & 3) << 13;
                        return j12 | ((bArr[1] & 255) << 20) | ((j10 & 3) << 28) | (((j10 & 56) >> 3) << 30) | (((248 & j11) >> 3) << 15) | ((bArr[3] & 255) << 5) | ((b12 & 248) >> 3);
                    }
                    return -9223372036854775807L;
                }
                return -9223372036854775807L;
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    private final int zzf(zzadw zzadwVar) {
        byte[] bArr = zzex.zzb;
        int length = bArr.length;
        this.zzb.zzJ(bArr, 0);
        this.zzc = true;
        zzadwVar.zzj();
        return 0;
    }

    private static final int zzg(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
    }

    public final int zza(zzadw zzadwVar, zzaer zzaerVar) throws IOException {
        long j10 = -9223372036854775807L;
        if (!this.zze) {
            long zzd = zzadwVar.zzd();
            int min = (int) Math.min(20000L, zzd);
            long j11 = zzd - min;
            if (zzadwVar.zzf() != j11) {
                zzaerVar.zza = j11;
                return 1;
            }
            zzen zzenVar = this.zzb;
            zzenVar.zzI(min);
            zzadwVar.zzj();
            zzadwVar.zzh(zzenVar.zzN(), 0, min);
            int zzc = zzenVar.zzc();
            int zzd2 = zzenVar.zzd() - 4;
            while (true) {
                if (zzd2 < zzc) {
                    break;
                }
                if (zzg(zzenVar.zzN(), zzd2) == 442) {
                    zzenVar.zzL(zzd2 + 4);
                    long zzc2 = zzc(zzenVar);
                    if (zzc2 != -9223372036854775807L) {
                        j10 = zzc2;
                        break;
                    }
                }
                zzd2--;
            }
            this.zzg = j10;
            this.zze = true;
        } else if (this.zzg == -9223372036854775807L) {
            zzf(zzadwVar);
            return 0;
        } else if (!this.zzd) {
            int min2 = (int) Math.min(20000L, zzadwVar.zzd());
            if (zzadwVar.zzf() != 0) {
                zzaerVar.zza = 0L;
                return 1;
            }
            zzen zzenVar2 = this.zzb;
            zzenVar2.zzI(min2);
            zzadwVar.zzj();
            zzadwVar.zzh(zzenVar2.zzN(), 0, min2);
            int zzc3 = zzenVar2.zzc();
            int zzd3 = zzenVar2.zzd();
            while (true) {
                if (zzc3 >= zzd3 - 3) {
                    break;
                }
                if (zzg(zzenVar2.zzN(), zzc3) == 442) {
                    zzenVar2.zzL(zzc3 + 4);
                    long zzc4 = zzc(zzenVar2);
                    if (zzc4 != -9223372036854775807L) {
                        j10 = zzc4;
                        break;
                    }
                }
                zzc3++;
            }
            this.zzf = j10;
            this.zzd = true;
        } else {
            long j12 = this.zzf;
            if (j12 == -9223372036854775807L) {
                zzf(zzadwVar);
                return 0;
            }
            zzeu zzeuVar = this.zza;
            this.zzh = zzeuVar.zzc(this.zzg) - zzeuVar.zzb(j12);
            zzf(zzadwVar);
            return 0;
        }
        return 0;
    }

    public final long zzb() {
        return this.zzh;
    }

    public final zzeu zzd() {
        return this.zza;
    }

    public final boolean zze() {
        return this.zzc;
    }
}
