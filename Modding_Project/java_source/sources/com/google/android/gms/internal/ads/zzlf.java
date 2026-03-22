package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzlf {
    private final zzmo zzc;
    private final zzdt zzd;
    private long zze;
    private int zzf;
    private boolean zzg;
    private zzix zzh;
    @Nullable
    private zzlc zzi;
    @Nullable
    private zzlc zzj;
    @Nullable
    private zzlc zzk;
    @Nullable
    private zzlc zzl;
    @Nullable
    private zzlc zzm;
    private int zzn;
    @Nullable
    private Object zzo;
    private long zzp;
    private final zzkk zzr;
    private final zzbj zza = new zzbj();
    private final zzbk zzb = new zzbk();
    private List zzq = new ArrayList();

    public zzlf(zzmo zzmoVar, zzdt zzdtVar, zzkk zzkkVar, zzix zzixVar) {
        this.zzc = zzmoVar;
        this.zzd = zzdtVar;
        this.zzr = zzkkVar;
        this.zzh = zzixVar;
    }

    private final int zzA(zzbl zzblVar) {
        zzlc zzlcVar = this.zzi;
        if (zzlcVar == null) {
            return 0;
        }
        int zza = zzblVar.zza(zzlcVar.zzb);
        while (true) {
            zza = zzblVar.zzi(zza, this.zza, this.zzb, this.zzf, this.zzg);
            while (true) {
                zzlcVar.getClass();
                if (zzlcVar.zzg() == null || zzlcVar.zzg.zzh) {
                    break;
                }
                zzlcVar = zzlcVar.zzg();
            }
            zzlc zzg = zzlcVar.zzg();
            if (zza == -1 || zzg == null || zzblVar.zza(zzg.zzb) != zza) {
                break;
            }
            zzlcVar = zzg;
        }
        int zza2 = zza(zzlcVar);
        zzlcVar.zzg = zzp(zzblVar, zzlcVar.zzg);
        return zza2;
    }

    private final long zzB(zzbl zzblVar, Object obj, int i10) {
        zzbj zzbjVar = this.zza;
        zzblVar.zzn(obj, zzbjVar);
        zzbjVar.zzg(i10);
        long j10 = zzbjVar.zzg.zza(i10).zzh;
        return 0L;
    }

    private final long zzC(Object obj) {
        for (int i10 = 0; i10 < this.zzq.size(); i10++) {
            zzlc zzlcVar = (zzlc) this.zzq.get(i10);
            if (zzlcVar.zzb.equals(obj)) {
                return zzlcVar.zzg.zza.zzd;
            }
        }
        return -1L;
    }

    @Nullable
    private final zzld zzD(zzbl zzblVar, zzlc zzlcVar, long j10) {
        Object obj;
        int i10;
        long j11;
        long j12;
        long j13;
        zzld zzldVar = zzlcVar.zzg;
        long zze = zzlcVar.zze();
        long j14 = zzldVar.zze;
        long j15 = (zze + j14) - j10;
        if (zzldVar.zzh) {
            zzvh zzvhVar = zzldVar.zza;
            Object obj2 = zzvhVar.zza;
            int zza = zzblVar.zza(obj2);
            int i11 = this.zzf;
            boolean z10 = this.zzg;
            zzbk zzbkVar = this.zzb;
            zzbj zzbjVar = this.zza;
            int zzi = zzblVar.zzi(zza, zzbjVar, zzbkVar, i11, z10);
            if (zzi != -1) {
                int i12 = zzblVar.zzd(zzi, zzbjVar, true).zzc;
                Object obj3 = zzbjVar.zzb;
                obj3.getClass();
                long j16 = zzvhVar.zzd;
                if (zzblVar.zze(i12, zzbkVar, 0L).zzn == zzi) {
                    Pair zzm = zzblVar.zzm(zzbkVar, zzbjVar, i12, -9223372036854775807L, Math.max(0L, j15));
                    if (zzm != null) {
                        obj3 = zzm.first;
                        long longValue = ((Long) zzm.second).longValue();
                        zzlc zzg = zzlcVar.zzg();
                        if (zzg != null && zzg.zzb.equals(obj3)) {
                            j16 = zzg.zzg.zza.zzd;
                        } else {
                            j16 = zzC(obj3);
                            if (j16 == -1) {
                                j16 = this.zze;
                                this.zze = 1 + j16;
                            }
                        }
                        j13 = longValue;
                        j12 = -9223372036854775807L;
                    }
                } else {
                    j12 = 0;
                    j13 = 0;
                }
                zzvh zzH = zzH(zzblVar, obj3, j13, j16, zzbkVar, zzbjVar);
                if (j12 != -9223372036854775807L && zzldVar.zzc != -9223372036854775807L) {
                    zzblVar.zzn(obj2, zzbjVar).zzb();
                    int i13 = zzbjVar.zzg.zzd;
                }
                return zzE(zzblVar, zzH, j12, j13);
            }
        } else {
            zzvh zzvhVar2 = zzldVar.zza;
            Object obj4 = zzvhVar2.zza;
            zzbj zzbjVar2 = this.zza;
            zzblVar.zzn(obj4, zzbjVar2);
            if (zzvhVar2.zzb()) {
                int i14 = zzvhVar2.zzb;
                if (zzbjVar2.zza(i14) != -1) {
                    int zza2 = zzbjVar2.zzg.zza(i14).zza(zzvhVar2.zzc);
                    if (zza2 < 0) {
                        return zzF(zzblVar, obj4, i14, zza2, zzldVar.zzc, zzvhVar2.zzd, false);
                    }
                    long j17 = zzldVar.zzc;
                    if (j17 == -9223372036854775807L) {
                        obj = obj4;
                        i10 = i14;
                        Pair zzm2 = zzblVar.zzm(this.zzb, zzbjVar2, zzbjVar2.zzc, -9223372036854775807L, Math.max(0L, j15));
                        if (zzm2 != null) {
                            j17 = ((Long) zzm2.second).longValue();
                            j11 = -9223372036854775807L;
                        }
                    } else {
                        obj = obj4;
                        i10 = i14;
                        j11 = j17;
                    }
                    zzB(zzblVar, obj, i10);
                    return zzG(zzblVar, obj, Math.max(0L, j17), j11, zzvhVar2.zzd, false);
                }
            } else {
                int i15 = zzvhVar2.zze;
                if (i15 != -1) {
                    zzbjVar2.zzj(i15);
                }
                int zze2 = zzbjVar2.zze(i15);
                zzbjVar2.zzk(i15);
                if (zze2 != zzbjVar2.zza(i15)) {
                    return zzF(zzblVar, obj4, i15, zze2, j14, zzvhVar2.zzd, false);
                }
                zzB(zzblVar, obj4, i15);
                return zzG(zzblVar, obj4, 0L, j14, zzvhVar2.zzd, false);
            }
        }
        return null;
    }

    private final zzld zzE(zzbl zzblVar, zzvh zzvhVar, long j10, long j11) {
        Object obj = zzvhVar.zza;
        zzblVar.zzn(obj, this.zza);
        if (zzvhVar.zzb()) {
            return zzF(zzblVar, obj, zzvhVar.zzb, zzvhVar.zzc, j10, zzvhVar.zzd, false);
        }
        return zzG(zzblVar, obj, j11, j10, zzvhVar.zzd, false);
    }

    private final zzld zzF(zzbl zzblVar, Object obj, int i10, int i11, long j10, long j11, boolean z10) {
        long j12;
        zzvh zzvhVar = new zzvh(obj, i10, i11, j11);
        Object obj2 = zzvhVar.zza;
        int i12 = zzvhVar.zzb;
        int i13 = zzvhVar.zzc;
        zzbj zzbjVar = this.zza;
        long zzf = zzblVar.zzn(obj2, zzbjVar).zzf(i12, i13);
        if (i11 == zzbjVar.zze(i10)) {
            zzbjVar.zzh();
        }
        zzbjVar.zzk(i12);
        if (zzf != -9223372036854775807L && zzf <= 0) {
            j12 = Math.max(0L, (-1) + zzf);
        } else {
            j12 = 0;
        }
        return new zzld(zzvhVar, j12, j10, -9223372036854775807L, zzf, false, false, false, false, false);
    }

    private final zzld zzG(zzbl zzblVar, Object obj, long j10, long j11, long j12, boolean z10) {
        long j13;
        long j14;
        long j15;
        long j16 = j10;
        zzbj zzbjVar = this.zza;
        zzblVar.zzn(obj, zzbjVar);
        int zzc = zzbjVar.zzc(j16);
        if (zzc == -1) {
            zzbjVar.zzb();
        } else {
            zzbjVar.zzk(zzc);
        }
        zzvh zzvhVar = new zzvh(obj, j12, zzc);
        boolean zzL = zzL(zzvhVar);
        boolean zzK = zzK(zzblVar, zzvhVar);
        boolean zzJ = zzJ(zzblVar, zzvhVar, zzL);
        if (zzc != -1) {
            zzbjVar.zzk(zzc);
        }
        if (zzc != -1) {
            zzbjVar.zzj(zzc);
        }
        if (zzc != -1) {
            zzbjVar.zzg(zzc);
            j13 = 0;
        } else {
            j13 = -9223372036854775807L;
        }
        if (j13 != -9223372036854775807L) {
            j15 = j13;
            j14 = j15;
        } else {
            j14 = zzbjVar.zzd;
            j15 = -9223372036854775807L;
        }
        if (j14 != -9223372036854775807L && j16 >= j14) {
            j16 = Math.max(0L, j14 - 1);
        }
        return new zzld(zzvhVar, j16, j11, j15, j14, false, false, zzL, zzK, zzJ);
    }

    private static zzvh zzH(zzbl zzblVar, Object obj, long j10, long j11, zzbk zzbkVar, zzbj zzbjVar) {
        zzblVar.zzn(obj, zzbjVar);
        zzblVar.zze(zzbjVar.zzc, zzbkVar, 0L);
        zzblVar.zza(obj);
        zzbjVar.zzb();
        zzblVar.zzn(obj, zzbjVar);
        int zzd = zzbjVar.zzd(j10);
        if (zzd == -1) {
            return new zzvh(obj, j11, zzbjVar.zzc(j10));
        }
        return new zzvh(obj, zzd, zzbjVar.zze(zzd), j11);
    }

    private final void zzI() {
        final zzvh zzvhVar;
        int i10 = zzfyq.zzd;
        final zzfyn zzfynVar = new zzfyn();
        for (zzlc zzlcVar = this.zzi; zzlcVar != null; zzlcVar = zzlcVar.zzg()) {
            zzfynVar.zzf(zzlcVar.zzg.zza);
        }
        zzlc zzlcVar2 = this.zzj;
        if (zzlcVar2 == null) {
            zzvhVar = null;
        } else {
            zzvhVar = zzlcVar2.zzg.zza;
        }
        this.zzd.zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzle
            @Override // java.lang.Runnable
            public final void run() {
                zzlf.this.zzc.zzU(zzfynVar.zzi(), zzvhVar);
            }
        });
    }

    private final boolean zzJ(zzbl zzblVar, zzvh zzvhVar, boolean z10) {
        int zza = zzblVar.zza(zzvhVar.zza);
        zzbj zzbjVar = this.zza;
        int i10 = zzblVar.zzd(zza, zzbjVar, false).zzc;
        zzbk zzbkVar = this.zzb;
        if (zzblVar.zze(i10, zzbkVar, 0L).zzi || zzblVar.zzi(zza, zzbjVar, zzbkVar, this.zzf, this.zzg) != -1 || !z10) {
            return false;
        }
        return true;
    }

    private final boolean zzK(zzbl zzblVar, zzvh zzvhVar) {
        if (!zzL(zzvhVar)) {
            return false;
        }
        Object obj = zzvhVar.zza;
        int i10 = zzblVar.zzn(obj, this.zza).zzc;
        if (zzblVar.zze(i10, this.zzb, 0L).zzo != zzblVar.zza(obj)) {
            return false;
        }
        return true;
    }

    private static final boolean zzL(zzvh zzvhVar) {
        if (!zzvhVar.zzb() && zzvhVar.zze == -1) {
            return true;
        }
        return false;
    }

    public final int zza(zzlc zzlcVar) {
        zzdd.zzb(zzlcVar);
        int i10 = 0;
        if (zzlcVar.equals(this.zzl)) {
            return 0;
        }
        this.zzl = zzlcVar;
        while (zzlcVar.zzg() != null) {
            zzlcVar = zzlcVar.zzg();
            zzlcVar.getClass();
            if (zzlcVar == this.zzj) {
                zzlc zzlcVar2 = this.zzi;
                this.zzj = zzlcVar2;
                this.zzk = zzlcVar2;
                i10 = 3;
            }
            if (zzlcVar == this.zzk) {
                this.zzk = this.zzj;
                i10 |= 2;
            }
            zzlcVar.zzo();
            this.zzn--;
        }
        zzlc zzlcVar3 = this.zzl;
        zzlcVar3.getClass();
        zzlcVar3.zzp(null);
        zzI();
        return i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a2, code lost:
        return zza(r3);
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0081 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzbl r16, long r17, long r19, long r21) {
        /*
            r15 = this;
            r0 = r15
            r1 = r16
            com.google.android.gms.internal.ads.zzlc r2 = r0.zzi
            r3 = 0
        L6:
            r4 = 0
            if (r2 == 0) goto La3
            com.google.android.gms.internal.ads.zzld r5 = r2.zzg
            if (r3 != 0) goto L14
            com.google.android.gms.internal.ads.zzld r3 = r15.zzp(r1, r5)
            r6 = r17
            goto L2f
        L14:
            r6 = r17
            com.google.android.gms.internal.ads.zzld r8 = r15.zzD(r1, r3, r6)
            if (r8 == 0) goto L9e
            long r9 = r5.zzb
            long r11 = r8.zzb
            int r9 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r9 != 0) goto L9e
            com.google.android.gms.internal.ads.zzvh r9 = r5.zza
            com.google.android.gms.internal.ads.zzvh r10 = r8.zza
            boolean r9 = r9.equals(r10)
            if (r9 == 0) goto L9e
            r3 = r8
        L2f:
            long r8 = r5.zzc
            com.google.android.gms.internal.ads.zzld r8 = r3.zza(r8)
            r2.zzg = r8
            long r8 = r5.zze
            long r10 = r3.zze
            int r3 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r3 == 0) goto L95
            r2.zzr()
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r1 = (r10 > r5 ? 1 : (r10 == r5 ? 0 : -1))
            if (r1 != 0) goto L51
            r10 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            goto L56
        L51:
            long r12 = r2.zze()
            long r10 = r10 + r12
        L56:
            com.google.android.gms.internal.ads.zzlc r1 = r0.zzj
            r12 = -9223372036854775808
            r3 = 1
            if (r2 != r1) goto L6b
            com.google.android.gms.internal.ads.zzld r1 = r2.zzg
            boolean r1 = r1.zzg
            int r1 = (r19 > r12 ? 1 : (r19 == r12 ? 0 : -1))
            if (r1 == 0) goto L69
            int r1 = (r19 > r10 ? 1 : (r19 == r10 ? 0 : -1))
            if (r1 < 0) goto L6b
        L69:
            r1 = r3
            goto L6c
        L6b:
            r1 = r4
        L6c:
            com.google.android.gms.internal.ads.zzlc r7 = r0.zzk
            if (r2 != r7) goto L7a
            int r7 = (r21 > r12 ? 1 : (r21 == r12 ? 0 : -1))
            if (r7 == 0) goto L78
            int r7 = (r21 > r10 ? 1 : (r21 == r10 ? 0 : -1))
            if (r7 < 0) goto L7a
        L78:
            r7 = r3
            goto L7b
        L7a:
            r7 = r4
        L7b:
            int r2 = r15.zza(r2)
            if (r2 == 0) goto L82
            return r2
        L82:
            int r2 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
            if (r2 != 0) goto L87
            r8 = r5
        L87:
            if (r1 == 0) goto L8f
            int r1 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
            if (r1 != 0) goto L8e
            goto L8f
        L8e:
            r4 = r3
        L8f:
            if (r7 == 0) goto L94
            r1 = r4 | 2
            return r1
        L94:
            return r4
        L95:
            com.google.android.gms.internal.ads.zzlc r3 = r2.zzg()
            r14 = r3
            r3 = r2
            r2 = r14
            goto L6
        L9e:
            int r1 = r15.zza(r3)
            return r1
        La3:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlf.zzb(com.google.android.gms.internal.ads.zzbl, long, long, long):int");
    }

    public final int zzc(zzbl zzblVar, int i10) {
        this.zzf = i10;
        return zzA(zzblVar);
    }

    public final int zzd(zzbl zzblVar, boolean z10) {
        this.zzg = z10;
        return zzA(zzblVar);
    }

    @Nullable
    public final zzlc zze() {
        zzlc zzlcVar = this.zzi;
        if (zzlcVar == null) {
            return null;
        }
        if (zzlcVar == this.zzj) {
            this.zzj = zzlcVar.zzg();
        }
        if (zzlcVar == this.zzk) {
            this.zzk = zzlcVar.zzg();
        }
        zzlcVar.zzo();
        int i10 = this.zzn - 1;
        this.zzn = i10;
        if (i10 == 0) {
            this.zzl = null;
            zzlc zzlcVar2 = this.zzi;
            this.zzo = zzlcVar2.zzb;
            this.zzp = zzlcVar2.zzg.zza.zzd;
        }
        this.zzi = this.zzi.zzg();
        zzI();
        return this.zzi;
    }

    public final zzlc zzf() {
        zzlc zzlcVar = this.zzk;
        zzdd.zzb(zzlcVar);
        this.zzk = zzlcVar.zzg();
        zzI();
        zzlc zzlcVar2 = this.zzk;
        zzdd.zzb(zzlcVar2);
        return zzlcVar2;
    }

    public final zzlc zzg() {
        zzlc zzlcVar = this.zzk;
        zzlc zzlcVar2 = this.zzj;
        if (zzlcVar == zzlcVar2) {
            zzdd.zzb(zzlcVar2);
            this.zzk = zzlcVar2.zzg();
        }
        zzlc zzlcVar3 = this.zzj;
        zzdd.zzb(zzlcVar3);
        this.zzj = zzlcVar3.zzg();
        zzI();
        zzlc zzlcVar4 = this.zzj;
        zzdd.zzb(zzlcVar4);
        return zzlcVar4;
    }

    public final zzlc zzh(zzld zzldVar) {
        long zze;
        zzlc zzlcVar;
        zzlc zzlcVar2 = this.zzl;
        if (zzlcVar2 == null) {
            zze = 1000000000000L;
        } else {
            zze = (zzlcVar2.zze() + zzlcVar2.zzg.zze) - zzldVar.zzb;
        }
        int i10 = 0;
        while (true) {
            if (i10 < this.zzq.size()) {
                zzld zzldVar2 = ((zzlc) this.zzq.get(i10)).zzg;
                long j10 = zzldVar2.zze;
                long j11 = zzldVar.zze;
                if ((j10 == -9223372036854775807L || j10 == j11) && zzldVar2.zzb == zzldVar.zzb && zzldVar2.zza.equals(zzldVar.zza)) {
                    zzlcVar = (zzlc) this.zzq.remove(i10);
                    break;
                }
                i10++;
            } else {
                zzlcVar = null;
                break;
            }
        }
        if (zzlcVar == null) {
            zzlcVar = zzkt.zzg(this.zzr.zza, zzldVar, zze);
        } else {
            zzlcVar.zzg = zzldVar;
            zzlcVar.zzq(zze);
        }
        zzlc zzlcVar3 = this.zzl;
        if (zzlcVar3 != null) {
            zzlcVar3.zzp(zzlcVar);
        } else {
            this.zzi = zzlcVar;
            this.zzj = zzlcVar;
            this.zzk = zzlcVar;
        }
        this.zzo = null;
        this.zzl = zzlcVar;
        this.zzn++;
        zzI();
        return zzlcVar;
    }

    @Nullable
    public final zzlc zzi() {
        return this.zzl;
    }

    @Nullable
    public final zzlc zzj() {
        return this.zzi;
    }

    @Nullable
    public final zzlc zzk(zzvf zzvfVar) {
        for (int i10 = 0; i10 < this.zzq.size(); i10++) {
            zzlc zzlcVar = (zzlc) this.zzq.get(i10);
            if (zzlcVar.zza == zzvfVar) {
                return zzlcVar;
            }
        }
        return null;
    }

    @Nullable
    public final zzlc zzl() {
        return this.zzm;
    }

    @Nullable
    public final zzlc zzm() {
        return this.zzk;
    }

    @Nullable
    public final zzlc zzn() {
        return this.zzj;
    }

    @Nullable
    public final zzld zzo(long j10, zzls zzlsVar) {
        zzlc zzlcVar = this.zzl;
        if (zzlcVar == null) {
            return zzE(zzlsVar.zza, zzlsVar.zzb, zzlsVar.zzc, zzlsVar.zzs);
        }
        return zzD(zzlsVar.zza, zzlcVar, j10);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzld zzp(com.google.android.gms.internal.ads.zzbl r22, com.google.android.gms.internal.ads.zzld r23) {
        /*
            r21 = this;
            r0 = r21
            r1 = r22
            r2 = r23
            com.google.android.gms.internal.ads.zzvh r3 = r2.zza
            boolean r13 = zzL(r3)
            boolean r14 = r0.zzK(r1, r3)
            boolean r15 = r0.zzJ(r1, r3, r13)
            java.lang.Object r4 = r3.zza
            com.google.android.gms.internal.ads.zzbj r5 = r0.zza
            r1.zzn(r4, r5)
            boolean r1 = r3.zzb()
            r4 = -1
            r6 = 0
            r8 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r1 != 0) goto L2d
            int r1 = r3.zze
            if (r1 != r4) goto L2f
        L2d:
            r10 = r8
            goto L33
        L2f:
            r5.zzg(r1)
            r10 = r6
        L33:
            boolean r1 = r3.zzb()
            if (r1 == 0) goto L47
            int r1 = r3.zzb
            int r6 = r3.zzc
            long r6 = r5.zzf(r1, r6)
        L41:
            r19 = r6
            r7 = r10
            r9 = r19
            goto L51
        L47:
            int r1 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
            if (r1 == 0) goto L4e
            r9 = r6
            r7 = r9
            goto L51
        L4e:
            long r6 = r5.zzd
            goto L41
        L51:
            boolean r1 = r3.zzb()
            if (r1 == 0) goto L5d
            int r1 = r3.zzb
            r5.zzk(r1)
            goto L64
        L5d:
            int r1 = r3.zze
            if (r1 == r4) goto L64
            r5.zzk(r1)
        L64:
            com.google.android.gms.internal.ads.zzld r16 = new com.google.android.gms.internal.ads.zzld
            long r4 = r2.zzb
            long r11 = r2.zzc
            r17 = 0
            r18 = 0
            r1 = r16
            r2 = r3
            r3 = r4
            r5 = r11
            r11 = r17
            r12 = r18
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13, r14, r15)
            return r16
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlf.zzp(com.google.android.gms.internal.ads.zzbl, com.google.android.gms.internal.ads.zzld):com.google.android.gms.internal.ads.zzld");
    }

    public final zzvh zzq(zzbl zzblVar, Object obj, long j10) {
        long zzC;
        int zza;
        zzbj zzbjVar = this.zza;
        int i10 = zzblVar.zzn(obj, zzbjVar).zzc;
        Object obj2 = this.zzo;
        if (obj2 != null && (zza = zzblVar.zza(obj2)) != -1 && zzblVar.zzd(zza, zzbjVar, false).zzc == i10) {
            zzC = this.zzp;
        } else {
            zzlc zzlcVar = this.zzi;
            while (true) {
                if (zzlcVar != null) {
                    if (zzlcVar.zzb.equals(obj)) {
                        zzC = zzlcVar.zzg.zza.zzd;
                        break;
                    }
                    zzlcVar = zzlcVar.zzg();
                } else {
                    zzlc zzlcVar2 = this.zzi;
                    while (true) {
                        if (zzlcVar2 != null) {
                            int zza2 = zzblVar.zza(zzlcVar2.zzb);
                            if (zza2 != -1 && zzblVar.zzd(zza2, zzbjVar, false).zzc == i10) {
                                zzC = zzlcVar2.zzg.zza.zzd;
                                break;
                            }
                            zzlcVar2 = zzlcVar2.zzg();
                        } else {
                            zzC = zzC(obj);
                            if (zzC == -1) {
                                zzC = this.zze;
                                this.zze = 1 + zzC;
                                if (this.zzi == null) {
                                    this.zzo = obj;
                                    this.zzp = zzC;
                                }
                            }
                        }
                    }
                }
            }
        }
        long j11 = zzC;
        zzblVar.zzn(obj, zzbjVar);
        int i11 = zzbjVar.zzc;
        zzbk zzbkVar = this.zzb;
        zzblVar.zze(i11, zzbkVar, 0L);
        Object obj3 = obj;
        for (int zza3 = zzblVar.zza(obj); zza3 >= zzbkVar.zzn; zza3--) {
            zzblVar.zzd(zza3, zzbjVar, true);
            zzbjVar.zzb();
            if (zzbjVar.zzd(zzbjVar.zzd) != -1) {
                Object obj4 = zzbjVar.zzb;
                obj4.getClass();
                obj3 = obj4;
            }
        }
        return zzH(zzblVar, obj3, j10, j11, zzbkVar, zzbjVar);
    }

    public final void zzs() {
        if (this.zzn == 0) {
            return;
        }
        zzlc zzlcVar = this.zzi;
        zzdd.zzb(zzlcVar);
        this.zzo = zzlcVar.zzb;
        this.zzp = zzlcVar.zzg.zza.zzd;
        while (zzlcVar != null) {
            zzlcVar.zzo();
            zzlcVar = zzlcVar.zzg();
        }
        this.zzi = null;
        this.zzl = null;
        this.zzj = null;
        this.zzk = null;
        this.zzn = 0;
        zzI();
    }

    public final void zzt() {
        zzlc zzlcVar = this.zzm;
        if (zzlcVar == null || zzlcVar.zzt()) {
            this.zzm = null;
            for (int i10 = 0; i10 < this.zzq.size(); i10++) {
                zzlc zzlcVar2 = (zzlc) this.zzq.get(i10);
                if (!zzlcVar2.zzt()) {
                    this.zzm = zzlcVar2;
                    return;
                }
            }
        }
    }

    public final void zzu(long j10) {
        zzlc zzlcVar = this.zzl;
        if (zzlcVar != null) {
            zzlcVar.zzn(j10);
        }
    }

    public final void zzv() {
        if (!this.zzq.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < this.zzq.size(); i10++) {
                ((zzlc) this.zzq.get(i10)).zzo();
            }
            this.zzq = arrayList;
            this.zzm = null;
            zzt();
        }
    }

    public final void zzw(zzbl zzblVar, zzix zzixVar) {
        this.zzh = zzixVar;
        long j10 = zzixVar.zzb;
        zzv();
    }

    public final boolean zzx(zzvf zzvfVar) {
        zzlc zzlcVar = this.zzl;
        if (zzlcVar != null && zzlcVar.zza == zzvfVar) {
            return true;
        }
        return false;
    }

    public final boolean zzy(zzvf zzvfVar) {
        zzlc zzlcVar = this.zzm;
        if (zzlcVar != null && zzlcVar.zza == zzvfVar) {
            return true;
        }
        return false;
    }

    public final boolean zzz() {
        zzlc zzlcVar = this.zzl;
        if (zzlcVar == null) {
            return true;
        }
        if (zzlcVar.zzg.zzj || !zzlcVar.zzs() || this.zzl.zzg.zze == -9223372036854775807L) {
            return false;
        }
        if (this.zzn < 100) {
            return true;
        }
        return false;
    }
}
