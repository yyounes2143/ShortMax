package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgya extends zzgyf {
    private final byte[] zza;
    private int zzf;
    private int zzg;
    private int zzh;
    private final int zzi;
    private int zzj;
    private int zzk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgya(byte[] bArr, int i10, int i11, boolean z10, zzgye zzgyeVar) {
        super(null);
        this.zzk = Integer.MAX_VALUE;
        this.zza = bArr;
        this.zzf = i11 + i10;
        this.zzh = i10;
        this.zzi = i10;
    }

    private final void zzC() {
        int i10 = this.zzf + this.zzg;
        this.zzf = i10;
        int i11 = i10 - this.zzi;
        int i12 = this.zzk;
        if (i11 > i12) {
            int i13 = i11 - i12;
            this.zzg = i13;
            this.zzf = i10 - i13;
            return;
        }
        this.zzg = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final boolean zzA() throws IOException {
        if (this.zzh == this.zzf) {
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
        return this.zzh - this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zzd(int i10) throws zzgzw {
        if (i10 >= 0) {
            int i11 = i10 + (this.zzh - this.zzi);
            if (i11 >= 0) {
                int i12 = this.zzk;
                if (i11 <= i12) {
                    this.zzk = i11;
                    zzC();
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
        int i10 = this.zzh;
        if (this.zzf - i10 >= 4) {
            byte[] bArr = this.zza;
            this.zzh = i10 + 4;
            int i11 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            int i12 = bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            int i13 = bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            return ((bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (i12 << 8) | i11 | (i13 << 16);
        }
        throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final int zzi() throws IOException {
        int i10;
        int i11 = this.zzh;
        int i12 = this.zzf;
        if (i12 != i11) {
            byte[] bArr = this.zza;
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
        int i10 = this.zzh;
        if (this.zzf - i10 >= 8) {
            byte[] bArr = this.zza;
            this.zzh = i10 + 8;
            long j10 = bArr[i10 + 2];
            long j11 = bArr[i10 + 3];
            return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((j10 & 255) << 16) | ((j11 & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
        }
        throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final long zzq() throws IOException {
        long j10;
        long j11;
        int i10 = this.zzh;
        int i11 = this.zzf;
        if (i11 != i10) {
            byte[] bArr = this.zza;
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
                this.zzh = i13;
                return j10;
            }
        }
        return zzr();
    }

    final long zzr() throws IOException {
        long j10 = 0;
        for (int i10 = 0; i10 < 64; i10 += 7) {
            int i11 = this.zzh;
            if (i11 != this.zzf) {
                byte[] bArr = this.zza;
                this.zzh = i11 + 1;
                byte b10 = bArr[i11];
                j10 |= (b10 & ByteCompanionObject.MAX_VALUE) << i10;
                if ((b10 & ByteCompanionObject.MIN_VALUE) == 0) {
                    return j10;
                }
            } else {
                throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
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
        if (zzi > 0) {
            int i10 = this.zzf;
            int i11 = this.zzh;
            if (zzi <= i10 - i11) {
                zzgxz zzv = zzgxz.zzv(this.zza, i11, zzi);
                this.zzh += zzi;
                return zzv;
            }
        }
        if (zzi != 0) {
            if (zzi > 0) {
                int i12 = this.zzf;
                int i13 = this.zzh;
                if (zzi <= i12 - i13) {
                    int i14 = zzi + i13;
                    this.zzh = i14;
                    byte[] copyOfRange = Arrays.copyOfRange(this.zza, i13, i14);
                    zzgxz zzgxzVar = zzgxz.zzb;
                    return new zzgxw(copyOfRange);
                }
            }
            if (zzi <= 0) {
                throw new zzgzw("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        return zzgxz.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final String zzw() throws IOException {
        int zzi = zzi();
        if (zzi > 0) {
            int i10 = this.zzf;
            int i11 = this.zzh;
            if (zzi <= i10 - i11) {
                String str = new String(this.zza, i11, zzi, zzgzu.zza);
                this.zzh += zzi;
                return str;
            }
        }
        if (zzi == 0) {
            return "";
        }
        if (zzi < 0) {
            throw new zzgzw("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final String zzx() throws IOException {
        int zzi = zzi();
        if (zzi > 0) {
            int i10 = this.zzf;
            int i11 = this.zzh;
            if (zzi <= i10 - i11) {
                String zzh = zzhcj.zzh(this.zza, i11, zzi);
                this.zzh += zzi;
                return zzh;
            }
        }
        if (zzi == 0) {
            return "";
        }
        if (zzi <= 0) {
            throw new zzgzw("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
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
        this.zzk = i10;
        zzC();
    }
}
