package com.google.android.gms.internal.p003firebaseauthapi;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzakj  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzakj extends zzakh {
    private final InputStream zzd;
    private final byte[] zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;

    private final int zzaa() throws IOException {
        int i10;
        int i11 = this.zzh;
        int i12 = this.zzf;
        if (i12 != i11) {
            byte[] bArr = this.zze;
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 >= 0) {
                this.zzh = i13;
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
                this.zzh = i14;
                return i10;
            }
        }
        return (int) zzm();
    }

    private final long zzab() throws IOException {
        int i10 = this.zzh;
        if (this.zzf - i10 < 8) {
            zzg(8);
            i10 = this.zzh;
        }
        byte[] bArr = this.zze;
        this.zzh = i10 + 8;
        return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
    }

    private final long zzac() throws IOException {
        long j10;
        long j11;
        long j12;
        int i10 = this.zzh;
        int i11 = this.zzf;
        if (i11 != i10) {
            byte[] bArr = this.zze;
            int i12 = i10 + 1;
            byte b10 = bArr[i10];
            if (b10 >= 0) {
                this.zzh = i12;
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
                        i13 = i15;
                    } else {
                        int i17 = i10 + 4;
                        int i18 = i16 ^ (bArr[i15] << 21);
                        if (i18 < 0) {
                            i13 = i17;
                            j10 = (-2080896) ^ i18;
                        } else {
                            long j13 = i18;
                            i13 = i10 + 5;
                            long j14 = j13 ^ (bArr[i17] << 28);
                            if (j14 >= 0) {
                                j12 = 266354560;
                            } else {
                                int i19 = i10 + 6;
                                long j15 = j14 ^ (bArr[i13] << 35);
                                if (j15 < 0) {
                                    j11 = -34093383808L;
                                } else {
                                    i13 = i10 + 7;
                                    j14 = j15 ^ (bArr[i19] << 42);
                                    if (j14 >= 0) {
                                        j12 = 4363953127296L;
                                    } else {
                                        i19 = i10 + 8;
                                        j15 = j14 ^ (bArr[i13] << 49);
                                        if (j15 < 0) {
                                            j11 = -558586000294016L;
                                        } else {
                                            i13 = i10 + 9;
                                            long j16 = (j15 ^ (bArr[i19] << 56)) ^ 71499008037633920L;
                                            if (j16 < 0) {
                                                int i20 = i10 + 10;
                                                if (bArr[i13] >= 0) {
                                                    i13 = i20;
                                                }
                                            }
                                            j10 = j16;
                                        }
                                    }
                                }
                                j10 = j15 ^ j11;
                                i13 = i19;
                            }
                            j10 = j14 ^ j12;
                        }
                    }
                }
                this.zzh = i13;
                return j10;
            }
        }
        return zzm();
    }

    private final void zzad() {
        int i10 = this.zzf + this.zzg;
        this.zzf = i10;
        int i11 = this.zzj + i10;
        int i12 = this.zzk;
        if (i11 > i12) {
            int i13 = i11 - i12;
            this.zzg = i13;
            this.zzf = i10 - i13;
            return;
        }
        this.zzg = 0;
    }

    private final byte zzy() throws IOException {
        if (this.zzh == this.zzf) {
            zzg(1);
        }
        byte[] bArr = this.zze;
        int i10 = this.zzh;
        this.zzh = i10 + 1;
        return bArr[i10];
    }

    private final int zzz() throws IOException {
        int i10 = this.zzh;
        if (this.zzf - i10 < 4) {
            zzg(4);
            i10 = this.zzh;
        }
        byte[] bArr = this.zze;
        this.zzh = i10 + 4;
        return ((bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final double zza() throws IOException {
        return Double.longBitsToDouble(zzab());
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final float zzb() throws IOException {
        return Float.intBitsToFloat(zzz());
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final int zzc() {
        return this.zzj + this.zzh;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final int zzd() throws IOException {
        return zzaa();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final int zze() throws IOException {
        return zzz();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final int zzf() throws IOException {
        return zzaa();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final int zzg() throws IOException {
        return zzz();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final int zzh() throws IOException {
        return zzakh.zza(zzaa());
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final int zzi() throws IOException {
        if (zzw()) {
            this.zzi = 0;
            return 0;
        }
        int zzaa = zzaa();
        this.zzi = zzaa;
        if ((zzaa >>> 3) != 0) {
            return zzaa;
        }
        throw zzall.zzc();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final int zzj() throws IOException {
        return zzaa();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final long zzk() throws IOException {
        return zzab();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final long zzl() throws IOException {
        return zzac();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final long zzm() throws IOException {
        long j10 = 0;
        for (int i10 = 0; i10 < 64; i10 += 7) {
            byte zzy = zzy();
            j10 |= (zzy & ByteCompanionObject.MAX_VALUE) << i10;
            if ((zzy & ByteCompanionObject.MIN_VALUE) == 0) {
                return j10;
            }
        }
        throw zzall.zze();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final long zzn() throws IOException {
        return zzab();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final long zzo() throws IOException {
        return zzakh.zza(zzac());
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final long zzp() throws IOException {
        return zzac();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final zzajv zzq() throws IOException {
        int zzaa = zzaa();
        int i10 = this.zzf;
        int i11 = this.zzh;
        if (zzaa <= i10 - i11 && zzaa > 0) {
            zzajv zza = zzajv.zza(this.zze, i11, zzaa);
            this.zzh += zzaa;
            return zza;
        } else if (zzaa == 0) {
            return zzajv.zza;
        } else {
            if (zzaa >= 0) {
                byte[] zzj = zzj(zzaa);
                if (zzj != null) {
                    return zzajv.zza(zzj);
                }
                int i12 = this.zzh;
                int i13 = this.zzf;
                int i14 = i13 - i12;
                this.zzj += i13;
                this.zzh = 0;
                this.zzf = 0;
                List<byte[]> zzf = zzf(zzaa - i14);
                byte[] bArr = new byte[zzaa];
                System.arraycopy(this.zze, i12, bArr, 0, i14);
                for (byte[] bArr2 : zzf) {
                    System.arraycopy(bArr2, 0, bArr, i14, bArr2.length);
                    i14 += bArr2.length;
                }
                return zzajv.zzb(bArr);
            }
            throw zzall.zzf();
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final String zzr() throws IOException {
        int zzaa = zzaa();
        if (zzaa > 0) {
            int i10 = this.zzf;
            int i11 = this.zzh;
            if (zzaa <= i10 - i11) {
                String str = new String(this.zze, i11, zzaa, zzalh.zza);
                this.zzh += zzaa;
                return str;
            }
        }
        if (zzaa == 0) {
            return "";
        }
        if (zzaa >= 0) {
            if (zzaa <= this.zzf) {
                zzg(zzaa);
                String str2 = new String(this.zze, this.zzh, zzaa, zzalh.zza);
                this.zzh += zzaa;
                return str2;
            }
            return new String(zza(zzaa, false), zzalh.zza);
        }
        throw zzall.zzf();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final String zzs() throws IOException {
        byte[] zza;
        int zzaa = zzaa();
        int i10 = this.zzh;
        int i11 = this.zzf;
        if (zzaa <= i11 - i10 && zzaa > 0) {
            zza = this.zze;
            this.zzh = i10 + zzaa;
        } else if (zzaa == 0) {
            return "";
        } else {
            if (zzaa >= 0) {
                i10 = 0;
                if (zzaa <= i11) {
                    zzg(zzaa);
                    zza = this.zze;
                    this.zzh = zzaa;
                } else {
                    zza = zza(zzaa, false);
                }
            } else {
                throw zzall.zzf();
            }
        }
        return zzaoa.zzb(zza, i10, zzaa);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final boolean zzw() throws IOException {
        if (this.zzh == this.zzf && !zzi(1)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final boolean zzx() throws IOException {
        if (zzac() != 0) {
            return true;
        }
        return false;
    }

    private zzakj(InputStream inputStream, int i10) {
        super();
        this.zzk = Integer.MAX_VALUE;
        zzalh.zza(inputStream, "input");
        this.zzd = inputStream;
        this.zze = new byte[4096];
        this.zzf = 0;
        this.zzh = 0;
        this.zzj = 0;
    }

    private static int zza(InputStream inputStream) throws IOException {
        try {
            return inputStream.available();
        } catch (zzall e10) {
            e10.zzk();
            throw e10;
        }
    }

    private final List<byte[]> zzf(int i10) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i10 > 0) {
            int min = Math.min(i10, 4096);
            byte[] bArr = new byte[min];
            int i11 = 0;
            while (i11 < min) {
                int read = this.zzd.read(bArr, i11, min - i11);
                if (read != -1) {
                    this.zzj += read;
                    i11 += read;
                } else {
                    throw zzall.zzj();
                }
            }
            i10 -= min;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    private final void zzg(int i10) throws IOException {
        if (zzi(i10)) {
            return;
        }
        if (i10 > (this.zzb - this.zzj) - this.zzh) {
            throw zzall.zzi();
        }
        throw zzall.zzj();
    }

    private final void zzh(int i10) throws IOException {
        int i11 = this.zzf;
        int i12 = this.zzh;
        if (i10 <= i11 - i12 && i10 >= 0) {
            this.zzh = i12 + i10;
        } else if (i10 >= 0) {
            int i13 = this.zzj;
            int i14 = i13 + i12 + i10;
            int i15 = this.zzk;
            if (i14 <= i15) {
                this.zzj = i13 + i12;
                int i16 = i11 - i12;
                this.zzf = 0;
                this.zzh = 0;
                while (i16 < i10) {
                    try {
                        long j10 = i10 - i16;
                        long zza = zza(this.zzd, j10);
                        int i17 = (zza > 0L ? 1 : (zza == 0L ? 0 : -1));
                        if (i17 >= 0 && zza <= j10) {
                            if (i17 == 0) {
                                break;
                            }
                            i16 += (int) zza;
                        } else {
                            throw new IllegalStateException(String.valueOf(this.zzd.getClass()) + "#skip returned invalid result: " + zza + "\nThe InputStream implementation is buggy.");
                        }
                    } finally {
                        this.zzj += i16;
                        zzad();
                    }
                }
                if (i16 >= i10) {
                    return;
                }
                int i18 = this.zzf;
                int i19 = i18 - this.zzh;
                this.zzh = i18;
                zzg(1);
                while (true) {
                    int i20 = i10 - i19;
                    int i21 = this.zzf;
                    if (i20 > i21) {
                        i19 += i21;
                        this.zzh = i21;
                        zzg(1);
                    } else {
                        this.zzh = i20;
                        return;
                    }
                }
            } else {
                zzh((i15 - i13) - i12);
                throw zzall.zzj();
            }
        } else {
            throw zzall.zzf();
        }
    }

    private final byte[] zzj(int i10) throws IOException {
        if (i10 == 0) {
            return zzalh.zzb;
        }
        if (i10 >= 0) {
            int i11 = this.zzj;
            int i12 = this.zzh;
            int i13 = i11 + i12 + i10;
            if (i13 - this.zzb <= 0) {
                int i14 = this.zzk;
                if (i13 <= i14) {
                    int i15 = this.zzf - i12;
                    int i16 = i10 - i15;
                    if (i16 < 4096 || i16 <= zza(this.zzd)) {
                        byte[] bArr = new byte[i10];
                        System.arraycopy(this.zze, this.zzh, bArr, 0, i15);
                        this.zzj += this.zzf;
                        this.zzh = 0;
                        this.zzf = 0;
                        while (i15 < i10) {
                            int zza = zza(this.zzd, bArr, i15, i10 - i15);
                            if (zza != -1) {
                                this.zzj += zza;
                                i15 += zza;
                            } else {
                                throw zzall.zzj();
                            }
                        }
                        return bArr;
                    }
                    return null;
                }
                zzh((i14 - i11) - i12);
                throw zzall.zzj();
            }
            throw zzall.zzi();
        }
        throw zzall.zzf();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final int zzb(int i10) throws zzall {
        if (i10 >= 0) {
            int i11 = i10 + this.zzj + this.zzh;
            if (i11 >= 0) {
                int i12 = this.zzk;
                if (i11 <= i12) {
                    this.zzk = i11;
                    zzad();
                    return i12;
                }
                throw zzall.zzj();
            }
            throw zzall.zzi();
        }
        throw zzall.zzf();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final void zzc(int i10) throws zzall {
        if (this.zzi != i10) {
            throw zzall.zzb();
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final void zzd(int i10) {
        this.zzk = i10;
        zzad();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final boolean zze(int i10) throws IOException {
        int i11 = i10 & 7;
        int i12 = 0;
        if (i11 == 0) {
            if (this.zzf - this.zzh >= 10) {
                while (i12 < 10) {
                    byte[] bArr = this.zze;
                    int i13 = this.zzh;
                    this.zzh = i13 + 1;
                    if (bArr[i13] < 0) {
                        i12++;
                    }
                }
                throw zzall.zze();
            }
            while (i12 < 10) {
                if (zzy() < 0) {
                    i12++;
                }
            }
            throw zzall.zze();
            return true;
        } else if (i11 == 1) {
            zzh(8);
            return true;
        } else if (i11 == 2) {
            zzh(zzaa());
            return true;
        } else if (i11 == 3) {
            zzv();
            zzc(((i10 >>> 3) << 3) | 4);
            return true;
        } else if (i11 == 4) {
            zzu();
            return false;
        } else if (i11 == 5) {
            zzh(4);
            return true;
        } else {
            throw zzall.zza();
        }
    }

    private static int zza(InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
        try {
            return inputStream.read(bArr, i10, i11);
        } catch (zzall e10) {
            e10.zzk();
            throw e10;
        }
    }

    private final boolean zzi(int i10) throws IOException {
        int i11 = this.zzh;
        int i12 = i11 + i10;
        int i13 = this.zzf;
        if (i12 > i13) {
            int i14 = this.zzb;
            int i15 = this.zzj;
            if (i10 <= (i14 - i15) - i11 && i15 + i11 + i10 <= this.zzk) {
                if (i11 > 0) {
                    if (i13 > i11) {
                        byte[] bArr = this.zze;
                        System.arraycopy(bArr, i11, bArr, 0, i13 - i11);
                    }
                    this.zzj += i11;
                    this.zzf -= i11;
                    this.zzh = 0;
                }
                InputStream inputStream = this.zzd;
                byte[] bArr2 = this.zze;
                int i16 = this.zzf;
                int zza = zza(inputStream, bArr2, i16, Math.min(bArr2.length - i16, (this.zzb - this.zzj) - i16));
                if (zza != 0 && zza >= -1 && zza <= this.zze.length) {
                    if (zza > 0) {
                        this.zzf += zza;
                        zzad();
                        return this.zzf >= i10 || zzi(i10);
                    }
                    return false;
                }
                throw new IllegalStateException(String.valueOf(this.zzd.getClass()) + "#read(byte[]) returned invalid result: " + zza + "\nThe InputStream implementation is buggy.");
            }
            return false;
        }
        throw new IllegalStateException("refillBuffer() called when " + i10 + " bytes were already available in buffer");
    }

    private static long zza(InputStream inputStream, long j10) throws IOException {
        try {
            return inputStream.skip(j10);
        } catch (zzall e10) {
            e10.zzk();
            throw e10;
        }
    }

    private final byte[] zza(int i10, boolean z10) throws IOException {
        byte[] zzj = zzj(i10);
        if (zzj != null) {
            return zzj;
        }
        int i11 = this.zzh;
        int i12 = this.zzf;
        int i13 = i12 - i11;
        this.zzj += i12;
        this.zzh = 0;
        this.zzf = 0;
        List<byte[]> zzf = zzf(i10 - i13);
        byte[] bArr = new byte[i10];
        System.arraycopy(this.zze, i11, bArr, 0, i13);
        for (byte[] bArr2 : zzf) {
            System.arraycopy(bArr2, 0, bArr, i13, bArr2.length);
            i13 += bArr2.length;
        }
        return bArr;
    }
}
