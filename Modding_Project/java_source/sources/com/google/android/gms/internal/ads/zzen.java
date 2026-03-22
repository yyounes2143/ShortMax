package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.inmobi.commons.core.configs.AdConfig;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzen {
    private static final char[] zza = {'\r', '\n'};
    private static final char[] zzb = {'\n'};
    private static final zzfyv zzc = zzfyv.zzr(StandardCharsets.US_ASCII, StandardCharsets.UTF_8, StandardCharsets.UTF_16, StandardCharsets.UTF_16BE, StandardCharsets.UTF_16LE);
    private byte[] zzd;
    private int zze;
    private int zzf;

    public zzen(byte[] bArr, int i10) {
        this.zzd = bArr;
        this.zzf = i10;
    }

    private final char zzO(ByteOrder byteOrder, int i10) {
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            byte[] bArr = this.zzd;
            int i11 = this.zze + i10;
            return zzgbq.zza(bArr[i11], bArr[i11 + 1]);
        }
        byte[] bArr2 = this.zzd;
        int i12 = this.zze + i10;
        return zzgbq.zza(bArr2[i12 + 1], bArr2[i12]);
    }

    private final char zzP(Charset charset, char[] cArr) {
        int zzS;
        boolean z10;
        if (zza() >= zzR(charset) && (zzS = zzS(charset)) != 0) {
            if (!Character.isSupplementaryCodePoint(r0)) {
                long j10 = r0;
                char c10 = (char) j10;
                if (c10 == j10) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                zzfvp.zzh(z10, "Out of range: %s", j10);
                for (char c11 : cArr) {
                    if (c11 == c10) {
                        this.zze += zzgbt.zzb(zzS & 255);
                        return c10;
                    }
                }
            }
        }
        return (char) 0;
    }

    private static int zzQ(int i10, int i11, int i12, int i13) {
        return zzgbt.zze((byte) 0, zzgbx.zza(((i10 & 7) << 2) | ((i11 & 48) >> 4)), zzgbx.zza(((i12 & 60) >> 2) | ((i11 & 15) << 4)), zzgbx.zza((i13 & 63) | ((i12 & 3) << 6)));
    }

    private static int zzR(Charset charset) {
        zzdd.zze(zzc.contains(charset), "Unsupported charset: ".concat(String.valueOf(charset)));
        if (!charset.equals(StandardCharsets.UTF_8) && !charset.equals(StandardCharsets.US_ASCII)) {
            return 2;
        }
        return 1;
    }

    private final int zzS(Charset charset) {
        ByteOrder byteOrder;
        int i10;
        int i11;
        int i12;
        zzdd.zze(zzc.contains(charset), "Unsupported charset: ".concat(String.valueOf(charset)));
        if (zza() >= zzR(charset)) {
            int i13 = 1;
            if (charset.equals(StandardCharsets.US_ASCII)) {
                byte b10 = this.zzd[this.zze];
                if ((b10 & ByteCompanionObject.MIN_VALUE) == 0) {
                    i10 = b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                    return (i10 << 8) | i13;
                }
                return 0;
            }
            if (charset.equals(StandardCharsets.UTF_8)) {
                byte b11 = this.zzd[this.zze];
                if ((b11 & ByteCompanionObject.MIN_VALUE) == 0) {
                    i11 = 1;
                } else if ((b11 & 224) == 192 && zza() >= 2 && zzT(this.zzd[this.zze + 1])) {
                    i11 = 2;
                } else {
                    if ((this.zzd[this.zze] & 240) == 224 && zza() >= 3) {
                        byte[] bArr = this.zzd;
                        int i14 = this.zze;
                        if (zzT(bArr[i14 + 1]) && zzT(bArr[i14 + 2])) {
                            i11 = 3;
                        }
                    }
                    if ((this.zzd[this.zze] & 248) == 240 && zza() >= 4) {
                        byte[] bArr2 = this.zzd;
                        int i15 = this.zze;
                        if (zzT(bArr2[i15 + 1]) && zzT(bArr2[i15 + 2]) && zzT(bArr2[i15 + 3])) {
                            i11 = 4;
                        }
                    }
                    i11 = 0;
                }
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (i11 == 4) {
                                byte[] bArr3 = this.zzd;
                                int i16 = this.zze;
                                i12 = zzQ(bArr3[i16], bArr3[i16 + 1], bArr3[i16 + 2], bArr3[i16 + 3]);
                            }
                            return 0;
                        }
                        byte[] bArr4 = this.zzd;
                        int i17 = this.zze;
                        i12 = zzQ(0, bArr4[i17] & 15, bArr4[i17 + 1], bArr4[i17 + 2]);
                    } else {
                        byte[] bArr5 = this.zzd;
                        int i18 = this.zze;
                        i12 = zzQ(0, 0, bArr5[i18], bArr5[i18 + 1]);
                    }
                } else {
                    i12 = this.zzd[this.zze] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                }
                i13 = i11;
                i10 = i12;
            } else {
                if (charset.equals(StandardCharsets.UTF_16LE)) {
                    byteOrder = ByteOrder.LITTLE_ENDIAN;
                } else {
                    byteOrder = ByteOrder.BIG_ENDIAN;
                }
                char zzO = zzO(byteOrder, 0);
                if (Character.isHighSurrogate(zzO) && zza() >= 4) {
                    i10 = Character.toCodePoint(zzO, zzO(byteOrder, 2));
                    i13 = 4;
                } else {
                    i10 = zzO;
                    i13 = 2;
                }
            }
            return (i10 << 8) | i13;
        }
        throw new IndexOutOfBoundsException("position=" + this.zze + ", limit=" + this.zzf);
    }

    private static boolean zzT(byte b10) {
        if ((b10 & 192) == 128) {
            return true;
        }
        return false;
    }

    public final String zzA(int i10) {
        int i11;
        if (i10 == 0) {
            return "";
        }
        int i12 = this.zze;
        int i13 = (i12 + i10) - 1;
        if (i13 < this.zzf && this.zzd[i13] == 0) {
            i11 = i10 - 1;
        } else {
            i11 = i10;
        }
        String zzC = zzex.zzC(this.zzd, i12, i11);
        this.zze += i10;
        return zzC;
    }

    public final String zzB(int i10, Charset charset) {
        byte[] bArr = this.zzd;
        int i11 = this.zze;
        String str = new String(bArr, i11, i10, charset);
        this.zze = i11 + i10;
        return str;
    }

    @Nullable
    public final Charset zzC() {
        if (zza() >= 3) {
            byte[] bArr = this.zzd;
            int i10 = this.zze;
            if (bArr[i10] == -17 && bArr[i10 + 1] == -69 && bArr[i10 + 2] == -65) {
                this.zze = i10 + 3;
                return StandardCharsets.UTF_8;
            }
        }
        if (zza() >= 2) {
            byte[] bArr2 = this.zzd;
            int i11 = this.zze;
            byte b10 = bArr2[i11];
            if (b10 == -2) {
                if (bArr2[i11 + 1] == -1) {
                    this.zze = i11 + 2;
                    return StandardCharsets.UTF_16BE;
                }
                return null;
            } else if (b10 == -1 && bArr2[i11 + 1] == -2) {
                this.zze = i11 + 2;
                return StandardCharsets.UTF_16LE;
            } else {
                return null;
            }
        }
        return null;
    }

    public final short zzD() {
        byte[] bArr = this.zzd;
        int i10 = this.zze;
        int i11 = i10 + 1;
        this.zze = i11;
        int i12 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        this.zze = i10 + 2;
        return (short) (((bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | i12);
    }

    public final short zzE() {
        byte[] bArr = this.zzd;
        int i10 = this.zze;
        int i11 = i10 + 1;
        this.zze = i11;
        int i12 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        this.zze = i10 + 2;
        return (short) ((bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | (i12 << 8));
    }

    public final void zzF(int i10) {
        byte[] bArr = this.zzd;
        if (i10 > bArr.length) {
            this.zzd = Arrays.copyOf(bArr, i10);
        }
    }

    public final void zzG(zzem zzemVar, int i10) {
        zzH(zzemVar.zza, 0, i10);
        zzemVar.zzl(0);
    }

    public final void zzH(byte[] bArr, int i10, int i11) {
        System.arraycopy(this.zzd, this.zze, bArr, i10, i11);
        this.zze += i11;
    }

    public final void zzI(int i10) {
        byte[] bArr = this.zzd;
        if (bArr.length < i10) {
            bArr = new byte[i10];
        }
        zzJ(bArr, i10);
    }

    public final void zzJ(byte[] bArr, int i10) {
        this.zzd = bArr;
        this.zzf = i10;
        this.zze = 0;
    }

    public final void zzK(int i10) {
        boolean z10 = false;
        if (i10 >= 0 && i10 <= this.zzd.length) {
            z10 = true;
        }
        zzdd.zzd(z10);
        this.zzf = i10;
    }

    public final void zzL(int i10) {
        boolean z10 = false;
        if (i10 >= 0 && i10 <= this.zzf) {
            z10 = true;
        }
        zzdd.zzd(z10);
        this.zze = i10;
    }

    public final void zzM(int i10) {
        zzL(this.zze + i10);
    }

    public final byte[] zzN() {
        return this.zzd;
    }

    public final int zza() {
        return Math.max(this.zzf - this.zze, 0);
    }

    public final int zzb() {
        return this.zzd.length;
    }

    public final int zzc() {
        return this.zze;
    }

    public final int zzd() {
        return this.zzf;
    }

    public final int zze(Charset charset) {
        int zzS = zzS(charset);
        if (zzS != 0) {
            return zzgbt.zzb(zzS >>> 8);
        }
        return 1114112;
    }

    public final int zzf() {
        return this.zzd[this.zze] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
    }

    public final int zzg() {
        byte[] bArr = this.zzd;
        int i10 = this.zze;
        int i11 = i10 + 1;
        this.zze = i11;
        int i12 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i13 = i10 + 2;
        this.zze = i13;
        int i14 = bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i15 = i10 + 3;
        this.zze = i15;
        int i16 = bArr[i13] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        this.zze = i10 + 4;
        return (bArr[i15] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | (i12 << 24) | (i14 << 16) | (i16 << 8);
    }

    public final int zzh() {
        byte[] bArr = this.zzd;
        int i10 = this.zze;
        int i11 = i10 + 1;
        this.zze = i11;
        int i12 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i13 = i10 + 2;
        this.zze = i13;
        int i14 = bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        this.zze = i10 + 3;
        return (bArr[i13] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((i12 << 24) >> 8) | (i14 << 8);
    }

    public final int zzi() {
        byte[] bArr = this.zzd;
        int i10 = this.zze;
        int i11 = i10 + 1;
        this.zze = i11;
        int i12 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i13 = i10 + 2;
        this.zze = i13;
        int i14 = bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i15 = i10 + 3;
        this.zze = i15;
        int i16 = bArr[i13] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        this.zze = i10 + 4;
        return ((bArr[i15] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (i14 << 8) | i12 | (i16 << 16);
    }

    public final int zzj() {
        int zzi = zzi();
        if (zzi >= 0) {
            return zzi;
        }
        throw new IllegalStateException("Top bit not zero: " + zzi);
    }

    public final int zzk() {
        byte[] bArr = this.zzd;
        int i10 = this.zze;
        int i11 = i10 + 1;
        this.zze = i11;
        int i12 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        this.zze = i10 + 2;
        return ((bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | i12;
    }

    public final int zzl() {
        return (zzm() << 21) | (zzm() << 14) | (zzm() << 7) | zzm();
    }

    public final int zzm() {
        byte[] bArr = this.zzd;
        int i10 = this.zze;
        this.zze = i10 + 1;
        return bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
    }

    public final int zzn() {
        byte[] bArr = this.zzd;
        int i10 = this.zze;
        int i11 = i10 + 1;
        this.zze = i11;
        int i12 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        this.zze = i10 + 2;
        int i13 = bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        this.zze = i10 + 4;
        return i13 | (i12 << 8);
    }

    public final int zzo() {
        byte[] bArr = this.zzd;
        int i10 = this.zze;
        int i11 = i10 + 1;
        this.zze = i11;
        int i12 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i13 = i10 + 2;
        this.zze = i13;
        int i14 = bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        this.zze = i10 + 3;
        return (bArr[i13] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | (i12 << 16) | (i14 << 8);
    }

    public final int zzp() {
        int zzg = zzg();
        if (zzg >= 0) {
            return zzg;
        }
        throw new IllegalStateException("Top bit not zero: " + zzg);
    }

    public final int zzq() {
        byte[] bArr = this.zzd;
        int i10 = this.zze;
        int i11 = i10 + 1;
        this.zze = i11;
        int i12 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        this.zze = i10 + 2;
        return (bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | (i12 << 8);
    }

    public final long zzr() {
        int i10;
        int i11;
        byte[] bArr = this.zzd;
        int i12 = this.zze;
        int i13 = i12 + 1;
        this.zze = i13;
        int i14 = i12 + 2;
        this.zze = i14;
        long j10 = bArr[i13];
        int i15 = i12 + 3;
        this.zze = i15;
        long j11 = bArr[i14];
        int i16 = i12 + 4;
        this.zze = i16;
        long j12 = bArr[i15];
        int i17 = i12 + 5;
        this.zze = i17;
        long j13 = bArr[i16];
        this.zze = i12 + 6;
        long j14 = bArr[i17];
        this.zze = i12 + 7;
        this.zze = i12 + 8;
        long j15 = j14 & 255;
        return ((bArr[i11] & 255) << 56) | ((bArr[i10] & 255) << 48) | ((j10 & 255) << 8) | (bArr[i12] & 255) | ((j11 & 255) << 16) | ((j12 & 255) << 24) | ((j13 & 255) << 32) | (j15 << 40);
    }

    public final long zzs() {
        int i10;
        byte[] bArr = this.zzd;
        int i11 = this.zze;
        int i12 = i11 + 1;
        this.zze = i12;
        int i13 = i11 + 2;
        this.zze = i13;
        long j10 = bArr[i12];
        this.zze = i11 + 3;
        long j11 = bArr[i13];
        this.zze = i11 + 4;
        return ((bArr[i10] & 255) << 24) | (bArr[i11] & 255) | ((j10 & 255) << 8) | ((j11 & 255) << 16);
    }

    public final long zzt() {
        int i10;
        int i11;
        byte[] bArr = this.zzd;
        int i12 = this.zze;
        int i13 = i12 + 1;
        this.zze = i13;
        int i14 = i12 + 2;
        this.zze = i14;
        long j10 = bArr[i13];
        int i15 = i12 + 3;
        this.zze = i15;
        long j11 = bArr[i14];
        int i16 = i12 + 4;
        this.zze = i16;
        long j12 = bArr[i15];
        int i17 = i12 + 5;
        this.zze = i17;
        long j13 = bArr[i16];
        this.zze = i12 + 6;
        long j14 = bArr[i17];
        this.zze = i12 + 7;
        this.zze = i12 + 8;
        return (bArr[i11] & 255) | ((bArr[i12] & 255) << 56) | ((j10 & 255) << 48) | ((j11 & 255) << 40) | ((j12 & 255) << 32) | ((j13 & 255) << 24) | ((j14 & 255) << 16) | ((bArr[i10] & 255) << 8);
    }

    public final long zzu() {
        int i10;
        int i11;
        byte[] bArr = this.zzd;
        int i12 = this.zze;
        int i13 = i12 + 1;
        this.zze = i13;
        this.zze = i12 + 2;
        long j10 = bArr[i13];
        this.zze = i12 + 3;
        this.zze = i12 + 4;
        return (bArr[i11] & 255) | ((bArr[i12] & 255) << 24) | ((j10 & 255) << 16) | ((bArr[i10] & 255) << 8);
    }

    public final long zzv() {
        long j10 = 0;
        for (int i10 = 0; i10 < 9; i10++) {
            if (this.zze != this.zzf) {
                long zzm = zzm();
                j10 |= (127 & zzm) << (i10 * 7);
                if ((zzm & 128) == 0) {
                    break;
                }
            } else {
                throw new IllegalStateException("Attempting to read a byte over the limit.");
            }
        }
        return j10;
    }

    public final long zzw() {
        long zzt = zzt();
        if (zzt >= 0) {
            return zzt;
        }
        throw new IllegalStateException("Top bit not zero: " + zzt);
    }

    public final long zzx() {
        int i10;
        int i11;
        byte b10;
        int i12;
        long j10 = this.zzd[this.zze];
        int i13 = 7;
        while (true) {
            i10 = 0;
            if (i13 < 0) {
                break;
            }
            if (((1 << i13) & j10) != 0) {
                i13--;
            } else if (i13 < 6) {
                j10 &= i12 - 1;
                i10 = 7 - i13;
            } else if (i13 == 7) {
                i10 = 1;
            }
        }
        if (i10 != 0) {
            for (i11 = 1; i11 < i10; i11++) {
                if ((this.zzd[this.zze + i11] & 192) == 128) {
                    j10 = (j10 << 6) | (b10 & 63);
                } else {
                    throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j10);
                }
            }
            this.zze += i10;
            return j10;
        }
        throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j10);
    }

    @Nullable
    public final String zzy(char c10) {
        if (zza() == 0) {
            return null;
        }
        int i10 = this.zze;
        while (i10 < this.zzf && this.zzd[i10] != 0) {
            i10++;
        }
        byte[] bArr = this.zzd;
        int i11 = this.zze;
        String zzC = zzex.zzC(bArr, i11, i10 - i11);
        this.zze = i10;
        if (i10 < this.zzf) {
            this.zze = i10 + 1;
        }
        return zzC;
    }

    @Nullable
    public final String zzz(Charset charset) {
        zzdd.zze(zzc.contains(charset), "Unsupported charset: ".concat(String.valueOf(charset)));
        if (zza() == 0) {
            return null;
        }
        Charset charset2 = StandardCharsets.US_ASCII;
        if (!charset.equals(charset2)) {
            zzC();
        }
        int i10 = 1;
        if (!charset.equals(StandardCharsets.UTF_8) && !charset.equals(charset2)) {
            i10 = 2;
            if (!charset.equals(StandardCharsets.UTF_16) && !charset.equals(StandardCharsets.UTF_16LE) && !charset.equals(StandardCharsets.UTF_16BE)) {
                throw new IllegalArgumentException("Unsupported charset: ".concat(String.valueOf(charset)));
            }
        }
        int i11 = this.zze;
        while (true) {
            int i12 = this.zzf;
            if (i11 < i12 - (i10 - 1)) {
                if ((charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) && zzex.zzM(this.zzd[i11])) {
                    break;
                }
                if (charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) {
                    byte[] bArr = this.zzd;
                    if (bArr[i11] == 0 && zzex.zzM(bArr[i11 + 1])) {
                        break;
                    }
                }
                if (charset.equals(StandardCharsets.UTF_16LE)) {
                    byte[] bArr2 = this.zzd;
                    if (bArr2[i11 + 1] == 0 && zzex.zzM(bArr2[i11])) {
                        break;
                    }
                }
                i11 += i10;
            } else {
                i11 = i12;
                break;
            }
        }
        String zzB = zzB(i11 - this.zze, charset);
        if (this.zze != this.zzf && zzP(charset, zza) == '\r') {
            zzP(charset, zzb);
        }
        return zzB;
    }

    public zzen() {
        this.zzd = zzex.zzb;
    }

    public zzen(int i10) {
        this.zzd = new byte[i10];
        this.zzf = i10;
    }

    public zzen(byte[] bArr) {
        this.zzd = bArr;
        this.zzf = bArr.length;
    }
}
