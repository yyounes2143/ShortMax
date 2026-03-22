package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzmf {
    private final zzma zza;
    private final int zzb;
    @Nullable
    private final zzma zzc;
    private int zzd = 0;
    private boolean zze = false;
    private boolean zzf = false;

    public zzmf(zzma zzmaVar, @Nullable zzma zzmaVar2, int i10) {
        this.zza = zzmaVar;
        this.zzb = i10;
        this.zzc = zzmaVar2;
    }

    private final int zzM(@Nullable zzma zzmaVar, zzlc zzlcVar, zzze zzzeVar, zzil zzilVar) throws zzin {
        boolean z10;
        if (zzmaVar != null && zzU(zzmaVar)) {
            zzma zzmaVar2 = this.zza;
            if (zzmaVar == zzmaVar2) {
                z10 = false;
            } else {
                z10 = true;
            }
            if ((zzmaVar != zzmaVar2 || !zzT()) && (zzmaVar != this.zzc || !zzV())) {
                zzwz zzq = zzmaVar.zzq();
                zzwz[] zzwzVarArr = zzlcVar.zzc;
                int i10 = this.zzb;
                zzwz zzwzVar = zzwzVarArr[i10];
                boolean zzb = zzzeVar.zzb(i10);
                if (zzb && zzq == zzwzVar) {
                    return 1;
                }
                if (!zzmaVar.zzS()) {
                    zzz[] zzW = zzW(zzzeVar.zzc[i10]);
                    zzwz zzwzVar2 = zzwzVarArr[i10];
                    zzwzVar2.getClass();
                    zzmaVar.zzI(zzW, zzwzVar2, zzlcVar.zzf(), zzlcVar.zze(), zzlcVar.zzg.zza);
                    return 3;
                } else if (!zzmaVar.zzX()) {
                    return 0;
                } else {
                    zzO(zzmaVar, zzilVar);
                    if (!zzb || zzI()) {
                        zzQ(!z10);
                    }
                    return 1;
                }
            }
        }
        return 1;
    }

    @Nullable
    private final zzma zzN(@Nullable zzlc zzlcVar) {
        if (zzlcVar != null) {
            int i10 = this.zzb;
            zzwz[] zzwzVarArr = zzlcVar.zzc;
            if (zzwzVarArr[i10] != null) {
                zzma zzmaVar = this.zza;
                zzwz zzq = zzmaVar.zzq();
                zzwz zzwzVar = zzwzVarArr[i10];
                if (zzq == zzwzVar) {
                    return zzmaVar;
                }
                zzma zzmaVar2 = this.zzc;
                if (zzmaVar2 != null && zzmaVar2.zzq() == zzwzVar) {
                    return zzmaVar2;
                }
            }
        }
        return null;
    }

    private final void zzO(zzma zzmaVar, zzil zzilVar) {
        boolean z10 = true;
        if (this.zza != zzmaVar && this.zzc != zzmaVar) {
            z10 = false;
        }
        zzdd.zzf(z10);
        if (!zzU(zzmaVar)) {
            return;
        }
        zzilVar.zzd(zzmaVar);
        zzX(zzmaVar);
        zzmaVar.zzs();
    }

    private final void zzP(zzma zzmaVar, zzwz zzwzVar, zzil zzilVar, long j10, boolean z10) throws zzin {
        if (zzU(zzmaVar)) {
            if (zzwzVar != zzmaVar.zzq()) {
                zzO(zzmaVar, zzilVar);
            } else if (z10) {
                zzmaVar.zzK(j10);
            }
        }
    }

    private final void zzQ(boolean z10) {
        if (z10) {
            if (this.zze) {
                this.zza.zzJ();
                this.zze = false;
            }
        } else if (this.zzf) {
            zzma zzmaVar = this.zzc;
            zzmaVar.getClass();
            zzmaVar.zzJ();
            this.zzf = false;
        }
    }

    private final void zzR(boolean z10) throws zzin {
        if (z10) {
            zzma zzmaVar = this.zzc;
            zzmaVar.getClass();
            zzmaVar.zzv(17, this.zza);
            return;
        }
        zzma zzmaVar2 = this.zza;
        zzma zzmaVar3 = this.zzc;
        zzmaVar3.getClass();
        zzmaVar2.zzv(17, zzmaVar3);
    }

    private final boolean zzS(zzlc zzlcVar, @Nullable zzma zzmaVar) {
        if (zzmaVar == null) {
            return true;
        }
        zzwz[] zzwzVarArr = zzlcVar.zzc;
        int i10 = this.zzb;
        zzwz zzwzVar = zzwzVarArr[i10];
        if (zzmaVar.zzq() != null) {
            if (zzmaVar.zzq() == zzwzVar) {
                if (zzwzVar != null && !zzmaVar.zzR()) {
                    zzlcVar.zzg();
                    boolean z10 = zzlcVar.zzg.zzg;
                }
            }
            zzlc zzg = zzlcVar.zzg();
            if (zzg != null && zzg.zzc[i10] == zzmaVar.zzq()) {
                return true;
            }
            return false;
        }
        return true;
    }

    private final boolean zzT() {
        int i10 = this.zzd;
        if (i10 != 2 && i10 != 4) {
            return false;
        }
        return true;
    }

    private static boolean zzU(zzma zzmaVar) {
        if (zzmaVar.zzcU() != 0) {
            return true;
        }
        return false;
    }

    private final boolean zzV() {
        if (this.zzd == 3) {
            return true;
        }
        return false;
    }

    private static zzz[] zzW(@Nullable zzyw zzywVar) {
        int i10;
        if (zzywVar != null) {
            i10 = zzywVar.zzh();
        } else {
            i10 = 0;
        }
        zzz[] zzzVarArr = new zzz[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            zzywVar.getClass();
            zzzVarArr[i11] = zzywVar.zza(i11);
        }
        return zzzVarArr;
    }

    private static final void zzX(zzma zzmaVar) {
        if (zzmaVar.zzcU() == 2) {
            zzmaVar.zzQ();
        }
    }

    private static final void zzY(zzma zzmaVar, long j10) {
        zzmaVar.zzL();
        if (!(zzmaVar instanceof zzxo)) {
            return;
        }
        zzxo zzxoVar = (zzxo) zzmaVar;
        throw null;
    }

    public final void zzA() throws zzin {
        zzma zzmaVar = this.zza;
        if (zzmaVar.zzcU() == 1 && this.zzd != 4) {
            zzmaVar.zzP();
            return;
        }
        zzma zzmaVar2 = this.zzc;
        if (zzmaVar2 != null && zzmaVar2.zzcU() == 1 && this.zzd != 3) {
            zzmaVar2.zzP();
        }
    }

    public final void zzB() {
        int i10;
        zzdd.zzf(!zzI());
        if (zzU(this.zza)) {
            i10 = 3;
        } else {
            zzma zzmaVar = this.zzc;
            if (zzmaVar != null && zzU(zzmaVar)) {
                i10 = 4;
            } else {
                i10 = 2;
            }
        }
        this.zzd = i10;
    }

    public final void zzC() {
        zzma zzmaVar = this.zza;
        if (zzU(zzmaVar)) {
            zzX(zzmaVar);
        }
        zzma zzmaVar2 = this.zzc;
        if (zzmaVar2 != null && zzU(zzmaVar2)) {
            zzX(zzmaVar2);
        }
    }

    public final boolean zzD(zzlc zzlcVar) {
        zzma zzN = zzN(zzlcVar);
        if (zzN != null && !zzN.zzR() && !zzN.zzY() && !zzN.zzX()) {
            return false;
        }
        return true;
    }

    public final boolean zzE(zzlc zzlcVar) {
        if (zzS(zzlcVar, this.zza) && zzS(zzlcVar, this.zzc)) {
            return true;
        }
        return false;
    }

    public final boolean zzF(zzlc zzlcVar) {
        zzma zzN = zzN(zzlcVar);
        zzN.getClass();
        return zzN.zzR();
    }

    public final boolean zzG() {
        if (this.zzc != null) {
            return true;
        }
        return false;
    }

    public final boolean zzH() {
        boolean z10;
        zzma zzmaVar = this.zza;
        if (zzU(zzmaVar)) {
            z10 = zzmaVar.zzX();
        } else {
            z10 = true;
        }
        zzma zzmaVar2 = this.zzc;
        if (zzmaVar2 != null && zzU(zzmaVar2)) {
            return z10 & zzmaVar2.zzX();
        }
        return z10;
    }

    public final boolean zzI() {
        if (!zzT() && !zzV()) {
            return false;
        }
        return true;
    }

    public final boolean zzJ(zzlc zzlcVar) {
        boolean z10;
        boolean z11;
        if (zzT() && zzN(zzlcVar) == this.zza) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (zzV() && zzN(zzlcVar) == this.zzc) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10 || z11) {
            return true;
        }
        return false;
    }

    public final boolean zzK(@Nullable zzlc zzlcVar) {
        if (zzN(zzlcVar) != null) {
            return true;
        }
        return false;
    }

    public final boolean zzL() {
        int i10 = this.zzd;
        if (i10 != 0 && i10 != 2 && i10 != 4) {
            zzma zzmaVar = this.zzc;
            zzmaVar.getClass();
            return zzU(zzmaVar);
        }
        return zzU(this.zza);
    }

    public final int zza() {
        zzma zzmaVar = this.zzc;
        boolean zzU = zzU(this.zza);
        int i10 = 0;
        if (zzmaVar != null && zzU(zzmaVar)) {
            i10 = 1;
        }
        return (zzU ? 1 : 0) + i10;
    }

    public final int zzb() {
        return this.zza.zzb();
    }

    public final int zzc(zzlc zzlcVar, zzze zzzeVar, zzil zzilVar) throws zzin {
        int zzM = zzM(this.zza, zzlcVar, zzzeVar, zzilVar);
        int zzM2 = zzM(this.zzc, zzlcVar, zzzeVar, zzilVar);
        if (zzM == 1) {
            return zzM2;
        }
        return zzM;
    }

    public final long zzd(long j10, long j11) {
        long j12;
        zzma zzmaVar = this.zza;
        if (zzU(zzmaVar)) {
            j12 = zzmaVar.zzf(j10, j11);
        } else {
            j12 = Long.MAX_VALUE;
        }
        zzma zzmaVar2 = this.zzc;
        if (zzmaVar2 != null && zzU(zzmaVar2)) {
            return Math.min(j12, zzmaVar2.zzf(j10, j11));
        }
        return j12;
    }

    public final long zze(@Nullable zzlc zzlcVar) {
        zzma zzN = zzN(zzlcVar);
        Objects.requireNonNull(zzN);
        return zzN.zzh();
    }

    public final void zzf(zzil zzilVar) throws zzin {
        boolean z10;
        zzO(this.zza, zzilVar);
        zzma zzmaVar = this.zzc;
        if (zzmaVar != null) {
            if (zzU(zzmaVar) && this.zzd != 3) {
                z10 = true;
            } else {
                z10 = false;
            }
            zzO(zzmaVar, zzilVar);
            zzQ(false);
            if (z10) {
                zzR(true);
            }
        }
        this.zzd = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzg(com.google.android.gms.internal.ads.zzil r7) {
        /*
            r6 = this;
            boolean r0 = r6.zzI()
            if (r0 != 0) goto L7
            return
        L7:
            int r0 = r6.zzd
            r1 = 0
            r2 = 4
            r3 = 1
            if (r0 == r2) goto L12
            r4 = 2
            if (r0 != r4) goto L14
            r0 = r4
        L12:
            r4 = r3
            goto L15
        L14:
            r4 = r1
        L15:
            if (r4 == 0) goto L1a
            com.google.android.gms.internal.ads.zzma r5 = r6.zza
            goto L1f
        L1a:
            com.google.android.gms.internal.ads.zzma r5 = r6.zzc
            r5.getClass()
        L1f:
            r6.zzO(r5, r7)
            r6.zzQ(r4)
            if (r0 != r2) goto L28
            r1 = r3
        L28:
            r6.zzd = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmf.zzg(com.google.android.gms.internal.ads.zzil):void");
    }

    public final void zzh(zzme zzmeVar, zzyw zzywVar, zzwz zzwzVar, long j10, boolean z10, boolean z11, long j11, long j12, zzvh zzvhVar, zzil zzilVar) throws zzin {
        zzz[] zzW = zzW(zzywVar);
        int i10 = this.zzd;
        if (i10 != 0 && i10 != 2 && i10 != 4) {
            this.zzf = true;
            zzma zzmaVar = this.zzc;
            zzmaVar.getClass();
            zzmaVar.zzt(zzmeVar, zzW, zzwzVar, j10, z10, z11, j11, j12, zzvhVar);
            zzilVar.zze(zzmaVar);
            return;
        }
        this.zze = true;
        zzma zzmaVar2 = this.zza;
        zzmaVar2.zzt(zzmeVar, zzW, zzwzVar, j10, z10, z11, j11, j12, zzvhVar);
        zzilVar.zze(zzmaVar2);
    }

    public final void zzi() {
        zzma zzmaVar = this.zza;
        if (zzU(zzmaVar)) {
            zzmaVar.zzu();
            return;
        }
        zzma zzmaVar2 = this.zzc;
        if (zzmaVar2 != null && zzU(zzmaVar2)) {
            zzmaVar2.zzu();
        }
    }

    public final void zzj(int i10, @Nullable Object obj, zzlc zzlcVar) throws zzin {
        zzma zzN = zzN(zzlcVar);
        zzN.getClass();
        zzN.zzv(11, obj);
    }

    public final void zzk(zzwz zzwzVar, zzil zzilVar, long j10, boolean z10) throws zzin {
        zzP(this.zza, zzwzVar, zzilVar, j10, z10);
        zzma zzmaVar = this.zzc;
        if (zzmaVar != null) {
            zzP(zzmaVar, zzwzVar, zzilVar, j10, z10);
        }
    }

    public final void zzl() throws zzin {
        boolean z10;
        int i10 = this.zzd;
        int i11 = 0;
        if (i10 != 3 && i10 != 4) {
            if (i10 == 2) {
                this.zzd = 0;
                return;
            }
            return;
        }
        if (i10 == 4) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzR(z10);
        if (this.zzd != 4) {
            i11 = 1;
        }
        this.zzd = i11;
    }

    public final void zzm(zzze zzzeVar, zzze zzzeVar2, long j10) {
        int i10;
        int i11 = this.zzb;
        boolean zzb = zzzeVar.zzb(i11);
        boolean zzb2 = zzzeVar2.zzb(i11);
        zzma zzmaVar = this.zzc;
        if (zzmaVar == null || (i10 = this.zzd) == 3 || (i10 == 0 && zzU(this.zza))) {
            zzmaVar = this.zza;
        }
        if (zzb && !zzmaVar.zzS()) {
            zzb();
            zzme zzmeVar = zzzeVar.zzb[i11];
            zzme zzmeVar2 = zzzeVar2.zzb[i11];
            if (!zzb2 || !Objects.equals(zzmeVar2, zzmeVar) || zzI()) {
                zzY(zzmaVar, j10);
            }
        }
    }

    public final void zzn(zzlc zzlcVar) throws IOException {
        zzma zzN = zzN(zzlcVar);
        zzN.getClass();
        zzN.zzx();
    }

    public final void zzo() {
        this.zza.zzH();
        this.zze = false;
        zzma zzmaVar = this.zzc;
        if (zzmaVar != null) {
            zzmaVar.zzH();
            this.zzf = false;
        }
    }

    public final void zzp(long j10, long j11) throws zzin {
        zzma zzmaVar = this.zza;
        if (zzU(zzmaVar)) {
            zzmaVar.zzW(j10, j11);
        }
        zzma zzmaVar2 = this.zzc;
        if (zzmaVar2 != null && zzU(zzmaVar2)) {
            zzmaVar2.zzW(j10, j11);
        }
    }

    public final void zzq() {
        if (!zzU(this.zza)) {
            zzQ(true);
        }
        zzma zzmaVar = this.zzc;
        if (zzmaVar != null && !zzU(zzmaVar)) {
            zzQ(false);
        }
    }

    public final void zzr(zzlc zzlcVar, long j10) throws zzin {
        zzma zzN = zzN(zzlcVar);
        if (zzN != null) {
            zzN.zzK(j10);
        }
    }

    public final void zzs(long j10) {
        int i10;
        zzma zzmaVar = this.zza;
        if (zzU(zzmaVar) && (i10 = this.zzd) != 4 && i10 != 2) {
            zzY(zzmaVar, j10);
        }
        zzma zzmaVar2 = this.zzc;
        if (zzmaVar2 != null && zzU(zzmaVar2) && this.zzd != 3) {
            zzY(zzmaVar2, j10);
        }
    }

    public final void zzt(zzlc zzlcVar, long j10) {
        zzma zzN = zzN(zzlcVar);
        zzN.getClass();
        zzY(zzN, j10);
    }

    public final void zzu(float f10, float f11) throws zzin {
        this.zza.zzN(f10, f11);
        zzma zzmaVar = this.zzc;
        if (zzmaVar != null) {
            zzmaVar.zzN(f10, f11);
        }
    }

    public final void zzv(@Nullable zzmh zzmhVar) throws zzin {
        this.zza.zzv(18, zzmhVar);
        zzma zzmaVar = this.zzc;
        if (zzmaVar != null) {
            zzmaVar.zzv(18, zzmhVar);
        }
    }

    public final void zzw(zzbl zzblVar) {
        this.zza.zzO(zzblVar);
        zzma zzmaVar = this.zzc;
        if (zzmaVar != null) {
            zzmaVar.zzO(zzblVar);
        }
    }

    public final void zzx(zzabp zzabpVar) throws zzin {
        if (zzb() == 2) {
            this.zza.zzv(7, zzabpVar);
            zzma zzmaVar = this.zzc;
            if (zzmaVar != null) {
                zzmaVar.zzv(7, zzabpVar);
            }
        }
    }

    public final void zzy(@Nullable Object obj) throws zzin {
        if (zzb() != 2) {
            return;
        }
        int i10 = this.zzd;
        if (i10 != 4 && i10 != 1) {
            this.zza.zzv(1, obj);
            return;
        }
        zzma zzmaVar = this.zzc;
        zzmaVar.getClass();
        zzmaVar.zzv(1, obj);
    }

    public final void zzz(float f10) throws zzin {
        if (zzb() == 1) {
            zzma zzmaVar = this.zza;
            Float valueOf = Float.valueOf(f10);
            zzmaVar.zzv(2, valueOf);
            zzma zzmaVar2 = this.zzc;
            if (zzmaVar2 != null) {
                zzmaVar2.zzv(2, valueOf);
            }
        }
    }
}
