package com.google.android.gms.internal.p003firebaseauthapi;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzanx  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzanx {
    private static final zzanx zza = new zzanx(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzanx() {
        this(0, new int[8], new Object[8], true);
    }

    public static zzanx zzc() {
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzanx zzd() {
        return new zzanx();
    }

    private final void zzf() {
        if (this.zzf) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzanx)) {
            return false;
        }
        zzanx zzanxVar = (zzanx) obj;
        int i10 = this.zzb;
        if (i10 == zzanxVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzanxVar.zzc;
            int i11 = 0;
            while (true) {
                if (i11 < i10) {
                    if (iArr[i11] != iArr2[i11]) {
                        break;
                    }
                    i11++;
                } else {
                    Object[] objArr = this.zzd;
                    Object[] objArr2 = zzanxVar.zzd;
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
        int i11 = (i10 + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31;
        int[] iArr = this.zzc;
        int i12 = 17;
        int i13 = 17;
        for (int i14 = 0; i14 < i10; i14++) {
            i13 = (i13 * 31) + iArr[i14];
        }
        int i15 = (i11 + i13) * 31;
        Object[] objArr = this.zzd;
        int i16 = this.zzb;
        for (int i17 = 0; i17 < i16; i17++) {
            i12 = (i12 * 31) + objArr[i17].hashCode();
        }
        return i15 + i12;
    }

    public final int zza() {
        int zze;
        int i10 = this.zze;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.zzb; i12++) {
            int i13 = this.zzc[i12];
            int i14 = i13 >>> 3;
            int i15 = i13 & 7;
            if (i15 == 0) {
                zze = zzakn.zze(i14, ((Long) this.zzd[i12]).longValue());
            } else if (i15 == 1) {
                zze = zzakn.zza(i14, ((Long) this.zzd[i12]).longValue());
            } else if (i15 == 2) {
                zze = zzakn.zza(i14, (zzajv) this.zzd[i12]);
            } else if (i15 == 3) {
                zze = (zzakn.zzh(i14) << 1) + ((zzanx) this.zzd[i12]).zza();
            } else if (i15 == 5) {
                zze = zzakn.zzb(i14, ((Integer) this.zzd[i12]).intValue());
            } else {
                throw new IllegalStateException(zzall.zza());
            }
            i11 += zze;
        }
        this.zze = i11;
        return i11;
    }

    public final int zzb() {
        int i10 = this.zze;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.zzb; i12++) {
            i11 += zzakn.zzb(this.zzc[i12] >>> 3, (zzajv) this.zzd[i12]);
        }
        this.zze = i11;
        return i11;
    }

    public final void zze() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    private zzanx(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.zze = -1;
        this.zzb = i10;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z10;
    }

    public final void zzb(zzaol zzaolVar) throws IOException {
        if (this.zzb == 0) {
            return;
        }
        if (zzaolVar.zza() == 1) {
            for (int i10 = 0; i10 < this.zzb; i10++) {
                zza(this.zzc[i10], this.zzd[i10], zzaolVar);
            }
            return;
        }
        for (int i11 = this.zzb - 1; i11 >= 0; i11--) {
            zza(this.zzc[i11], this.zzd[i11], zzaolVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzanx zza(zzanx zzanxVar) {
        if (zzanxVar.equals(zza)) {
            return this;
        }
        zzf();
        int i10 = this.zzb + zzanxVar.zzb;
        zza(i10);
        System.arraycopy(zzanxVar.zzc, 0, this.zzc, this.zzb, zzanxVar.zzb);
        System.arraycopy(zzanxVar.zzd, 0, this.zzd, this.zzb, zzanxVar.zzb);
        this.zzb = i10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzanx zza(zzanx zzanxVar, zzanx zzanxVar2) {
        int i10 = zzanxVar.zzb + zzanxVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzanxVar.zzc, i10);
        System.arraycopy(zzanxVar2.zzc, 0, copyOf, zzanxVar.zzb, zzanxVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzanxVar.zzd, i10);
        System.arraycopy(zzanxVar2.zzd, 0, copyOf2, zzanxVar.zzb, zzanxVar2.zzb);
        return new zzanx(i10, copyOf, copyOf2, true);
    }

    private final void zza(int i10) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < this.zzb; i11++) {
            zzamn.zza(sb2, i10, String.valueOf(this.zzc[i11] >>> 3), this.zzd[i11]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(int i10, Object obj) {
        zzf();
        zza(this.zzb + 1);
        int[] iArr = this.zzc;
        int i11 = this.zzb;
        iArr[i11] = i10;
        this.zzd[i11] = obj;
        this.zzb = i11 + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzaol zzaolVar) throws IOException {
        if (zzaolVar.zza() == 2) {
            for (int i10 = this.zzb - 1; i10 >= 0; i10--) {
                zzaolVar.zza(this.zzc[i10] >>> 3, this.zzd[i10]);
            }
            return;
        }
        for (int i11 = 0; i11 < this.zzb; i11++) {
            zzaolVar.zza(this.zzc[i11] >>> 3, this.zzd[i11]);
        }
    }

    private static void zza(int i10, Object obj, zzaol zzaolVar) throws IOException {
        int i11 = i10 >>> 3;
        int i12 = i10 & 7;
        if (i12 == 0) {
            zzaolVar.zzb(i11, ((Long) obj).longValue());
        } else if (i12 == 1) {
            zzaolVar.zza(i11, ((Long) obj).longValue());
        } else if (i12 == 2) {
            zzaolVar.zza(i11, (zzajv) obj);
        } else if (i12 != 3) {
            if (i12 == 5) {
                zzaolVar.zzb(i11, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzall.zza());
        } else if (zzaolVar.zza() == 1) {
            zzaolVar.zzb(i11);
            ((zzanx) obj).zzb(zzaolVar);
            zzaolVar.zza(i11);
        } else {
            zzaolVar.zza(i11);
            ((zzanx) obj).zzb(zzaolVar);
            zzaolVar.zzb(i11);
        }
    }
}
