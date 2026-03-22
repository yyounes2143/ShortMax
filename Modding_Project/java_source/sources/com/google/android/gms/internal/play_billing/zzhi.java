package com.google.android.gms.internal.play_billing;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zzhi {
    private static final zzhi zza = new zzhi(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzhi(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.zze = -1;
        this.zzb = i10;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z10;
    }

    public static zzhi zzc() {
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzhi zze(zzhi zzhiVar, zzhi zzhiVar2) {
        int i10 = zzhiVar.zzb + zzhiVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzhiVar.zzc, i10);
        System.arraycopy(zzhiVar2.zzc, 0, copyOf, zzhiVar.zzb, zzhiVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzhiVar.zzd, i10);
        System.arraycopy(zzhiVar2.zzd, 0, copyOf2, zzhiVar.zzb, zzhiVar2.zzb);
        return new zzhi(i10, copyOf, copyOf2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzhi zzf() {
        return new zzhi(0, new int[8], new Object[8], true);
    }

    private final void zzm(int i10) {
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
        if (obj == null || !(obj instanceof zzhi)) {
            return false;
        }
        zzhi zzhiVar = (zzhi) obj;
        int i10 = this.zzb;
        if (i10 == zzhiVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzhiVar.zzc;
            int i11 = 0;
            while (true) {
                if (i11 < i10) {
                    if (iArr[i11] != iArr2[i11]) {
                        break;
                    }
                    i11++;
                } else {
                    Object[] objArr = this.zzd;
                    Object[] objArr2 = zzhiVar.zzd;
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
        int zzC;
        int zzD;
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
                                    i10 = zzep.zzC(i15 << 3) + 4;
                                } else {
                                    throw new IllegalStateException(new zzfp("Protocol message tag had invalid wire type."));
                                }
                            } else {
                                int zzC2 = zzep.zzC(i15 << 3);
                                zzC = zzC2 + zzC2;
                                zzD = ((zzhi) this.zzd[i13]).zza();
                            }
                        } else {
                            int zzC3 = zzep.zzC(i15 << 3);
                            int zzd = ((zzei) this.zzd[i13]).zzd();
                            i10 = zzC3 + zzep.zzC(zzd) + zzd;
                        }
                    } else {
                        ((Long) this.zzd[i13]).longValue();
                        i10 = zzep.zzC(i15 << 3) + 8;
                    }
                    i12 += i10;
                } else {
                    int i17 = i15 << 3;
                    long longValue = ((Long) this.zzd[i13]).longValue();
                    zzC = zzep.zzC(i17);
                    zzD = zzep.zzD(longValue);
                }
                i10 = zzC + zzD;
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
                int zzC = zzep.zzC(8);
                int zzC2 = zzep.zzC(16) + zzep.zzC(this.zzc[i12] >>> 3);
                int zzC3 = zzep.zzC(24);
                int zzd = ((zzei) this.zzd[i12]).zzd();
                i11 += zzC + zzC + zzC2 + zzC3 + zzep.zzC(zzd) + zzd;
            }
            this.zze = i11;
            return i11;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzhi zzd(zzhi zzhiVar) {
        if (zzhiVar.equals(zza)) {
            return this;
        }
        zzg();
        int i10 = this.zzb + zzhiVar.zzb;
        zzm(i10);
        System.arraycopy(zzhiVar.zzc, 0, this.zzc, this.zzb, zzhiVar.zzb);
        System.arraycopy(zzhiVar.zzd, 0, this.zzd, this.zzb, zzhiVar.zzb);
        this.zzb = i10;
        return this;
    }

    final void zzg() {
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
            zzgn.zzb(sb2, i10, String.valueOf(this.zzc[i11] >>> 3), this.zzd[i11]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzj(int i10, Object obj) {
        zzg();
        zzm(this.zzb + 1);
        int[] iArr = this.zzc;
        int i11 = this.zzb;
        iArr[i11] = i10;
        this.zzd[i11] = obj;
        this.zzb = i11 + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzk(zzhu zzhuVar) throws IOException {
        for (int i10 = 0; i10 < this.zzb; i10++) {
            zzhuVar.zzw(this.zzc[i10] >>> 3, this.zzd[i10]);
        }
    }

    public final void zzl(zzhu zzhuVar) throws IOException {
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
                                    zzhuVar.zzk(i13, ((Integer) obj).intValue());
                                } else {
                                    throw new RuntimeException(new zzfp("Protocol message tag had invalid wire type."));
                                }
                            } else {
                                zzhuVar.zzF(i13);
                                ((zzhi) obj).zzl(zzhuVar);
                                zzhuVar.zzh(i13);
                            }
                        } else {
                            zzhuVar.zzd(i13, (zzei) obj);
                        }
                    } else {
                        zzhuVar.zzm(i13, ((Long) obj).longValue());
                    }
                } else {
                    zzhuVar.zzt(i13, ((Long) obj).longValue());
                }
            }
        }
    }

    private zzhi() {
        this(0, new int[8], new Object[8], true);
    }
}
