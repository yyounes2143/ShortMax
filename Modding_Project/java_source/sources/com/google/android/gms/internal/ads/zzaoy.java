package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.collection.SieveCacheKt;
import java.io.IOException;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaoy {
    public static final /* synthetic */ int zza = 0;
    private static final byte[] zzb = {0, 0, 0, 0, 16, 0, ByteCompanionObject.MIN_VALUE, 0, 0, -86, 0, 56, -101, 113};
    private static final byte[] zzc = {0, 0, 33, 7, -45, 17, -122, 68, -56, -63, -54, 0, 0, 0};

    public static Pair zza(zzadw zzadwVar) throws IOException {
        zzadwVar.zzj();
        zzaox zzd = zzd(1684108385, zzadwVar, new zzen(8));
        zzadwVar.zzk(8);
        return Pair.create(Long.valueOf(zzadwVar.zzf()), Long.valueOf(zzd.zzb));
    }

    public static zzaow zzb(zzadw zzadwVar) throws IOException {
        boolean z10;
        byte[] bArr;
        int i10;
        zzen zzenVar = new zzen(16);
        long j10 = zzd(1718449184, zzadwVar, zzenVar).zzb;
        if (j10 >= 16) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzf(z10);
        zzadwVar.zzh(zzenVar.zzN(), 0, 16);
        zzenVar.zzL(0);
        int zzk = zzenVar.zzk();
        int zzk2 = zzenVar.zzk();
        int zzj = zzenVar.zzj();
        int zzj2 = zzenVar.zzj();
        int zzk3 = zzenVar.zzk();
        int zzk4 = zzenVar.zzk();
        int i11 = ((int) j10) - 16;
        if (i11 > 0) {
            byte[] bArr2 = new byte[i11];
            zzadwVar.zzh(bArr2, 0, i11);
            if (zzk == 65534) {
                if (i11 == 24) {
                    zzen zzenVar2 = new zzen(bArr2);
                    zzenVar2.zzk();
                    int zzk5 = zzenVar2.zzk();
                    if (zzk5 != 0 && zzk5 != zzk4) {
                        throw zzaz.zzc("validBits ( " + zzk5 + ")  != bitsPerSample( " + zzk4 + ") are not supported");
                    }
                    int zzj3 = zzenVar2.zzj();
                    if ((zzj3 >> 18) == 0) {
                        if (zzj3 != 0 && Integer.bitCount(zzj3) != zzk2) {
                            throw zzaz.zzc("invalid number of channels (" + Integer.bitCount(zzj3) + ") in channel mask " + zzj3);
                        }
                        zzk = zzenVar2.zzk();
                        byte[] bArr3 = new byte[14];
                        zzenVar2.zzH(bArr3, 0, 14);
                        if (!Arrays.equals(bArr3, zzb) && !Arrays.equals(bArr3, zzc)) {
                            throw zzaz.zzc("invalid wav format extension guid");
                        }
                    } else {
                        throw zzaz.zzc("invalid channel mask " + zzj3);
                    }
                } else {
                    bArr = bArr2;
                    i10 = 65534;
                }
            }
            i10 = zzk;
            bArr = bArr2;
        } else {
            bArr = zzex.zzb;
            i10 = zzk;
        }
        zzadwVar.zzk((int) (zzadwVar.zze() - zzadwVar.zzf()));
        return new zzaow(i10, zzk2, zzj, zzj2, zzk3, zzk4, bArr);
    }

    public static boolean zzc(zzadw zzadwVar) throws IOException {
        zzen zzenVar = new zzen(8);
        int i10 = zzaox.zza(zzadwVar, zzenVar).zza;
        if (i10 != 1380533830 && i10 != 1380333108) {
            return false;
        }
        zzadwVar.zzh(zzenVar.zzN(), 0, 4);
        zzenVar.zzL(0);
        int zzg = zzenVar.zzg();
        if (zzg != 1463899717) {
            zzea.zzc("WavHeaderReader", "Unsupported form type: " + zzg);
            return false;
        }
        return true;
    }

    private static zzaox zzd(int i10, zzadw zzadwVar, zzen zzenVar) throws IOException {
        zzaox zza2 = zzaox.zza(zzadwVar, zzenVar);
        while (true) {
            int i11 = zza2.zza;
            if (i11 != i10) {
                zzea.zzf("WavHeaderReader", "Ignoring unknown WAV chunk: " + i11);
                long j10 = zza2.zzb;
                long j11 = 8 + j10;
                if ((1 & j10) != 0) {
                    j11 = 9 + j10;
                }
                if (j11 <= SieveCacheKt.NodeLinkMask) {
                    zzadwVar.zzk((int) j11);
                    zza2 = zzaox.zza(zzadwVar, zzenVar);
                } else {
                    throw zzaz.zzc("Chunk is too large (~2GB+) to skip; id: " + i11);
                }
            } else {
                return zza2;
            }
        }
    }
}
