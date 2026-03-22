package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzov {
    final /* synthetic */ zzow zza;
    private final String zzb;
    private int zzc;
    private long zzd;
    private zzvh zze;
    private boolean zzf;
    private boolean zzg;

    public zzov(zzow zzowVar, String str, @Nullable int i10, zzvh zzvhVar) {
        long j10;
        Objects.requireNonNull(zzowVar);
        this.zza = zzowVar;
        this.zzb = str;
        this.zzc = i10;
        if (zzvhVar == null) {
            j10 = -1;
        } else {
            j10 = zzvhVar.zzd;
        }
        this.zzd = j10;
        if (zzvhVar != null && zzvhVar.zzb()) {
            this.zze = zzvhVar;
        }
    }

    public final void zzg(int i10, @Nullable zzvh zzvhVar) {
        if (this.zzd == -1 && i10 == this.zzc && zzvhVar != null) {
            zzow zzowVar = this.zza;
            long j10 = zzvhVar.zzd;
            if (j10 >= zzow.zza(zzowVar)) {
                this.zzd = j10;
            }
        }
    }

    public final boolean zzj(int i10, @Nullable zzvh zzvhVar) {
        if (zzvhVar == null) {
            if (i10 != this.zzc) {
                return false;
            }
            return true;
        }
        zzvh zzvhVar2 = this.zze;
        if (zzvhVar2 == null) {
            if (zzvhVar.zzb() || zzvhVar.zzd != this.zzd) {
                return false;
            }
            return true;
        } else if (zzvhVar.zzd != zzvhVar2.zzd || zzvhVar.zzb != zzvhVar2.zzb || zzvhVar.zzc != zzvhVar2.zzc) {
            return false;
        } else {
            return true;
        }
    }

    public final boolean zzk(zzmp zzmpVar) {
        zzvh zzvhVar = zzmpVar.zzd;
        if (zzvhVar == null) {
            if (this.zzc != zzmpVar.zzc) {
                return true;
            }
            return false;
        }
        long j10 = this.zzd;
        if (j10 == -1) {
            return false;
        }
        long j11 = zzvhVar.zzd;
        if (j11 > j10) {
            return true;
        }
        if (this.zze == null) {
            return false;
        }
        zzbl zzblVar = zzmpVar.zzb;
        int zza = zzblVar.zza(zzvhVar.zza);
        int zza2 = zzblVar.zza(this.zze.zza);
        zzvh zzvhVar2 = this.zze;
        if (j11 < zzvhVar2.zzd || zza < zza2) {
            return false;
        }
        if (zza > zza2) {
            return true;
        }
        if (zzvhVar.zzb()) {
            int i10 = zzvhVar.zzb;
            int i11 = zzvhVar.zzc;
            int i12 = zzvhVar2.zzb;
            if (i10 > i12) {
                return true;
            }
            if (i10 == i12 && i11 > zzvhVar2.zzc) {
                return true;
            }
            return false;
        }
        int i13 = zzvhVar.zze;
        if (i13 == -1 || i13 > zzvhVar2.zzb) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
        if (r0 < r9.zzc()) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzl(com.google.android.gms.internal.ads.zzbl r8, com.google.android.gms.internal.ads.zzbl r9) {
        /*
            r7 = this;
            int r0 = r7.zzc
            int r1 = r8.zzc()
            r2 = 0
            r3 = -1
            if (r0 < r1) goto L13
            int r8 = r9.zzc()
            if (r0 >= r8) goto L11
            goto L44
        L11:
            r0 = r3
            goto L44
        L13:
            com.google.android.gms.internal.ads.zzow r1 = r7.zza
            com.google.android.gms.internal.ads.zzbk r4 = com.google.android.gms.internal.ads.zzow.zzc(r1)
            r5 = 0
            r8.zze(r0, r4, r5)
            com.google.android.gms.internal.ads.zzbk r0 = com.google.android.gms.internal.ads.zzow.zzc(r1)
            int r0 = r0.zzn
        L24:
            com.google.android.gms.internal.ads.zzbk r4 = com.google.android.gms.internal.ads.zzow.zzc(r1)
            int r4 = r4.zzo
            if (r0 > r4) goto L11
            java.lang.Object r4 = r8.zzf(r0)
            int r4 = r9.zza(r4)
            if (r4 == r3) goto L41
            com.google.android.gms.internal.ads.zzbj r8 = com.google.android.gms.internal.ads.zzow.zzb(r1)
            com.google.android.gms.internal.ads.zzbj r8 = r9.zzd(r4, r8, r2)
            int r0 = r8.zzc
            goto L44
        L41:
            int r0 = r0 + 1
            goto L24
        L44:
            r7.zzc = r0
            if (r0 != r3) goto L49
            return r2
        L49:
            com.google.android.gms.internal.ads.zzvh r8 = r7.zze
            r0 = 1
            if (r8 != 0) goto L4f
            return r0
        L4f:
            java.lang.Object r8 = r8.zza
            int r8 = r9.zza(r8)
            if (r8 == r3) goto L58
            return r0
        L58:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzov.zzl(com.google.android.gms.internal.ads.zzbl, com.google.android.gms.internal.ads.zzbl):boolean");
    }
}
