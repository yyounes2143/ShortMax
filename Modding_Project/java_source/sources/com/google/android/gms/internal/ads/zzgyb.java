package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzgyb extends zzgyf {
    private final Iterable zza;
    private final Iterator zzf;
    private ByteBuffer zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private long zzn;
    private long zzo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgyb(Iterable iterable, int i10, boolean z10, zzgye zzgyeVar) {
        super(null);
        this.zzj = Integer.MAX_VALUE;
        this.zzh = i10;
        this.zza = iterable;
        this.zzf = iterable.iterator();
        this.zzl = 0;
        if (i10 == 0) {
            this.zzg = zzgzu.zzc;
            this.zzm = 0L;
            this.zzn = 0L;
            this.zzo = 0L;
            return;
        }
        zzM();
    }

    private final int zzI() {
        return (int) (((this.zzh - this.zzl) - this.zzm) + this.zzn);
    }

    private final void zzJ() throws zzgzw {
        if (this.zzf.hasNext()) {
            zzM();
            return;
        }
        throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    private final void zzK(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 <= zzI()) {
            int i12 = i11;
            while (i12 > 0) {
                if (this.zzo - this.zzm == 0) {
                    zzJ();
                }
                int min = Math.min(i12, (int) (this.zzo - this.zzm));
                long j10 = min;
                zzhce.zzo(this.zzm, bArr, i11 - i12, j10);
                i12 -= min;
                this.zzm += j10;
            }
        } else if (i11 <= 0) {
        } else {
            throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    private final void zzL() {
        int i10 = this.zzh + this.zzi;
        this.zzh = i10;
        int i11 = this.zzj;
        if (i10 > i11) {
            int i12 = i10 - i11;
            this.zzi = i12;
            this.zzh = i10 - i12;
            return;
        }
        this.zzi = 0;
    }

    private final void zzM() {
        ByteBuffer byteBuffer = (ByteBuffer) this.zzf.next();
        this.zzg = byteBuffer;
        this.zzl += (int) (this.zzm - this.zzn);
        long position = byteBuffer.position();
        this.zzm = position;
        this.zzn = position;
        this.zzo = this.zzg.limit();
        long zze = zzhce.zze(this.zzg);
        this.zzm += zze;
        this.zzn += zze;
        this.zzo += zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final boolean zzA() throws IOException {
        if ((this.zzl + this.zzm) - this.zzn == this.zzh) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final boolean zzB() throws IOException {
        if (zzr() != 0) {
            return true;
        }
        return false;
    }

    final long zzC() throws IOException {
        long j10 = 0;
        for (int i10 = 0; i10 < 64; i10 += 7) {
            byte zzh = zzh();
            j10 |= (zzh & ByteCompanionObject.MAX_VALUE) << i10;
            if ((zzh & ByteCompanionObject.MIN_VALUE) == 0) {
                return j10;
            }
        }
        throw new zzgzw("CodedInputStream encountered a malformed varint.");
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final double zza() throws IOException {
        return Double.longBitsToDouble(zzq());
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final float zzb() throws IOException {
        return Float.intBitsToFloat(zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zzc() {
        return (int) ((this.zzl + this.zzm) - this.zzn);
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zzd(int i10) throws zzgzw {
        if (i10 >= 0) {
            int zzc = i10 + zzc();
            int i11 = this.zzj;
            if (zzc <= i11) {
                this.zzj = zzc;
                zzL();
                return i11;
            }
            throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new zzgzw("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zze() throws IOException {
        return zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zzf() throws IOException {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zzg() throws IOException {
        return zzp();
    }

    public final byte zzh() throws IOException {
        if (this.zzo - this.zzm == 0) {
            zzJ();
        }
        long j10 = this.zzm;
        this.zzm = 1 + j10;
        return zzhce.zza(j10);
    }

    public final int zzi() throws IOException {
        long j10 = this.zzo;
        long j11 = this.zzm;
        if (j10 - j11 >= 4) {
            this.zzm = 4 + j11;
            return (zzhce.zza(j11) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((zzhce.zza(1 + j11) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((zzhce.zza(2 + j11) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((zzhce.zza(j11 + 3) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24);
        }
        return (zzh() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((zzh() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((zzh() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((zzh() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24);
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zzj() throws IOException {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zzk() throws IOException {
        return zzgyf.zzD(zzp());
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zzl() throws IOException {
        if (zzA()) {
            this.zzk = 0;
            return 0;
        }
        int zzp = zzp();
        this.zzk = zzp;
        if ((zzp >>> 3) != 0) {
            return zzp;
        }
        throw new zzgzw("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final int zzm() throws IOException {
        return zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final long zzn() throws IOException {
        return zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final long zzo() throws IOException {
        return zzr();
    }

    public final int zzp() throws IOException {
        int i10;
        long j10 = this.zzm;
        if (this.zzo != j10) {
            long j11 = j10 + 1;
            byte zza = zzhce.zza(j10);
            if (zza >= 0) {
                this.zzm++;
                return zza;
            } else if (this.zzo - this.zzm >= 10) {
                long j12 = 2 + j10;
                int zza2 = (zzhce.zza(j11) << 7) ^ zza;
                if (zza2 < 0) {
                    i10 = zza2 ^ (-128);
                } else {
                    long j13 = 3 + j10;
                    int zza3 = (zzhce.zza(j12) << 14) ^ zza2;
                    if (zza3 >= 0) {
                        i10 = zza3 ^ 16256;
                    } else {
                        long j14 = 4 + j10;
                        int zza4 = zza3 ^ (zzhce.zza(j13) << 21);
                        if (zza4 < 0) {
                            i10 = (-2080896) ^ zza4;
                        } else {
                            j13 = 5 + j10;
                            byte zza5 = zzhce.zza(j14);
                            int i11 = (zza4 ^ (zza5 << 28)) ^ 266354560;
                            if (zza5 < 0) {
                                j14 = 6 + j10;
                                if (zzhce.zza(j13) < 0) {
                                    j13 = 7 + j10;
                                    if (zzhce.zza(j14) < 0) {
                                        j14 = 8 + j10;
                                        if (zzhce.zza(j13) < 0) {
                                            j13 = 9 + j10;
                                            if (zzhce.zza(j14) < 0) {
                                                long j15 = j10 + 10;
                                                if (zzhce.zza(j13) >= 0) {
                                                    i10 = i11;
                                                    j12 = j15;
                                                }
                                            }
                                        }
                                    }
                                }
                                i10 = i11;
                            }
                            i10 = i11;
                        }
                        j12 = j14;
                    }
                    j12 = j13;
                }
                this.zzm = j12;
                return i10;
            }
        }
        return (int) zzC();
    }

    public final long zzq() throws IOException {
        long j10 = this.zzo;
        long j11 = this.zzm;
        if (j10 - j11 >= 8) {
            this.zzm = 8 + j11;
            long zza = zzhce.zza(j11) & 255;
            long zza2 = (zzhce.zza(1 + j11) & 255) << 8;
            return ((zzhce.zza(j11 + 4) & 255) << 32) | zza | zza2 | ((zzhce.zza(j11 + 2) & 255) << 16) | ((zzhce.zza(3 + j11) & 255) << 24) | ((zzhce.zza(j11 + 5) & 255) << 40) | ((zzhce.zza(j11 + 6) & 255) << 48) | ((zzhce.zza(j11 + 7) & 255) << 56);
        }
        long zzh = (zzh() & 255) << 8;
        return (zzh() & 255) | zzh | ((zzh() & 255) << 16) | ((zzh() & 255) << 24) | ((zzh() & 255) << 32) | ((zzh() & 255) << 40) | ((zzh() & 255) << 48) | ((zzh() & 255) << 56);
    }

    public final long zzr() throws IOException {
        long j10;
        long j11;
        long j12 = this.zzm;
        if (this.zzo != j12) {
            long j13 = j12 + 1;
            byte zza = zzhce.zza(j12);
            if (zza >= 0) {
                this.zzm++;
                return zza;
            } else if (this.zzo - this.zzm >= 10) {
                long j14 = 2 + j12;
                int zza2 = (zzhce.zza(j13) << 7) ^ zza;
                if (zza2 < 0) {
                    j10 = zza2 ^ (-128);
                } else {
                    long j15 = 3 + j12;
                    int zza3 = (zzhce.zza(j14) << 14) ^ zza2;
                    if (zza3 >= 0) {
                        j10 = zza3 ^ 16256;
                    } else {
                        long j16 = 4 + j12;
                        int zza4 = zza3 ^ (zzhce.zza(j15) << 21);
                        if (zza4 < 0) {
                            j10 = (-2080896) ^ zza4;
                            j14 = j16;
                        } else {
                            j15 = 5 + j12;
                            long zza5 = (zzhce.zza(j16) << 28) ^ zza4;
                            if (zza5 >= 0) {
                                j10 = 266354560 ^ zza5;
                            } else {
                                long j17 = 6 + j12;
                                long zza6 = zza5 ^ (zzhce.zza(j15) << 35);
                                if (zza6 < 0) {
                                    j11 = -34093383808L;
                                } else {
                                    long j18 = 7 + j12;
                                    long zza7 = zza6 ^ (zzhce.zza(j17) << 42);
                                    if (zza7 >= 0) {
                                        j10 = 4363953127296L ^ zza7;
                                    } else {
                                        j17 = 8 + j12;
                                        zza6 = zza7 ^ (zzhce.zza(j18) << 49);
                                        if (zza6 < 0) {
                                            j11 = -558586000294016L;
                                        } else {
                                            j18 = 9 + j12;
                                            long zza8 = (zza6 ^ (zzhce.zza(j17) << 56)) ^ 71499008037633920L;
                                            if (zza8 < 0) {
                                                long j19 = j12 + 10;
                                                if (zzhce.zza(j18) >= 0) {
                                                    j10 = zza8;
                                                    j14 = j19;
                                                }
                                            } else {
                                                j10 = zza8;
                                            }
                                        }
                                    }
                                    j14 = j18;
                                }
                                j10 = j11 ^ zza6;
                                j14 = j17;
                            }
                        }
                    }
                    j14 = j15;
                }
                this.zzm = j14;
                return j10;
            }
        }
        return zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final long zzs() throws IOException {
        return zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final long zzt() throws IOException {
        return zzgyf.zzF(zzr());
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final long zzu() throws IOException {
        return zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final zzgxz zzv() throws IOException {
        int zzp = zzp();
        if (zzp > 0) {
            long j10 = this.zzo;
            long j11 = this.zzm;
            long j12 = zzp;
            if (j12 <= j10 - j11) {
                byte[] bArr = new byte[zzp];
                zzhce.zzo(j11, bArr, 0L, j12);
                this.zzm += j12;
                zzgxz zzgxzVar = zzgxz.zzb;
                return new zzgxw(bArr);
            }
        }
        if (zzp > 0 && zzp <= zzI()) {
            byte[] bArr2 = new byte[zzp];
            zzK(bArr2, 0, zzp);
            zzgxz zzgxzVar2 = zzgxz.zzb;
            return new zzgxw(bArr2);
        } else if (zzp == 0) {
            return zzgxz.zzb;
        } else {
            if (zzp < 0) {
                throw new zzgzw("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final String zzw() throws IOException {
        int zzp = zzp();
        if (zzp > 0) {
            long j10 = this.zzo;
            long j11 = this.zzm;
            long j12 = zzp;
            if (j12 <= j10 - j11) {
                byte[] bArr = new byte[zzp];
                zzhce.zzo(j11, bArr, 0L, j12);
                String str = new String(bArr, zzgzu.zza);
                this.zzm += j12;
                return str;
            }
        }
        if (zzp > 0 && zzp <= zzI()) {
            byte[] bArr2 = new byte[zzp];
            zzK(bArr2, 0, zzp);
            return new String(bArr2, zzgzu.zza);
        } else if (zzp == 0) {
            return "";
        } else {
            if (zzp < 0) {
                throw new zzgzw("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final String zzx() throws IOException {
        int zzp = zzp();
        if (zzp > 0) {
            long j10 = this.zzo;
            long j11 = this.zzm;
            long j12 = zzp;
            if (j12 <= j10 - j11) {
                String zzg = zzhcj.zzg(this.zzg, (int) (j11 - this.zzn), zzp);
                this.zzm += j12;
                return zzg;
            }
        }
        if (zzp >= 0 && zzp <= zzI()) {
            byte[] bArr = new byte[zzp];
            zzK(bArr, 0, zzp);
            return zzhcj.zzh(bArr, 0, zzp);
        } else if (zzp == 0) {
            return "";
        } else {
            if (zzp <= 0) {
                throw new zzgzw("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final void zzy(int i10) throws zzgzw {
        if (this.zzk == i10) {
            return;
        }
        throw new zzgzw("Protocol message end-group tag did not match expected tag.");
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final void zzz(int i10) {
        this.zzj = i10;
        zzL();
    }
}
