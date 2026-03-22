package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgyc extends zzgyf {
    private final InputStream zza;
    private final byte[] zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgyc(InputStream inputStream, int i10, zzgye zzgyeVar) {
        super(null);
        this.zzl = Integer.MAX_VALUE;
        byte[] bArr = zzgzu.zzb;
        this.zza = inputStream;
        this.zzf = new byte[4096];
        this.zzg = 0;
        this.zzi = 0;
        this.zzk = 0;
    }

    private final List zzI(int i10) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i10 > 0) {
            int min = Math.min(i10, 4096);
            byte[] bArr = new byte[min];
            int i11 = 0;
            while (i11 < min) {
                int read = this.zza.read(bArr, i11, min - i11);
                if (read != -1) {
                    this.zzk += read;
                    i11 += read;
                } else {
                    throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                }
            }
            i10 -= min;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    private final void zzJ() {
        int i10 = this.zzg + this.zzh;
        this.zzg = i10;
        int i11 = this.zzk + i10;
        int i12 = this.zzl;
        if (i11 > i12) {
            int i13 = i11 - i12;
            this.zzh = i13;
            this.zzg = i10 - i13;
            return;
        }
        this.zzh = 0;
    }

    private final void zzK(int i10) throws IOException {
        if (!zzL(i10)) {
            if (i10 > (Integer.MAX_VALUE - this.zzk) - this.zzi) {
                throw new zzgzw("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
            }
            throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    private final boolean zzL(int i10) throws IOException {
        int i11 = this.zzi;
        int i12 = i11 + i10;
        int i13 = this.zzg;
        if (i12 > i13) {
            int i14 = this.zzk;
            if (i10 > (Integer.MAX_VALUE - i14) - i11 || i14 + i11 + i10 > this.zzl) {
                return false;
            }
            if (i11 > 0) {
                if (i13 > i11) {
                    byte[] bArr = this.zzf;
                    System.arraycopy(bArr, i11, bArr, 0, i13 - i11);
                }
                i14 = this.zzk + i11;
                this.zzk = i14;
                i13 = this.zzg - i11;
                this.zzg = i13;
                this.zzi = 0;
            }
            try {
                int read = this.zza.read(this.zzf, i13, Math.min(4096 - i13, (Integer.MAX_VALUE - i14) - i13));
                if (read != 0 && read >= -1 && read <= 4096) {
                    if (read <= 0) {
                        return false;
                    }
                    this.zzg += read;
                    zzJ();
                    if (this.zzg < i10 && !zzL(i10)) {
                        return false;
                    }
                    return true;
                }
                throw new IllegalStateException(String.valueOf(this.zza.getClass()) + "#read(byte[]) returned invalid result: " + read + "\nThe InputStream implementation is buggy.");
            } catch (zzgzw e10) {
                e10.zza();
                throw e10;
            }
        }
        throw new IllegalStateException("refillBuffer() called when " + i10 + " bytes were already available in buffer");
    }

    private final byte[] zzM(int i10, boolean z10) throws IOException {
        byte[] zzN = zzN(i10);
        if (zzN != null) {
            return zzN;
        }
        int i11 = this.zzi;
        int i12 = this.zzg;
        int i13 = i12 - i11;
        this.zzk += i12;
        this.zzi = 0;
        this.zzg = 0;
        List<byte[]> zzI = zzI(i10 - i13);
        byte[] bArr = new byte[i10];
        System.arraycopy(this.zzf, i11, bArr, 0, i13);
        for (byte[] bArr2 : zzI) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i13, length);
            i13 += length;
        }
        return bArr;
    }

    private final byte[] zzN(int i10) throws IOException {
        if (i10 == 0) {
            return zzgzu.zzb;
        }
        int i11 = this.zzk;
        int i12 = this.zzi;
        int i13 = i11 + i12 + i10;
        if ((-2147483647) + i13 <= 0) {
            int i14 = this.zzl;
            if (i13 <= i14) {
                int i15 = this.zzg - i12;
                int i16 = i10 - i15;
                if (i16 >= 4096) {
                    try {
                        if (i16 > this.zza.available()) {
                            return null;
                        }
                    } catch (zzgzw e10) {
                        e10.zza();
                        throw e10;
                    }
                }
                byte[] bArr = new byte[i10];
                System.arraycopy(this.zzf, this.zzi, bArr, 0, i15);
                this.zzk += this.zzg;
                this.zzi = 0;
                this.zzg = 0;
                while (i15 < i10) {
                    try {
                        int read = this.zza.read(bArr, i15, i10 - i15);
                        if (read != -1) {
                            this.zzk += read;
                            i15 += read;
                        } else {
                            throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                        }
                    } catch (zzgzw e11) {
                        e11.zza();
                        throw e11;
                    }
                }
                return bArr;
            }
            zzC((i14 - i11) - i12);
            throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new zzgzw("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final boolean zzA() throws IOException {
        if (this.zzi == this.zzg && !zzL(1)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final boolean zzB() throws IOException {
        if (zzq() != 0) {
            return true;
        }
        return false;
    }

    public final void zzC(int i10) throws IOException {
        int i11 = this.zzg;
        int i12 = this.zzi;
        int i13 = i11 - i12;
        if (i10 <= i13 && i10 >= 0) {
            this.zzi = i12 + i10;
        } else if (i10 >= 0) {
            int i14 = this.zzk;
            int i15 = i14 + i12;
            int i16 = this.zzl;
            if (i15 + i10 <= i16) {
                this.zzk = i15;
                this.zzg = 0;
                this.zzi = 0;
                while (i13 < i10) {
                    try {
                        long j10 = i10 - i13;
                        try {
                            long skip = this.zza.skip(j10);
                            int i17 = (skip > 0L ? 1 : (skip == 0L ? 0 : -1));
                            if (i17 >= 0 && skip <= j10) {
                                if (i17 == 0) {
                                    break;
                                }
                                i13 += (int) skip;
                            } else {
                                throw new IllegalStateException(String.valueOf(this.zza.getClass()) + "#skip returned invalid result: " + skip + "\nThe InputStream implementation is buggy.");
                            }
                        } catch (zzgzw e10) {
                            e10.zza();
                            throw e10;
                        }
                    } catch (Throwable th2) {
                        this.zzk += i13;
                        zzJ();
                        throw th2;
                    }
                }
                this.zzk += i13;
                zzJ();
                if (i13 < i10) {
                    int i18 = this.zzg;
                    int i19 = i18 - this.zzi;
                    this.zzi = i18;
                    zzK(1);
                    while (true) {
                        int i20 = i10 - i19;
                        int i21 = this.zzg;
                        if (i20 > i21) {
                            i19 += i21;
                            this.zzi = i21;
                            zzK(1);
                        } else {
                            this.zzi = i20;
                            return;
                        }
                    }
                }
            } else {
                zzC((i16 - i14) - i12);
                throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
        } else {
            throw new zzgzw("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final double zza() throws IOException {
        return Double.longBitsToDouble(zzp());
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final float zzb() throws IOException {
        return Float.intBitsToFloat(zzh());
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zzc() {
        return this.zzk + this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zzd(int i10) throws zzgzw {
        if (i10 >= 0) {
            int i11 = i10 + this.zzk + this.zzi;
            if (i11 >= 0) {
                int i12 = this.zzl;
                if (i11 <= i12) {
                    this.zzl = i11;
                    zzJ();
                    return i12;
                }
                throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            throw new zzgzw("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
        }
        throw new zzgzw("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zze() throws IOException {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zzf() throws IOException {
        return zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zzg() throws IOException {
        return zzi();
    }

    public final int zzh() throws IOException {
        int i10 = this.zzi;
        if (this.zzg - i10 < 4) {
            zzK(4);
            i10 = this.zzi;
        }
        byte[] bArr = this.zzf;
        this.zzi = i10 + 4;
        int i11 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i12 = bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i13 = bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        return ((bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (i12 << 8) | i11 | (i13 << 16);
    }

    public final int zzi() throws IOException {
        int i10;
        int i11 = this.zzi;
        int i12 = this.zzg;
        if (i12 != i11) {
            byte[] bArr = this.zzf;
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 >= 0) {
                this.zzi = i13;
                return b10;
            } else if (i12 - i13 >= 9) {
                int i14 = i11 + 2;
                int i15 = (bArr[i13] << 7) ^ b10;
                if (i15 < 0) {
                    i10 = i15 ^ (-128);
                } else {
                    int i16 = i11 + 3;
                    int i17 = (bArr[i14] << 14) ^ i15;
                    if (i17 >= 0) {
                        i10 = i17 ^ 16256;
                    } else {
                        int i18 = i11 + 4;
                        int i19 = i17 ^ (bArr[i16] << 21);
                        if (i19 < 0) {
                            i10 = (-2080896) ^ i19;
                        } else {
                            i16 = i11 + 5;
                            byte b11 = bArr[i18];
                            int i20 = (i19 ^ (b11 << 28)) ^ 266354560;
                            if (b11 < 0) {
                                i18 = i11 + 6;
                                if (bArr[i16] < 0) {
                                    i16 = i11 + 7;
                                    if (bArr[i18] < 0) {
                                        i18 = i11 + 8;
                                        if (bArr[i16] < 0) {
                                            i16 = i11 + 9;
                                            if (bArr[i18] < 0) {
                                                int i21 = i11 + 10;
                                                if (bArr[i16] >= 0) {
                                                    i14 = i21;
                                                    i10 = i20;
                                                }
                                            }
                                        }
                                    }
                                }
                                i10 = i20;
                            }
                            i10 = i20;
                        }
                        i14 = i18;
                    }
                    i14 = i16;
                }
                this.zzi = i14;
                return i10;
            }
        }
        return (int) zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zzj() throws IOException {
        return zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zzk() throws IOException {
        return zzgyf.zzD(zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zzl() throws IOException {
        if (zzA()) {
            this.zzj = 0;
            return 0;
        }
        int zzi = zzi();
        this.zzj = zzi;
        if ((zzi >>> 3) != 0) {
            return zzi;
        }
        throw new zzgzw("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zzm() throws IOException {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final long zzn() throws IOException {
        return zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final long zzo() throws IOException {
        return zzq();
    }

    public final long zzp() throws IOException {
        int i10 = this.zzi;
        if (this.zzg - i10 < 8) {
            zzK(8);
            i10 = this.zzi;
        }
        byte[] bArr = this.zzf;
        this.zzi = i10 + 8;
        long j10 = bArr[i10 + 2];
        long j11 = bArr[i10 + 3];
        return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((j10 & 255) << 16) | ((j11 & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
    }

    public final long zzq() throws IOException {
        long j10;
        long j11;
        int i10 = this.zzi;
        int i11 = this.zzg;
        if (i11 != i10) {
            byte[] bArr = this.zzf;
            int i12 = i10 + 1;
            byte b10 = bArr[i10];
            if (b10 >= 0) {
                this.zzi = i12;
                return b10;
            } else if (i11 - i12 >= 9) {
                int i13 = i10 + 2;
                int i14 = (bArr[i12] << 7) ^ b10;
                if (i14 < 0) {
                    j10 = i14 ^ (-128);
                } else {
                    int i15 = i10 + 3;
                    int i16 = (bArr[i13] << 14) ^ i14;
                    if (i16 >= 0) {
                        j10 = i16 ^ 16256;
                    } else {
                        int i17 = i10 + 4;
                        int i18 = i16 ^ (bArr[i15] << 21);
                        if (i18 < 0) {
                            i13 = i17;
                            j10 = (-2080896) ^ i18;
                        } else {
                            i15 = i10 + 5;
                            long j12 = (bArr[i17] << 28) ^ i18;
                            if (j12 >= 0) {
                                j10 = j12 ^ 266354560;
                            } else {
                                i13 = i10 + 6;
                                long j13 = (bArr[i15] << 35) ^ j12;
                                if (j13 < 0) {
                                    j11 = -34093383808L;
                                } else {
                                    int i19 = i10 + 7;
                                    long j14 = j13 ^ (bArr[i13] << 42);
                                    if (j14 >= 0) {
                                        j10 = j14 ^ 4363953127296L;
                                    } else {
                                        i13 = i10 + 8;
                                        j13 = j14 ^ (bArr[i19] << 49);
                                        if (j13 < 0) {
                                            j11 = -558586000294016L;
                                        } else {
                                            i19 = i10 + 9;
                                            long j15 = (j13 ^ (bArr[i13] << 56)) ^ 71499008037633920L;
                                            if (j15 < 0) {
                                                i13 = i10 + 10;
                                                if (bArr[i19] >= 0) {
                                                    j10 = j15;
                                                }
                                            } else {
                                                j10 = j15;
                                            }
                                        }
                                    }
                                    i13 = i19;
                                }
                                j10 = j13 ^ j11;
                            }
                        }
                    }
                    i13 = i15;
                }
                this.zzi = i13;
                return j10;
            }
        }
        return zzr();
    }

    final long zzr() throws IOException {
        long j10 = 0;
        for (int i10 = 0; i10 < 64; i10 += 7) {
            if (this.zzi == this.zzg) {
                zzK(1);
            }
            byte[] bArr = this.zzf;
            int i11 = this.zzi;
            this.zzi = i11 + 1;
            byte b10 = bArr[i11];
            j10 |= (b10 & ByteCompanionObject.MAX_VALUE) << i10;
            if ((b10 & ByteCompanionObject.MIN_VALUE) == 0) {
                return j10;
            }
        }
        throw new zzgzw("CodedInputStream encountered a malformed varint.");
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final long zzs() throws IOException {
        return zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final long zzt() throws IOException {
        return zzgyf.zzF(zzq());
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final long zzu() throws IOException {
        return zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final zzgxz zzv() throws IOException {
        int zzi = zzi();
        int i10 = this.zzg;
        int i11 = this.zzi;
        if (zzi <= i10 - i11 && zzi > 0) {
            zzgxz zzv = zzgxz.zzv(this.zzf, i11, zzi);
            this.zzi += zzi;
            return zzv;
        } else if (zzi == 0) {
            return zzgxz.zzb;
        } else {
            if (zzi >= 0) {
                byte[] zzN = zzN(zzi);
                if (zzN != null) {
                    return zzgxz.zzv(zzN, 0, zzN.length);
                }
                int i12 = this.zzi;
                int i13 = this.zzg;
                int i14 = i13 - i12;
                this.zzk += i13;
                this.zzi = 0;
                this.zzg = 0;
                List<byte[]> zzI = zzI(zzi - i14);
                byte[] bArr = new byte[zzi];
                System.arraycopy(this.zzf, i12, bArr, 0, i14);
                for (byte[] bArr2 : zzI) {
                    int length = bArr2.length;
                    System.arraycopy(bArr2, 0, bArr, i14, length);
                    i14 += length;
                }
                zzgxz zzgxzVar = zzgxz.zzb;
                return new zzgxw(bArr);
            }
            throw new zzgzw("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final String zzw() throws IOException {
        int zzi = zzi();
        if (zzi > 0) {
            int i10 = this.zzg;
            int i11 = this.zzi;
            if (zzi <= i10 - i11) {
                String str = new String(this.zzf, i11, zzi, zzgzu.zza);
                this.zzi += zzi;
                return str;
            }
        }
        if (zzi == 0) {
            return "";
        }
        if (zzi >= 0) {
            if (zzi <= this.zzg) {
                zzK(zzi);
                String str2 = new String(this.zzf, this.zzi, zzi, zzgzu.zza);
                this.zzi += zzi;
                return str2;
            }
            return new String(zzM(zzi, false), zzgzu.zza);
        }
        throw new zzgzw("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final String zzx() throws IOException {
        byte[] zzM;
        int zzi = zzi();
        int i10 = this.zzi;
        int i11 = this.zzg;
        if (zzi <= i11 - i10 && zzi > 0) {
            zzM = this.zzf;
            this.zzi = i10 + zzi;
        } else if (zzi == 0) {
            return "";
        } else {
            if (zzi >= 0) {
                i10 = 0;
                if (zzi <= i11) {
                    zzK(zzi);
                    zzM = this.zzf;
                    this.zzi = zzi;
                } else {
                    zzM = zzM(zzi, false);
                }
            } else {
                throw new zzgzw("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
        }
        return zzhcj.zzh(zzM, i10, zzi);
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final void zzy(int i10) throws zzgzw {
        if (this.zzj == i10) {
            return;
        }
        throw new zzgzw("Protocol message end-group tag did not match expected tag.");
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final void zzz(int i10) {
        this.zzl = i10;
        zzJ();
    }
}
