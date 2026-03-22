package com.google.android.recaptcha.internal;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzpm {
    private static final zzpm zza = new zzpm(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzpm(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.zze = -1;
        this.zzb = i10;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z10;
    }

    public static zzpm zzc() {
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzpm zze(zzpm zzpmVar, zzpm zzpmVar2) {
        int i10 = zzpmVar.zzb + zzpmVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzpmVar.zzc, i10);
        System.arraycopy(zzpmVar2.zzc, 0, copyOf, zzpmVar.zzb, zzpmVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzpmVar.zzd, i10);
        System.arraycopy(zzpmVar2.zzd, 0, copyOf2, zzpmVar.zzb, zzpmVar2.zzb);
        return new zzpm(i10, copyOf, copyOf2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzpm zzf() {
        return new zzpm(0, new int[8], new Object[8], true);
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
        if (obj == null || !(obj instanceof zzpm)) {
            return false;
        }
        zzpm zzpmVar = (zzpm) obj;
        int i10 = this.zzb;
        if (i10 == zzpmVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzpmVar.zzc;
            int i11 = 0;
            while (true) {
                if (i11 < i10) {
                    if (iArr[i11] != iArr2[i11]) {
                        break;
                    }
                    i11++;
                } else {
                    Object[] objArr = this.zzd;
                    Object[] objArr2 = zzpmVar.zzd;
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
        int zzA;
        int zzB;
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
                                    i10 = zzln.zzA(i15 << 3) + 4;
                                } else {
                                    throw new IllegalStateException(new zznm("Protocol message tag had invalid wire type."));
                                }
                            } else {
                                int zzA2 = zzln.zzA(i15 << 3);
                                zzA = zzA2 + zzA2;
                                zzB = ((zzpm) this.zzd[i13]).zza();
                            }
                        } else {
                            int zzA3 = zzln.zzA(i15 << 3);
                            int zzd = ((zzle) this.zzd[i13]).zzd();
                            i10 = zzA3 + zzln.zzA(zzd) + zzd;
                        }
                    } else {
                        ((Long) this.zzd[i13]).longValue();
                        i10 = zzln.zzA(i15 << 3) + 8;
                    }
                    i12 += i10;
                } else {
                    int i17 = i15 << 3;
                    long longValue = ((Long) this.zzd[i13]).longValue();
                    zzA = zzln.zzA(i17);
                    zzB = zzln.zzB(longValue);
                }
                i10 = zzA + zzB;
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
                int zzA = zzln.zzA(8);
                int zzA2 = zzln.zzA(16) + zzln.zzA(this.zzc[i12] >>> 3);
                int zzA3 = zzln.zzA(24);
                int zzd = ((zzle) this.zzd[i12]).zzd();
                i11 += zzA + zzA + zzA2 + zzA3 + zzln.zzA(zzd) + zzd;
            }
            this.zze = i11;
            return i11;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzpm zzd(zzpm zzpmVar) {
        if (zzpmVar.equals(zza)) {
            return this;
        }
        zzg();
        int i10 = this.zzb + zzpmVar.zzb;
        zzm(i10);
        System.arraycopy(zzpmVar.zzc, 0, this.zzc, this.zzb, zzpmVar.zzb);
        System.arraycopy(zzpmVar.zzd, 0, this.zzd, this.zzb, zzpmVar.zzb);
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
            zzok.zzb(sb2, i10, String.valueOf(this.zzc[i11] >>> 3), this.zzd[i11]);
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
    public final void zzk(zzpy zzpyVar) throws IOException {
        for (int i10 = 0; i10 < this.zzb; i10++) {
            zzpyVar.zzw(this.zzc[i10] >>> 3, this.zzd[i10]);
        }
    }

    public final void zzl(zzpy zzpyVar) throws IOException {
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
                                    zzpyVar.zzk(i13, ((Integer) obj).intValue());
                                } else {
                                    throw new RuntimeException(new zznm("Protocol message tag had invalid wire type."));
                                }
                            } else {
                                zzpyVar.zzF(i13);
                                ((zzpm) obj).zzl(zzpyVar);
                                zzpyVar.zzh(i13);
                            }
                        } else {
                            zzpyVar.zzd(i13, (zzle) obj);
                        }
                    } else {
                        zzpyVar.zzm(i13, ((Long) obj).longValue());
                    }
                } else {
                    zzpyVar.zzt(i13, ((Long) obj).longValue());
                }
            }
        }
    }

    private zzpm() {
        this(0, new int[8], new Object[8], true);
    }
}
