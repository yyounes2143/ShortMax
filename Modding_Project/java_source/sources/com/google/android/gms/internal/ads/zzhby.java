package com.google.android.gms.internal.ads;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhby {
    private static final zzhby zza = new zzhby(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzhby(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.zze = -1;
        this.zzb = i10;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z10;
    }

    public static zzhby zzc() {
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzhby zze(zzhby zzhbyVar, zzhby zzhbyVar2) {
        int i10 = zzhbyVar.zzb + zzhbyVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzhbyVar.zzc, i10);
        System.arraycopy(zzhbyVar2.zzc, 0, copyOf, zzhbyVar.zzb, zzhbyVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzhbyVar.zzd, i10);
        System.arraycopy(zzhbyVar2.zzd, 0, copyOf2, zzhbyVar.zzb, zzhbyVar2.zzb);
        return new zzhby(i10, copyOf, copyOf2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzhby zzf() {
        return new zzhby();
    }

    private final void zzn(int i10) {
        int[] iArr = this.zzc;
        if (i10 > iArr.length) {
            int i11 = this.zzb;
            int i12 = i11 + (i11 / 2);
            if (i12 >= i10) {
                i10 = i12;
            }
            if (i10 < 8) {
                i10 = 8;
            }
            this.zzc = Arrays.copyOf(iArr, i10);
            this.zzd = Arrays.copyOf(this.zzd, i10);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzhby)) {
            return false;
        }
        zzhby zzhbyVar = (zzhby) obj;
        int i10 = this.zzb;
        if (i10 == zzhbyVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzhbyVar.zzc;
            int i11 = 0;
            while (true) {
                if (i11 < i10) {
                    if (iArr[i11] != iArr2[i11]) {
                        break;
                    }
                    i11++;
                } else {
                    Object[] objArr = this.zzd;
                    Object[] objArr2 = zzhbyVar.zzd;
                    int i12 = this.zzb;
                    for (int i13 = 0; i13 < i12; i13++) {
                        if (objArr[i13].equals(objArr2[i13])) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.zzb;
        int i11 = i10 + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER;
        int[] iArr = this.zzc;
        int i12 = 17;
        int i13 = 17;
        for (int i14 = 0; i14 < i10; i14++) {
            i13 = (i13 * 31) + iArr[i14];
        }
        int i15 = ((i11 * 31) + i13) * 31;
        Object[] objArr = this.zzd;
        int i16 = this.zzb;
        for (int i17 = 0; i17 < i16; i17++) {
            i12 = (i12 * 31) + objArr[i17].hashCode();
        }
        return i15 + i12;
    }

    public final int zza() {
        int zzD;
        int zzE;
        int i10;
        int i11 = this.zze;
        if (i11 == -1) {
            int i12 = 0;
            for (int i13 = 0; i13 < this.zzb; i13++) {
                int i14 = this.zzc[i13];
                int i15 = i14 >>> 3;
                int i16 = i14 & 7;
                if (i16 != 0) {
                    if (i16 != 1) {
                        if (i16 != 2) {
                            if (i16 != 3) {
                                if (i16 == 5) {
                                    ((Integer) this.zzd[i13]).intValue();
                                    i10 = zzgym.zzD(i15 << 3) + 4;
                                } else {
                                    throw new IllegalStateException(new zzgzv("Protocol message tag had invalid wire type."));
                                }
                            } else {
                                int zzD2 = zzgym.zzD(i15 << 3);
                                zzD = zzD2 + zzD2;
                                zzE = ((zzhby) this.zzd[i13]).zza();
                            }
                        } else {
                            int zzD3 = zzgym.zzD(i15 << 3);
                            int zzd = ((zzgxz) this.zzd[i13]).zzd();
                            i10 = zzD3 + zzgym.zzD(zzd) + zzd;
                        }
                    } else {
                        ((Long) this.zzd[i13]).longValue();
                        i10 = zzgym.zzD(i15 << 3) + 8;
                    }
                    i12 += i10;
                } else {
                    int i17 = i15 << 3;
                    long longValue = ((Long) this.zzd[i13]).longValue();
                    zzD = zzgym.zzD(i17);
                    zzE = zzgym.zzE(longValue);
                }
                i10 = zzD + zzE;
                i12 += i10;
            }
            this.zze = i12;
            return i12;
        }
        return i11;
    }

    public final int zzb() {
        int i10 = this.zze;
        if (i10 == -1) {
            int i11 = 0;
            for (int i12 = 0; i12 < this.zzb; i12++) {
                int zzD = zzgym.zzD(8);
                int zzD2 = zzgym.zzD(16) + zzgym.zzD(this.zzc[i12] >>> 3);
                int zzD3 = zzgym.zzD(24);
                int zzd = ((zzgxz) this.zzd[i12]).zzd();
                i11 += zzD + zzD + zzD2 + zzD3 + zzgym.zzD(zzd) + zzd;
            }
            this.zze = i11;
            return i11;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzhby zzd(zzhby zzhbyVar) {
        if (zzhbyVar.equals(zza)) {
            return this;
        }
        zzg();
        int i10 = this.zzb + zzhbyVar.zzb;
        zzn(i10);
        System.arraycopy(zzhbyVar.zzc, 0, this.zzc, this.zzb, zzhbyVar.zzb);
        System.arraycopy(zzhbyVar.zzd, 0, this.zzd, this.zzb, zzhbyVar.zzb);
        this.zzb = i10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzg() {
        if (this.zzf) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final void zzh() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzi(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < this.zzb; i11++) {
            zzhau.zzb(sb2, i10, String.valueOf(this.zzc[i11] >>> 3), this.zzd[i11]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzj(int i10, Object obj) {
        zzg();
        zzn(this.zzb + 1);
        int[] iArr = this.zzc;
        int i11 = this.zzb;
        iArr[i11] = i10;
        this.zzd[i11] = obj;
        this.zzb = i11 + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzk(zzhcm zzhcmVar) throws IOException {
        for (int i10 = 0; i10 < this.zzb; i10++) {
            zzhcmVar.zzw(this.zzc[i10] >>> 3, this.zzd[i10]);
        }
    }

    public final void zzl(zzhcm zzhcmVar) throws IOException {
        if (this.zzb != 0) {
            for (int i10 = 0; i10 < this.zzb; i10++) {
                int i11 = this.zzc[i10];
                Object obj = this.zzd[i10];
                int i12 = i11 & 7;
                int i13 = i11 >>> 3;
                if (i12 != 0) {
                    if (i12 != 1) {
                        if (i12 != 2) {
                            if (i12 != 3) {
                                if (i12 == 5) {
                                    zzhcmVar.zzk(i13, ((Integer) obj).intValue());
                                } else {
                                    throw new RuntimeException(new zzgzv("Protocol message tag had invalid wire type."));
                                }
                            } else {
                                zzhcmVar.zzF(i13);
                                ((zzhby) obj).zzl(zzhcmVar);
                                zzhcmVar.zzh(i13);
                            }
                        } else {
                            zzhcmVar.zzd(i13, (zzgxz) obj);
                        }
                    } else {
                        zzhcmVar.zzm(i13, ((Long) obj).longValue());
                    }
                } else {
                    zzhcmVar.zzt(i13, ((Long) obj).longValue());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzm(int i10, zzgyf zzgyfVar) throws IOException {
        int zzl;
        zzg();
        int i11 = i10 & 7;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        if (i11 != 4) {
                            if (i11 == 5) {
                                zzj(i10, Integer.valueOf(zzgyfVar.zzf()));
                                return true;
                            }
                            throw new zzgzv("Protocol message tag had invalid wire type.");
                        }
                        zzgyfVar.zzy(0);
                        return false;
                    }
                    zzhby zzhbyVar = new zzhby();
                    do {
                        zzl = zzgyfVar.zzl();
                        if (zzl == 0) {
                            break;
                        }
                    } while (zzhbyVar.zzm(zzl, zzgyfVar));
                    zzgyfVar.zzy(4 | ((i10 >>> 3) << 3));
                    zzj(i10, zzhbyVar);
                    return true;
                }
                zzj(i10, zzgyfVar.zzv());
                return true;
            }
            zzj(i10, Long.valueOf(zzgyfVar.zzn()));
            return true;
        }
        zzj(i10, Long.valueOf(zzgyfVar.zzo()));
        return true;
    }

    private zzhby() {
        this(0, new int[8], new Object[8], true);
    }
}
