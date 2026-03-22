package com.google.android.gms.internal.p003firebaseauthapi;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzakk  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzakk extends zzakh {
    private final byte[] zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;

    private final int zzaa() throws IOException {
        int i10;
        int i11 = this.zzg;
        int i12 = this.zze;
        if (i12 != i11) {
            byte[] bArr = this.zzd;
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 >= 0) {
                this.zzg = i13;
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
                this.zzg = i14;
                return i10;
            }
        }
        return (int) zzm();
    }

    private final long zzab() throws IOException {
        int i10 = this.zzg;
        if (this.zze - i10 >= 8) {
            byte[] bArr = this.zzd;
            this.zzg = i10 + 8;
            return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
        }
        throw zzall.zzj();
    }

    private final long zzac() throws IOException {
        long j10;
        long j11;
        long j12;
        int i10 = this.zzg;
        int i11 = this.zze;
        if (i11 != i10) {
            byte[] bArr = this.zzd;
            int i12 = i10 + 1;
            byte b10 = bArr[i10];
            if (b10 >= 0) {
                this.zzg = i12;
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
                this.zzg = i13;
                return j10;
            }
        }
        return zzm();
    }

    private final void zzad() {
        int i10 = this.zze + this.zzf;
        this.zze = i10;
        int i11 = i10 - this.zzh;
        int i12 = this.zzj;
        if (i11 > i12) {
            int i13 = i11 - i12;
            this.zzf = i13;
            this.zze = i10 - i13;
            return;
        }
        this.zzf = 0;
    }

    private final byte zzy() throws IOException {
        int i10 = this.zzg;
        if (i10 != this.zze) {
            byte[] bArr = this.zzd;
            this.zzg = i10 + 1;
            return bArr[i10];
        }
        throw zzall.zzj();
    }

    private final int zzz() throws IOException {
        int i10 = this.zzg;
        if (this.zze - i10 >= 4) {
            byte[] bArr = this.zzd;
            this.zzg = i10 + 4;
            return ((bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
        }
        throw zzall.zzj();
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
        return this.zzg - this.zzh;
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
        byte[] bArr;
        int zzaa = zzaa();
        if (zzaa > 0) {
            int i10 = this.zze;
            int i11 = this.zzg;
            if (zzaa <= i10 - i11) {
                zzajv zza = zzajv.zza(this.zzd, i11, zzaa);
                this.zzg += zzaa;
                return zza;
            }
        }
        if (zzaa == 0) {
            return zzajv.zza;
        }
        if (zzaa > 0) {
            int i12 = this.zze;
            int i13 = this.zzg;
            if (zzaa <= i12 - i13) {
                int i14 = zzaa + i13;
                this.zzg = i14;
                bArr = Arrays.copyOfRange(this.zzd, i13, i14);
                return zzajv.zzb(bArr);
            }
        }
        if (zzaa <= 0) {
            if (zzaa == 0) {
                bArr = zzalh.zzb;
                return zzajv.zzb(bArr);
            }
            throw zzall.zzf();
        }
        throw zzall.zzj();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final String zzr() throws IOException {
        int zzaa = zzaa();
        if (zzaa > 0) {
            int i10 = this.zze;
            int i11 = this.zzg;
            if (zzaa <= i10 - i11) {
                String str = new String(this.zzd, i11, zzaa, zzalh.zza);
                this.zzg += zzaa;
                return str;
            }
        }
        if (zzaa == 0) {
            return "";
        }
        if (zzaa < 0) {
            throw zzall.zzf();
        }
        throw zzall.zzj();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final String zzs() throws IOException {
        int zzaa = zzaa();
        if (zzaa > 0) {
            int i10 = this.zze;
            int i11 = this.zzg;
            if (zzaa <= i10 - i11) {
                String zzb = zzaoa.zzb(this.zzd, i11, zzaa);
                this.zzg += zzaa;
                return zzb;
            }
        }
        if (zzaa == 0) {
            return "";
        }
        if (zzaa <= 0) {
            throw zzall.zzf();
        }
        throw zzall.zzj();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final boolean zzw() throws IOException {
        if (this.zzg == this.zze) {
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

    private zzakk(byte[] bArr, int i10, int i11, boolean z10) {
        super();
        this.zzj = Integer.MAX_VALUE;
        this.zzd = bArr;
        this.zze = i11 + i10;
        this.zzg = i10;
        this.zzh = i10;
    }

    private final void zzf(int i10) throws IOException {
        if (i10 >= 0) {
            int i11 = this.zze;
            int i12 = this.zzg;
            if (i10 <= i11 - i12) {
                this.zzg = i12 + i10;
                return;
            }
        }
        if (i10 < 0) {
            throw zzall.zzf();
        }
        throw zzall.zzj();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final int zzb(int i10) throws zzall {
        if (i10 >= 0) {
            int zzc = i10 + zzc();
            if (zzc >= 0) {
                int i11 = this.zzj;
                if (zzc <= i11) {
                    this.zzj = zzc;
                    zzad();
                    return i11;
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
        this.zzj = i10;
        zzad();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakh
    public final boolean zze(int i10) throws IOException {
        int i11 = i10 & 7;
        int i12 = 0;
        if (i11 == 0) {
            if (this.zze - this.zzg >= 10) {
                while (i12 < 10) {
                    byte[] bArr = this.zzd;
                    int i13 = this.zzg;
                    this.zzg = i13 + 1;
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
            zzf(8);
            return true;
        } else if (i11 == 2) {
            zzf(zzaa());
            return true;
        } else if (i11 == 3) {
            zzv();
            zzc(((i10 >>> 3) << 3) | 4);
            return true;
        } else if (i11 == 4) {
            zzu();
            return false;
        } else if (i11 == 5) {
            zzf(4);
            return true;
        } else {
            throw zzall.zza();
        }
    }
}
