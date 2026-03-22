package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzkt implements Handler.Callback, zzve, zzzc, zzlq, zzik, zzlu, zzia, zzabp {
    private static final long zza = zzex.zzv(10000);
    private boolean zzB;
    private boolean zzC;
    @Nullable
    private zzkr zzD;
    private zzls zzE;
    private zzkq zzF;
    private boolean zzG;
    private boolean zzI;
    private boolean zzJ;
    private boolean zzL;
    private boolean zzO;
    private int zzP;
    @Nullable
    private zzkr zzQ;
    private long zzR;
    private long zzS;
    private int zzT;
    private boolean zzU;
    @Nullable
    private zzin zzV;
    private zzix zzX;
    private boolean zzZ;
    private final zzjj zzab;
    private final zzig zzac;
    private final zzmf[] zzb;
    private final zzmd[] zzc;
    private final boolean[] zzd;
    private final zzzd zze;
    private final zzze zzf;
    private final zzkx zzg;
    private final zzzl zzh;
    private final zzdt zzi;
    private final zzlt zzj;
    private final Looper zzk;
    private final zzbk zzl;
    private final zzbj zzm;
    private final long zzn;
    private final zzil zzo;
    private final ArrayList zzp;
    private final zzdj zzq;
    private final zzlf zzr;
    private final zzlr zzs;
    private final long zzt;
    private final zzph zzu;
    private final zzmo zzv;
    private final zzdt zzw;
    private final boolean zzx;
    private final zzib zzy;
    private zzmi zzz;
    private long zzY = -9223372036854775807L;
    private int zzM = 0;
    private boolean zzN = false;
    private boolean zzH = false;
    private float zzaa = 1.0f;
    private zzmh zzA = zzmh.zza;
    private long zzW = -9223372036854775807L;
    private long zzK = -9223372036854775807L;

    public zzkt(Context context, zzma[] zzmaVarArr, zzma[] zzmaVarArr2, zzzd zzzdVar, zzze zzzeVar, zzkx zzkxVar, zzzl zzzlVar, int i10, boolean z10, zzmo zzmoVar, zzmi zzmiVar, zzig zzigVar, long j10, boolean z11, boolean z12, Looper looper, zzdj zzdjVar, zzjj zzjjVar, zzph zzphVar, @Nullable zzlt zzltVar, zzix zzixVar, final zzabp zzabpVar) {
        this.zzab = zzjjVar;
        this.zze = zzzdVar;
        this.zzf = zzzeVar;
        this.zzg = zzkxVar;
        this.zzh = zzzlVar;
        int i11 = 0;
        this.zzz = zzmiVar;
        this.zzac = zzigVar;
        this.zzt = j10;
        this.zzq = zzdjVar;
        this.zzu = zzphVar;
        this.zzX = zzixVar;
        this.zzv = zzmoVar;
        this.zzn = zzkxVar.zzb(zzphVar);
        zzkxVar.zzg(zzphVar);
        zzbl zzblVar = zzbl.zza;
        zzls zzh = zzls.zzh(zzzeVar);
        this.zzE = zzh;
        this.zzF = new zzkq(zzh);
        int length = zzmaVarArr.length;
        this.zzc = new zzmd[2];
        this.zzd = new boolean[2];
        zzmc zze = zzzdVar.zze();
        this.zzb = new zzmf[2];
        boolean z13 = false;
        for (int i12 = 2; i11 < i12; i12 = 2) {
            zzmaVarArr[i11].zzw(i11, zzphVar, zzdjVar);
            this.zzc[i11] = zzmaVarArr[i11].zzn();
            this.zzc[i11].zzM(zze);
            zzma zzmaVar = zzmaVarArr2[i11];
            if (zzmaVar != null) {
                zzmaVar.zzw(i11, zzphVar, zzdjVar);
                z13 = true;
            }
            this.zzb[i11] = new zzmf(zzmaVarArr[i11], zzmaVarArr2[i11], i11);
            i11++;
        }
        this.zzx = z13;
        this.zzo = new zzil(this, zzdjVar);
        this.zzp = new ArrayList();
        this.zzl = new zzbk();
        this.zzm = new zzbj();
        zzzdVar.zzr(this, zzzlVar);
        this.zzU = true;
        zzdt zzd = zzdjVar.zzd(looper, null);
        this.zzw = zzd;
        this.zzr = new zzlf(zzmoVar, zzd, new zzkk(this), zzixVar);
        this.zzs = new zzlr(this, zzmoVar, zzd, zzphVar);
        zzlt zzltVar2 = new zzlt(null);
        this.zzj = zzltVar2;
        Looper zza2 = zzltVar2.zza();
        this.zzk = zza2;
        zzdt zzd2 = zzdjVar.zzd(zza2, this);
        this.zzi = zzd2;
        this.zzy = new zzib(context, zza2, this);
        zzd2.zzc(35, new zzabp() { // from class: com.google.android.gms.internal.ads.zzkl
            @Override // com.google.android.gms.internal.ads.zzabp
            public final void zzcT(long j11, long j12, zzz zzzVar, MediaFormat mediaFormat) {
                zzkt.this.zzcT(j11, j12, zzzVar, mediaFormat);
            }
        }).zza();
    }

    private final long zzA(zzlc zzlcVar) {
        if (zzlcVar == null) {
            return 0L;
        }
        long zze = zzlcVar.zze();
        if (zzlcVar.zze) {
            int i10 = 0;
            while (true) {
                zzmf[] zzmfVarArr = this.zzb;
                if (i10 >= 2) {
                    break;
                }
                if (zzmfVarArr[i10].zzK(zzlcVar)) {
                    long zze2 = zzmfVarArr[i10].zze(zzlcVar);
                    if (zze2 == Long.MIN_VALUE) {
                        return Long.MIN_VALUE;
                    }
                    zze = Math.max(zze2, zze);
                }
                i10++;
            }
        }
        return zze;
    }

    private final long zzB() {
        return zzC(this.zzE.zzq);
    }

    private final long zzC(long j10) {
        zzlc zzi = this.zzr.zzi();
        if (zzi == null) {
            return 0L;
        }
        return Math.max(0L, j10 - (this.zzR - zzi.zze()));
    }

    private final long zzD(zzvh zzvhVar, long j10, boolean z10) throws zzin {
        boolean z11;
        zzlf zzlfVar = this.zzr;
        if (zzlfVar.zzj() != zzlfVar.zzn()) {
            z11 = true;
        } else {
            z11 = false;
        }
        return zzE(zzvhVar, j10, z11, z10);
    }

    private final long zzE(zzvh zzvhVar, long j10, boolean z10, boolean z11) throws zzin {
        zzan();
        zzav(false, true);
        if (z11 || this.zzE.zze == 3) {
            zzaj(2);
        }
        zzlf zzlfVar = this.zzr;
        zzlc zzj = zzlfVar.zzj();
        zzlc zzlcVar = zzj;
        while (zzlcVar != null && !zzvhVar.equals(zzlcVar.zzg.zza)) {
            zzlcVar = zzlcVar.zzg();
        }
        if (z10 || zzj != zzlcVar || (zzlcVar != null && zzlcVar.zze() + j10 < 0)) {
            zzK();
            if (zzlcVar != null) {
                while (zzlfVar.zzj() != zzlcVar) {
                    zzlfVar.zze();
                }
                zzlfVar.zza(zzlcVar);
                zzlcVar.zzq(1000000000000L);
                zzM();
                zzlcVar.zzh = true;
            }
        }
        zzJ();
        if (zzlcVar != null) {
            zzlfVar.zza(zzlcVar);
            if (!zzlcVar.zze) {
                zzlcVar.zzg = zzlcVar.zzg.zzb(j10);
            } else if (zzlcVar.zzf) {
                zzvf zzvfVar = zzlcVar.zza;
                j10 = zzvfVar.zze(j10);
                zzvfVar.zzh(j10 - this.zzn, false);
            }
            zzac(j10);
            zzT();
        } else {
            zzlfVar.zzs();
            zzac(j10);
        }
        zzP(false);
        this.zzi.zzj(2);
        return j10;
    }

    private final Pair zzF(zzbl zzblVar) {
        long j10 = 0;
        if (zzblVar.zzo()) {
            return Pair.create(zzls.zzi(), 0L);
        }
        int zzg = zzblVar.zzg(this.zzN);
        zzbk zzbkVar = this.zzl;
        zzbj zzbjVar = this.zzm;
        Pair zzl = zzblVar.zzl(zzbkVar, zzbjVar, zzg, -9223372036854775807L);
        zzvh zzq = this.zzr.zzq(zzblVar, zzl.first, 0L);
        long longValue = ((Long) zzl.second).longValue();
        if (zzq.zzb()) {
            zzblVar.zzn(zzq.zza, zzbjVar);
            if (zzq.zzc == zzbjVar.zze(zzq.zzb)) {
                zzbjVar.zzh();
            }
        } else {
            j10 = longValue;
        }
        return Pair.create(zzq, Long.valueOf(j10));
    }

    @Nullable
    private static Pair zzG(zzbl zzblVar, zzkr zzkrVar, boolean z10, int i10, boolean z11, zzbk zzbkVar, zzbj zzbjVar) {
        zzbl zzblVar2;
        Pair zzl;
        zzbl zzblVar3 = zzkrVar.zza;
        if (zzblVar.zzo()) {
            return null;
        }
        if (true == zzblVar3.zzo()) {
            zzblVar2 = zzblVar;
        } else {
            zzblVar2 = zzblVar3;
        }
        try {
            zzl = zzblVar2.zzl(zzbkVar, zzbjVar, zzkrVar.zzb, zzkrVar.zzc);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (zzblVar.equals(zzblVar2)) {
            return zzl;
        }
        if (zzblVar.zza(zzl.first) != -1) {
            if (zzblVar2.zzn(zzl.first, zzbjVar).zzf && zzblVar2.zze(zzbjVar.zzc, zzbkVar, 0L).zzn == zzblVar2.zza(zzl.first)) {
                return zzblVar.zzl(zzbkVar, zzbjVar, zzblVar.zzn(zzl.first, zzbjVar).zzc, zzkrVar.zzc);
            }
            return zzl;
        }
        int zzd = zzd(zzbkVar, zzbjVar, i10, z11, zzl.first, zzblVar2, zzblVar);
        if (zzd != -1) {
            return zzblVar.zzl(zzbkVar, zzbjVar, zzd, -9223372036854775807L);
        }
        return null;
    }

    @CheckResult
    private final zzls zzH(zzvh zzvhVar, long j10, long j11, long j12, boolean z10, int i10) {
        boolean z11;
        zzfyq zzfyqVar;
        zzxk zzxkVar;
        zzze zzzeVar;
        zzxk zzh;
        zzze zzi;
        zzfyq zzn;
        zzlc zzj;
        int i11 = 0;
        if (this.zzU || j10 != this.zzE.zzs || !zzvhVar.equals(this.zzE.zzb)) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.zzU = z11;
        zzab();
        zzls zzlsVar = this.zzE;
        zzxk zzxkVar2 = zzlsVar.zzh;
        zzze zzzeVar2 = zzlsVar.zzi;
        List list = zzlsVar.zzj;
        if (this.zzs.zzj()) {
            zzlf zzlfVar = this.zzr;
            zzlc zzj2 = zzlfVar.zzj();
            if (zzj2 == null) {
                zzh = zzxk.zza;
            } else {
                zzh = zzj2.zzh();
            }
            if (zzj2 == null) {
                zzi = this.zzf;
            } else {
                zzi = zzj2.zzi();
            }
            zzyw[] zzywVarArr = zzi.zzc;
            zzfyn zzfynVar = new zzfyn();
            boolean z12 = false;
            for (zzyw zzywVar : zzywVarArr) {
                if (zzywVar != null) {
                    zzav zzavVar = zzywVar.zza(0).zzl;
                    if (zzavVar == null) {
                        zzfynVar.zzf(new zzav(-9223372036854775807L, new zzau[0]));
                    } else {
                        zzfynVar.zzf(zzavVar);
                        z12 = true;
                    }
                }
            }
            if (z12) {
                zzn = zzfynVar.zzi();
            } else {
                zzn = zzfyq.zzn();
            }
            if (zzj2 != null) {
                zzld zzldVar = zzj2.zzg;
                if (zzldVar.zzc != j11) {
                    zzj2.zzg = zzldVar.zza(j11);
                }
            }
            if (zzlfVar.zzj() == zzlfVar.zzn() && (zzj = zzlfVar.zzj()) != null) {
                zzze zzi2 = zzj.zzi();
                while (true) {
                    zzmf[] zzmfVarArr = this.zzb;
                    if (i11 >= 2) {
                        break;
                    }
                    if (zzi2.zzb(i11)) {
                        if (zzmfVarArr[i11].zzb() != 1) {
                            break;
                        }
                        int i12 = zzi2.zzb[i11].zzb;
                    }
                    i11++;
                }
            }
            zzfyqVar = zzn;
            zzxkVar = zzh;
            zzzeVar = zzi;
        } else if (!zzvhVar.equals(this.zzE.zzb)) {
            zzzeVar = this.zzf;
            zzxkVar = zzxk.zza;
            zzfyqVar = zzfyq.zzn();
        } else {
            zzfyqVar = list;
            zzxkVar = zzxkVar2;
            zzzeVar = zzzeVar2;
        }
        if (z10) {
            this.zzF.zzc(i10);
        }
        return this.zzE.zzc(zzvhVar, j10, j11, j12, zzB(), zzxkVar, zzzeVar, zzfyqVar);
    }

    private final void zzI() throws zzin {
        zzmh zzmhVar;
        int i10 = 0;
        while (true) {
            zzmf[] zzmfVarArr = this.zzb;
            if (i10 < 2) {
                zzmf zzmfVar = zzmfVarArr[i10];
                if (this.zzB) {
                    zzmhVar = this.zzA;
                } else {
                    zzmhVar = null;
                }
                zzmfVar.zzv(zzmhVar);
                i10++;
            } else {
                return;
            }
        }
    }

    private final void zzJ() {
        if (this.zzx && zzaw()) {
            zzmf[] zzmfVarArr = this.zzb;
            for (int i10 = 0; i10 < 2; i10++) {
                zzmf zzmfVar = zzmfVarArr[i10];
                int zza2 = zzmfVar.zza();
                zzmfVar.zzg(this.zzo);
                this.zzP -= zza2 - zzmfVar.zza();
            }
            this.zzY = -9223372036854775807L;
        }
    }

    private final void zzK() throws zzin {
        int i10 = 0;
        while (true) {
            zzmf[] zzmfVarArr = this.zzb;
            if (i10 < 2) {
                int zza2 = zzmfVarArr[i10].zza();
                zzmfVarArr[i10].zzf(this.zzo);
                zzX(i10, false);
                this.zzP -= zza2;
                i10++;
            } else {
                this.zzY = -9223372036854775807L;
                return;
            }
        }
    }

    private final void zzL(zzlc zzlcVar, int i10, boolean z10, long j10) throws zzin {
        boolean z11;
        boolean z12;
        boolean z13;
        zzmf zzmfVar = this.zzb[i10];
        if (!zzmfVar.zzL()) {
            if (zzlcVar == this.zzr.zzj()) {
                z11 = true;
            } else {
                z11 = false;
            }
            zzze zzi = zzlcVar.zzi();
            zzme zzmeVar = zzi.zzb[i10];
            zzyw zzywVar = zzi.zzc[i10];
            if (zzaA() && this.zzE.zze == 3) {
                z12 = true;
            } else {
                z12 = false;
            }
            if (!z10 && z12) {
                z13 = true;
            } else {
                z13 = false;
            }
            this.zzP++;
            zzmfVar.zzh(zzmeVar, zzywVar, zzlcVar.zzc[i10], this.zzR, z13, z11, j10, zzlcVar.zze(), zzlcVar.zzg.zza, this.zzo);
            zzmfVar.zzj(11, new zzkm(this), zzlcVar);
            if (z12 && z11) {
                zzmfVar.zzA();
            }
        }
    }

    private final void zzM() throws zzin {
        zzN(new boolean[2], this.zzr.zzn().zzf());
    }

    private final void zzN(boolean[] zArr, long j10) throws zzin {
        zzmf[] zzmfVarArr;
        zzlc zzn = this.zzr.zzn();
        zzze zzi = zzn.zzi();
        int i10 = 0;
        while (true) {
            zzmfVarArr = this.zzb;
            if (i10 >= 2) {
                break;
            }
            if (!zzi.zzb(i10)) {
                zzmfVarArr[i10].zzq();
            }
            i10++;
        }
        for (int i11 = 0; i11 < 2; i11++) {
            if (zzi.zzb(i11) && !zzmfVarArr[i11].zzK(zzn)) {
                zzL(zzn, i11, zArr[i11], j10);
            }
        }
    }

    private final void zzO(IOException iOException, int i10) {
        zzlf zzlfVar = this.zzr;
        zzin zzc = zzin.zzc(iOException, i10);
        zzlc zzj = zzlfVar.zzj();
        if (zzj != null) {
            zzc = zzc.zza(zzj.zzg.zza);
        }
        zzea.zzd("ExoPlayerImplInternal", "Playback error", zzc);
        zzam(false, false);
        this.zzE = this.zzE.zze(zzc);
    }

    private final void zzP(boolean z10) {
        zzvh zzvhVar;
        long zzc;
        zzlc zzi = this.zzr.zzi();
        if (zzi == null) {
            zzvhVar = this.zzE.zzb;
        } else {
            zzvhVar = zzi.zzg.zza;
        }
        boolean equals = this.zzE.zzk.equals(zzvhVar);
        if (!equals) {
            this.zzE = this.zzE.zzb(zzvhVar);
        }
        zzls zzlsVar = this.zzE;
        if (zzi == null) {
            zzc = zzlsVar.zzs;
        } else {
            zzc = zzi.zzc();
        }
        zzlsVar.zzq = zzc;
        this.zzE.zzr = zzB();
        if ((!equals || z10) && zzi != null && zzi.zze) {
            zzap(zzi.zzg.zza, zzi.zzh(), zzi.zzi());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:194:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0375  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x039c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:214:0x03bd  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzQ(com.google.android.gms.internal.ads.zzbl r32, boolean r33) throws com.google.android.gms.internal.ads.zzin {
        /*
            Method dump skipped, instructions count: 1013
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkt.zzQ(com.google.android.gms.internal.ads.zzbl, boolean):void");
    }

    private final void zzR(zzbb zzbbVar, boolean z10) throws zzin {
        zzS(zzbbVar, zzbbVar.zzb, true, z10);
    }

    private final void zzS(zzbb zzbbVar, float f10, boolean z10, boolean z11) throws zzin {
        int i10;
        if (z10) {
            if (z11) {
                this.zzF.zza(1);
            }
            zzls zzlsVar = this.zzE;
            this.zzE = new zzls(zzlsVar.zza, zzlsVar.zzb, zzlsVar.zzc, zzlsVar.zzd, zzlsVar.zze, zzlsVar.zzf, zzlsVar.zzg, zzlsVar.zzh, zzlsVar.zzi, zzlsVar.zzj, zzlsVar.zzk, zzlsVar.zzl, zzlsVar.zzm, zzlsVar.zzn, zzbbVar, zzlsVar.zzq, zzlsVar.zzr, zzlsVar.zzs, zzlsVar.zzt, false);
        }
        float f11 = zzbbVar.zzb;
        zzlc zzj = this.zzr.zzj();
        while (true) {
            i10 = 0;
            if (zzj == null) {
                break;
            }
            zzyw[] zzywVarArr = zzj.zzi().zzc;
            int length = zzywVarArr.length;
            while (i10 < length) {
                zzyw zzywVar = zzywVarArr[i10];
                i10++;
            }
            zzj = zzj.zzg();
        }
        zzmf[] zzmfVarArr = this.zzb;
        while (i10 < 2) {
            zzmfVarArr[i10].zzu(f10, f11);
            i10++;
        }
    }

    private final void zzT() {
        long zze;
        long j10;
        long j11;
        zzlf zzlfVar;
        boolean zzh;
        zzlf zzlfVar2 = this.zzr;
        if (!zzaC(zzlfVar2.zzi())) {
            zzlfVar = zzlfVar2;
            zzh = false;
        } else {
            zzlc zzi = zzlfVar2.zzi();
            long zzC = zzC(zzi.zzd());
            if (zzi == zzlfVar2.zzj()) {
                zze = this.zzR;
                j10 = zzi.zze();
            } else {
                zze = this.zzR - zzi.zze();
                j10 = zzi.zzg.zzb;
            }
            long j12 = zze - j10;
            if (zzaB(this.zzE.zza, zzi.zzg.zza)) {
                j11 = this.zzac.zzb();
            } else {
                j11 = -9223372036854775807L;
            }
            zzlfVar = zzlfVar2;
            zzkw zzkwVar = new zzkw(this.zzu, this.zzE.zza, zzi.zzg.zza, j12, zzC, this.zzo.zzc().zzb, this.zzE.zzl, this.zzJ, j11, this.zzK);
            zzkx zzkxVar = this.zzg;
            zzh = zzkxVar.zzh(zzkwVar);
            zzlc zzj = zzlfVar.zzj();
            if (!zzh && zzj.zze && zzC < 500000 && this.zzn > 0) {
                zzj.zza.zzh(this.zzE.zzs, false);
                zzh = zzkxVar.zzh(zzkwVar);
            }
        }
        this.zzL = zzh;
        if (zzh) {
            zzlc zzi2 = zzlfVar.zzi();
            zzi2.getClass();
            zzky zzkyVar = new zzky();
            zzkyVar.zze(this.zzR - zzi2.zze());
            zzkyVar.zzf(this.zzo.zzc().zzb);
            zzkyVar.zzd(this.zzK);
            zzi2.zzk(new zzla(zzkyVar, null));
        }
        zzao();
    }

    private final void zzU() {
        long j10;
        zzlf zzlfVar = this.zzr;
        zzlfVar.zzt();
        zzlc zzl = zzlfVar.zzl();
        if (zzl != null) {
            if (!zzl.zzd || zzl.zze) {
                zzvf zzvfVar = zzl.zza;
                if (!zzvfVar.zzp()) {
                    zzkx zzkxVar = this.zzg;
                    zzbl zzblVar = this.zzE.zza;
                    zzvh zzvhVar = zzl.zzg.zza;
                    if (zzl.zze) {
                        j10 = zzvfVar.zzb();
                    } else {
                        j10 = 0;
                    }
                    if (zzkxVar.zzi(zzblVar, zzvhVar, j10)) {
                        if (!zzl.zzd) {
                            zzl.zzm(this, zzl.zzg.zzb);
                            return;
                        }
                        zzky zzkyVar = new zzky();
                        zzkyVar.zze(this.zzR - zzl.zze());
                        zzkyVar.zzf(this.zzo.zzc().zzb);
                        zzkyVar.zzd(this.zzK);
                        zzl.zzk(new zzla(zzkyVar, null));
                    }
                }
            }
        }
    }

    private final void zzV() {
        boolean z10;
        this.zzF.zzb(this.zzE);
        z10 = this.zzF.zze;
        if (z10) {
            zzjj zzjjVar = this.zzab;
            zzjjVar.zza.zzab(this.zzF);
            this.zzF = new zzkq(this.zzE);
        }
    }

    private final void zzW(int i10) throws IOException, zzin {
        zzmf zzmfVar = this.zzb[i10];
        try {
            zzlc zzj = this.zzr.zzj();
            if (zzj != null) {
                zzmfVar.zzn(zzj);
                return;
            }
            throw null;
        } catch (IOException e10) {
            e = e10;
            zzmfVar.zzb();
            throw e;
        } catch (RuntimeException e11) {
            e = e11;
            zzmfVar.zzb();
            throw e;
        }
    }

    private final void zzX(final int i10, final boolean z10) {
        boolean[] zArr = this.zzd;
        if (zArr[i10] != z10) {
            zArr[i10] = z10;
            this.zzw.zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzki
                @Override // java.lang.Runnable
                public final void run() {
                    r0.zzv.zzJ(r1, zzkt.this.zzb[i10].zzb(), z10);
                }
            });
        }
    }

    private final void zzY() throws zzin {
        zzze zzzeVar;
        int i10;
        boolean z10;
        boolean z11;
        boolean z12;
        zzil zzilVar = this.zzo;
        float f10 = zzilVar.zzc().zzb;
        zzlf zzlfVar = this.zzr;
        zzlc zzj = zzlfVar.zzj();
        zzlc zzn = zzlfVar.zzn();
        zzze zzzeVar2 = null;
        boolean z13 = true;
        while (zzj != null && zzj.zze) {
            zzls zzlsVar = this.zzE;
            zzze zzj2 = zzj.zzj(f10, zzlsVar.zza, zzlsVar.zzl);
            if (zzj == zzlfVar.zzj()) {
                zzzeVar = zzj2;
            } else {
                zzzeVar = zzzeVar2;
            }
            zzze zzi = zzj.zzi();
            boolean z14 = false;
            if (zzi != null) {
                zzyw[] zzywVarArr = zzj2.zzc;
                if (zzi.zzc.length == zzywVarArr.length) {
                    for (int i11 = 0; i11 < zzywVarArr.length; i11++) {
                        if (zzj2.zza(zzi, i11)) {
                        }
                    }
                    if (zzj != zzn) {
                        z14 = true;
                    }
                    z13 &= z14;
                    zzj = zzj.zzg();
                    zzzeVar2 = zzzeVar;
                }
            }
            if (z13) {
                zzlc zzj3 = zzlfVar.zzj();
                int zza2 = zzlfVar.zza(zzj3) & 1;
                zzmf[] zzmfVarArr = this.zzb;
                boolean[] zArr = new boolean[2];
                zzzeVar.getClass();
                if (1 != zza2) {
                    z11 = false;
                } else {
                    z11 = true;
                }
                long zzb = zzj3.zzb(zzzeVar, this.zzE.zzs, z11, zArr);
                zzls zzlsVar2 = this.zzE;
                if (zzlsVar2.zze != 4 && zzb != zzlsVar2.zzs) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                zzls zzlsVar3 = this.zzE;
                zzlc zzlcVar = zzj3;
                i10 = 2;
                this.zzE = zzH(zzlsVar3.zzb, zzb, zzlsVar3.zzc, zzlsVar3.zzd, z12, 5);
                if (z12) {
                    zzac(zzb);
                }
                zzJ();
                boolean[] zArr2 = new boolean[2];
                int i12 = 0;
                while (i12 < 2) {
                    int zza3 = zzmfVarArr[i12].zza();
                    zArr2[i12] = zzmfVarArr[i12].zzL();
                    zzlc zzlcVar2 = zzlcVar;
                    zzmfVarArr[i12].zzk(zzlcVar2.zzc[i12], zzilVar, this.zzR, zArr[i12]);
                    if (zza3 - zzmfVarArr[i12].zza() > 0) {
                        zzX(i12, false);
                    }
                    this.zzP -= zza3 - zzmfVarArr[i12].zza();
                    i12++;
                    zzlcVar = zzlcVar2;
                }
                zzN(zArr2, this.zzR);
                z10 = true;
                zzlcVar.zzh = true;
            } else {
                i10 = 2;
                zzlfVar.zza(zzj);
                if (zzj.zze) {
                    long max = Math.max(zzj.zzg.zzb, this.zzR - zzj.zze());
                    if (this.zzx && zzaw() && zzlfVar.zzm() == zzj) {
                        zzJ();
                    }
                    zzj.zza(zzj2, max, false);
                }
                z10 = true;
            }
            zzP(z10);
            if (this.zzE.zze != 4) {
                zzT();
                zzat();
                this.zzi.zzj(i10);
                return;
            }
            return;
        }
    }

    private final void zzZ() throws zzin {
        zzY();
        zzaf(true);
    }

    private final boolean zzaA() {
        zzls zzlsVar = this.zzE;
        if (zzlsVar.zzl && zzlsVar.zzn == 0) {
            return true;
        }
        return false;
    }

    private final boolean zzaB(zzbl zzblVar, zzvh zzvhVar) {
        if (!zzvhVar.zzb() && !zzblVar.zzo()) {
            int i10 = zzblVar.zzn(zzvhVar.zza, this.zzm).zzc;
            zzbk zzbkVar = this.zzl;
            zzblVar.zze(i10, zzbkVar, 0L);
            if (zzbkVar.zzb() && zzbkVar.zzi && zzbkVar.zzf != -9223372036854775807L) {
                return true;
            }
        }
        return false;
    }

    private static final boolean zzaC(@Nullable zzlc zzlcVar) {
        if (zzlcVar != null) {
            try {
                if (!zzlcVar.zze) {
                    zzlcVar.zza.zzi();
                } else {
                    zzwz[] zzwzVarArr = zzlcVar.zzc;
                    for (int i10 = 0; i10 < 2; i10++) {
                        zzwz zzwzVar = zzwzVarArr[i10];
                        if (zzwzVar != null) {
                            zzwzVar.zzd();
                        }
                    }
                }
                if (zzlcVar.zzd() != Long.MIN_VALUE) {
                    return true;
                }
            } catch (IOException unused) {
            }
        }
        return false;
    }

    private static final void zzaD(zzlw zzlwVar) throws zzin {
        zzlwVar.zzi();
        try {
            zzlwVar.zzc().zzv(zzlwVar.zza(), zzlwVar.zzg());
        } finally {
            zzlwVar.zzh(true);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0090, code lost:
        if (r2.equals(r34.zzE.zzb) == false) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzaa(boolean r35, boolean r36, boolean r37, boolean r38) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkt.zzaa(boolean, boolean, boolean, boolean):void");
    }

    private final void zzab() {
        zzlc zzj = this.zzr.zzj();
        boolean z10 = false;
        if (zzj != null && zzj.zzg.zzi && this.zzH) {
            z10 = true;
        }
        this.zzI = z10;
    }

    private final void zzac(long j10) throws zzin {
        zzlf zzlfVar;
        long zze;
        zzyw[] zzywVarArr;
        zzlc zzj = this.zzr.zzj();
        if (zzj == null) {
            zze = 1000000000000L;
        } else {
            zze = zzj.zze();
        }
        long j11 = j10 + zze;
        this.zzR = j11;
        this.zzo.zzf(j11);
        zzmf[] zzmfVarArr = this.zzb;
        for (int i10 = 0; i10 < 2; i10++) {
            zzmfVarArr[i10].zzr(zzj, this.zzR);
        }
        for (zzlc zzj2 = zzlfVar.zzj(); zzj2 != null; zzj2 = zzj2.zzg()) {
            for (zzyw zzywVar : zzj2.zzi().zzc) {
            }
        }
    }

    private final void zzad(zzbl zzblVar, zzbl zzblVar2) {
        if (zzblVar.zzo() && zzblVar2.zzo()) {
            return;
        }
        ArrayList arrayList = this.zzp;
        int size = arrayList.size() - 1;
        if (size < 0) {
            Collections.sort(arrayList);
            return;
        }
        Object obj = ((zzkp) arrayList.get(size)).zzb;
        String str = zzex.zza;
        throw null;
    }

    private final void zzae(long j10) {
        zzlc zzlcVar;
        long j11 = 1000;
        if (zzax()) {
            if (this.zzE.zze != 3) {
                j11 = zza;
            }
            if (zzaA()) {
                zzmf[] zzmfVarArr = this.zzb;
                for (int i10 = 0; i10 < 2; i10++) {
                    j11 = Math.min(j11, zzex.zzv(zzmfVarArr[i10].zzd(this.zzR, this.zzS)));
                }
                zzlf zzlfVar = this.zzr;
                if (zzlfVar.zzj() != null) {
                    zzlcVar = zzlfVar.zzj().zzg();
                } else {
                    zzlcVar = null;
                }
                if (zzlcVar != null) {
                    if (((float) this.zzR) + (((float) zzex.zzs(j11)) * this.zzE.zzo.zzb) >= ((float) zzlcVar.zzf())) {
                        j11 = Math.min(j11, zza);
                    }
                }
            }
        } else if (this.zzE.zze != 3 || zzaA()) {
            j11 = zza;
        }
        this.zzi.zzk(2, j10 + j11);
    }

    private final void zzaf(boolean z10) throws zzin {
        zzvh zzvhVar = this.zzr.zzj().zzg.zza;
        long zzE = zzE(zzvhVar, this.zzE.zzs, true, false);
        if (zzE != this.zzE.zzs) {
            zzls zzlsVar = this.zzE;
            this.zzE = zzH(zzvhVar, zzE, zzlsVar.zzc, zzlsVar.zzd, z10, 5);
        }
    }

    private final void zzag(zzkr zzkrVar, boolean z10) throws zzin {
        long longValue;
        long j10;
        boolean z11;
        zzvh zzvhVar;
        long j11;
        long j12;
        boolean z12;
        long zzD;
        boolean z13;
        long j13;
        zzls zzlsVar;
        int i10;
        this.zzF.zza(z10 ? 1 : 0);
        if (this.zzC) {
            this.zzD = zzkrVar;
            return;
        }
        zzbl zzblVar = this.zzE.zza;
        int i11 = this.zzM;
        boolean z14 = this.zzN;
        zzbk zzbkVar = this.zzl;
        zzbj zzbjVar = this.zzm;
        Pair zzG = zzG(zzblVar, zzkrVar, true, i11, z14, zzbkVar, zzbjVar);
        if (zzG == null) {
            Pair zzF = zzF(this.zzE.zza);
            zzvhVar = (zzvh) zzF.first;
            longValue = ((Long) zzF.second).longValue();
            z11 = !this.zzE.zza.zzo();
            j10 = -9223372036854775807L;
        } else {
            Object obj = zzG.first;
            longValue = ((Long) zzG.second).longValue();
            int i12 = (zzkrVar.zzc > (-9223372036854775807L) ? 1 : (zzkrVar.zzc == (-9223372036854775807L) ? 0 : -1));
            if (i12 == 0) {
                j10 = -9223372036854775807L;
            } else {
                j10 = longValue;
            }
            zzvh zzq = this.zzr.zzq(this.zzE.zza, obj, longValue);
            if (zzq.zzb()) {
                this.zzE.zza.zzn(zzq.zza, zzbjVar);
                if (zzbjVar.zze(zzq.zzb) == zzq.zzc) {
                    zzbjVar.zzh();
                }
                longValue = 0;
                zzvhVar = zzq;
                z11 = true;
            } else {
                if (i12 == 0) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                zzvhVar = zzq;
            }
        }
        try {
            if (this.zzE.zza.zzo()) {
                this.zzQ = zzkrVar;
            } else if (zzG == null) {
                if (this.zzE.zze != 1) {
                    zzaj(4);
                }
                zzaa(false, true, false, true);
            } else {
                try {
                    if (zzvhVar.equals(this.zzE.zzb)) {
                        zzlc zzj = this.zzr.zzj();
                        if (zzj != null && zzj.zze && longValue != 0) {
                            zzvf zzvfVar = zzj.zza;
                            long j14 = zzbkVar.zzm;
                            if (this.zzB && j14 != -9223372036854775807L) {
                                Double d10 = this.zzA.zzc;
                            }
                            j12 = zzvfVar.zza(longValue, this.zzz);
                        } else {
                            j12 = longValue;
                        }
                        if (zzex.zzv(j12) == zzex.zzv(this.zzE.zzs) && ((i10 = (zzlsVar = this.zzE).zze) == 2 || i10 == 3)) {
                            j13 = zzlsVar.zzs;
                            this.zzE = zzH(zzvhVar, j13, j10, j13, z11, 2);
                        }
                    } else {
                        j12 = longValue;
                    }
                    zzls zzlsVar2 = this.zzE;
                    zzbl zzblVar2 = zzlsVar2.zza;
                    zzau(zzblVar2, zzvhVar, zzblVar2, zzlsVar2.zzb, j10, true);
                    j13 = zzD;
                    this.zzE = zzH(zzvhVar, j13, j10, j13, z11, 2);
                } catch (Throwable th2) {
                    th = th2;
                    j11 = zzD;
                    this.zzE = zzH(zzvhVar, j11, j10, j11, z11, 2);
                    throw th;
                }
                this.zzC = this.zzB;
                if (this.zzE.zze == 4) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                zzD = zzD(zzvhVar, j12, z12);
                if (longValue != zzD) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                z11 |= z13;
            }
            j13 = longValue;
            this.zzE = zzH(zzvhVar, j13, j10, j13, z11, 2);
        } catch (Throwable th3) {
            th = th3;
            j11 = longValue;
        }
    }

    private final void zzah(zzbb zzbbVar) {
        this.zzi.zzg(16);
        this.zzo.zzg(zzbbVar);
    }

    private final void zzai(boolean z10, int i10, boolean z11, int i11) throws zzin {
        this.zzF.zza(z11 ? 1 : 0);
        zzar(z10, i10, i11);
    }

    private final void zzaj(int i10) {
        zzls zzlsVar = this.zzE;
        if (zzlsVar.zze != i10) {
            if (i10 != 2) {
                this.zzW = -9223372036854775807L;
            }
            this.zzE = zzlsVar.zzf(i10);
        }
    }

    private final void zzak(float f10) throws zzin {
        this.zzaa = f10;
        float zza2 = f10 * this.zzy.zza();
        int i10 = 0;
        while (true) {
            zzmf[] zzmfVarArr = this.zzb;
            if (i10 < 2) {
                zzmfVarArr[i10].zzz(zza2);
                i10++;
            } else {
                return;
            }
        }
    }

    private final void zzal() throws zzin {
        zzlc zzj = this.zzr.zzj();
        if (zzj != null) {
            zzze zzi = zzj.zzi();
            int i10 = 0;
            while (true) {
                zzmf[] zzmfVarArr = this.zzb;
                if (i10 < 2) {
                    if (zzi.zzb(i10)) {
                        zzmfVarArr[i10].zzA();
                    }
                    i10++;
                } else {
                    return;
                }
            }
        }
    }

    private final void zzam(boolean z10, boolean z11) {
        boolean z12;
        if (z10 || !this.zzO) {
            z12 = true;
        } else {
            z12 = false;
        }
        zzaa(z12, false, true, false);
        this.zzF.zza(z11 ? 1 : 0);
        this.zzg.zze(this.zzu);
        this.zzy.zzb(this.zzE.zzl, 1);
        zzaj(1);
    }

    private final void zzan() throws zzin {
        this.zzo.zzi();
        int i10 = 0;
        while (true) {
            zzmf[] zzmfVarArr = this.zzb;
            if (i10 < 2) {
                zzmfVarArr[i10].zzC();
                i10++;
            } else {
                return;
            }
        }
    }

    private final void zzao() {
        zzlc zzi = this.zzr.zzi();
        boolean z10 = true;
        if (!this.zzL && (zzi == null || !zzi.zza.zzp())) {
            z10 = false;
        }
        zzls zzlsVar = this.zzE;
        if (z10 != zzlsVar.zzg) {
            this.zzE = zzlsVar.zza(z10);
        }
    }

    private final void zzap(zzvh zzvhVar, zzxk zzxkVar, zzze zzzeVar) {
        long zze;
        long j10;
        long j11;
        zzlf zzlfVar = this.zzr;
        zzlc zzi = zzlfVar.zzi();
        zzi.getClass();
        if (zzi == zzlfVar.zzj()) {
            zze = this.zzR;
            j10 = zzi.zze();
        } else {
            zze = this.zzR - zzi.zze();
            j10 = zzi.zzg.zzb;
        }
        long j12 = zze - j10;
        long zzC = zzC(zzi.zzc());
        if (zzaB(this.zzE.zza, zzi.zzg.zza)) {
            j11 = this.zzac.zzb();
        } else {
            j11 = -9223372036854775807L;
        }
        this.zzg.zzf(new zzkw(this.zzu, this.zzE.zza, zzvhVar, j12, zzC, this.zzo.zzc().zzb, this.zzE.zzl, this.zzJ, j11, this.zzK), zzxkVar, zzzeVar.zzc);
    }

    private final void zzaq() throws zzin {
        zzls zzlsVar = this.zzE;
        zzar(zzlsVar.zzl, zzlsVar.zzn, zzlsVar.zzm);
    }

    private final void zzar(boolean z10, int i10, int i11) throws zzin {
        zzas(z10, this.zzy.zzb(z10, this.zzE.zze), i10, i11);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x000e  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0010  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0015  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzas(boolean r5, int r6, int r7, int r8) throws com.google.android.gms.internal.ads.zzin {
        /*
            r4 = this;
            r0 = -1
            r1 = 1
            r2 = 0
            if (r5 == 0) goto La
            if (r6 == r0) goto L9
            r5 = r1
            goto Lb
        L9:
            r6 = r0
        La:
            r5 = r2
        Lb:
            r3 = 2
            if (r6 != r0) goto L10
            r8 = r3
            goto L13
        L10:
            if (r8 != r3) goto L13
            r8 = r1
        L13:
            if (r6 != 0) goto L17
            r7 = r1
            goto L1a
        L17:
            if (r7 != r1) goto L1a
            r7 = r2
        L1a:
            com.google.android.gms.internal.ads.zzls r6 = r4.zzE
            boolean r0 = r6.zzl
            if (r0 != r5) goto L28
            int r0 = r6.zzn
            if (r0 != r7) goto L28
            int r0 = r6.zzm
            if (r0 == r8) goto L7f
        L28:
            com.google.android.gms.internal.ads.zzls r5 = r6.zzd(r5, r8, r7)
            r4.zzE = r5
            r4.zzav(r2, r2)
            com.google.android.gms.internal.ads.zzlf r5 = r4.zzr
            com.google.android.gms.internal.ads.zzlc r6 = r5.zzj()
        L37:
            if (r6 == 0) goto L4d
            com.google.android.gms.internal.ads.zzze r7 = r6.zzi()
            com.google.android.gms.internal.ads.zzyw[] r7 = r7.zzc
            int r8 = r7.length
            r0 = r2
        L41:
            if (r0 >= r8) goto L48
            r1 = r7[r0]
            int r0 = r0 + 1
            goto L41
        L48:
            com.google.android.gms.internal.ads.zzlc r6 = r6.zzg()
            goto L37
        L4d:
            boolean r6 = r4.zzaA()
            if (r6 != 0) goto L63
            r4.zzan()
            r4.zzat()
            com.google.android.gms.internal.ads.zzls r6 = r4.zzE
            boolean r6 = r6.zzp
            long r6 = r4.zzR
            r5.zzu(r6)
            return
        L63:
            com.google.android.gms.internal.ads.zzls r5 = r4.zzE
            int r5 = r5.zze
            r6 = 3
            if (r5 != r6) goto L78
            com.google.android.gms.internal.ads.zzil r5 = r4.zzo
            r5.zzh()
            r4.zzal()
            com.google.android.gms.internal.ads.zzdt r5 = r4.zzi
            r5.zzj(r3)
            return
        L78:
            if (r5 != r3) goto L7f
            com.google.android.gms.internal.ads.zzdt r5 = r4.zzi
            r5.zzj(r3)
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkt.zzas(boolean, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b9 A[LOOP:0: B:32:0x00a9->B:39:0x00b9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c5 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00c6 -> B:32:0x00a9). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzat() throws com.google.android.gms.internal.ads.zzin {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkt.zzat():void");
    }

    private final void zzau(zzbl zzblVar, zzvh zzvhVar, zzbl zzblVar2, zzvh zzvhVar2, long j10, boolean z10) throws zzin {
        Object obj;
        zzbb zzbbVar;
        if (!zzaB(zzblVar, zzvhVar)) {
            if (zzvhVar.zzb()) {
                zzbbVar = zzbb.zza;
            } else {
                zzbbVar = this.zzE.zzo;
            }
            if (!this.zzo.zzc().equals(zzbbVar)) {
                zzah(zzbbVar);
                zzS(this.zzE.zzo, zzbbVar.zzb, false, false);
                return;
            }
            return;
        }
        Object obj2 = zzvhVar.zza;
        zzbj zzbjVar = this.zzm;
        int i10 = zzblVar.zzn(obj2, zzbjVar).zzc;
        zzbk zzbkVar = this.zzl;
        zzblVar.zze(i10, zzbkVar, 0L);
        zzig zzigVar = this.zzac;
        zzaj zzajVar = zzbkVar.zzj;
        String str = zzex.zza;
        zzigVar.zzd(zzajVar);
        if (j10 != -9223372036854775807L) {
            zzigVar.zze(zzz(zzblVar, obj2, j10));
            return;
        }
        Object obj3 = zzbkVar.zzb;
        if (!zzblVar2.zzo()) {
            obj = zzblVar2.zze(zzblVar2.zzn(zzvhVar2.zza, zzbjVar).zzc, zzbkVar, 0L).zzb;
        } else {
            obj = null;
        }
        if (Objects.equals(obj, obj3) && !z10) {
            return;
        }
        zzigVar.zze(-9223372036854775807L);
    }

    private final void zzav(boolean z10, boolean z11) {
        this.zzJ = z10;
        long j10 = -9223372036854775807L;
        if (z10 && !z11) {
            j10 = SystemClock.elapsedRealtime();
        }
        this.zzK = j10;
    }

    private final boolean zzaw() {
        if (!this.zzx) {
            return false;
        }
        zzmf[] zzmfVarArr = this.zzb;
        for (int i10 = 0; i10 < 2; i10++) {
            if (zzmfVarArr[i10].zzI()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zzax() {
        if (this.zzB) {
            boolean z10 = this.zzA.zzg;
            return true;
        }
        return false;
    }

    private final boolean zzay() {
        zzlc zzj = this.zzr.zzj();
        long j10 = zzj.zzg.zze;
        if (!zzj.zze) {
            return false;
        }
        if (j10 == -9223372036854775807L || this.zzE.zzs < j10) {
            return true;
        }
        if (zzaA()) {
            return false;
        }
        return true;
    }

    private static boolean zzaz(zzls zzlsVar, zzbj zzbjVar) {
        zzvh zzvhVar = zzlsVar.zzb;
        zzbl zzblVar = zzlsVar.zza;
        if (!zzblVar.zzo() && !zzblVar.zzn(zzvhVar.zza, zzbjVar).zzf) {
            return false;
        }
        return true;
    }

    static int zzd(zzbk zzbkVar, zzbj zzbjVar, int i10, boolean z10, Object obj, zzbl zzblVar, zzbl zzblVar2) {
        Object obj2 = zzblVar.zze(zzblVar.zzn(obj, zzbjVar).zzc, zzbkVar, 0L).zzb;
        for (int i11 = 0; i11 < zzblVar2.zzc(); i11++) {
            if (zzblVar2.zze(i11, zzbkVar, 0L).zzb.equals(obj2)) {
                return i11;
            }
        }
        int zza2 = zzblVar.zza(obj);
        int zzb = zzblVar.zzb();
        int i12 = zza2;
        int i13 = 0;
        int i14 = -1;
        while (true) {
            if (i13 >= zzb || i14 != -1) {
                break;
            }
            i12 = zzblVar.zzi(i12, zzbjVar, zzbkVar, i10, z10);
            if (i12 == -1) {
                i14 = -1;
                break;
            }
            i14 = zzblVar2.zza(zzblVar.zzf(i12));
            i13++;
        }
        if (i14 == -1) {
            return -1;
        }
        return zzblVar2.zzd(i14, zzbjVar, false).zzc;
    }

    public static /* synthetic */ zzlc zzg(zzkt zzktVar, zzld zzldVar, long j10) {
        zzzm zzk = zzktVar.zzg.zzk();
        long j11 = zzktVar.zzX.zzb;
        zzze zzzeVar = zzktVar.zzf;
        zzlr zzlrVar = zzktVar.zzs;
        return new zzlc(zzktVar.zzc, j10, zzktVar.zze, zzk, zzlrVar, zzldVar, zzzeVar, -9223372036854775807L);
    }

    public static /* synthetic */ void zzh(zzkt zzktVar, zzlw zzlwVar) {
        try {
            zzaD(zzlwVar);
        } catch (zzin e10) {
            zzea.zzd("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e10);
            throw new RuntimeException(e10);
        }
    }

    private final long zzz(zzbl zzblVar, Object obj, long j10) {
        long elapsedRealtime;
        int i10 = zzblVar.zzn(obj, this.zzm).zzc;
        zzbk zzbkVar = this.zzl;
        zzblVar.zze(i10, zzbkVar, 0L);
        if (zzbkVar.zzf == -9223372036854775807L || !zzbkVar.zzb() || !zzbkVar.zzi) {
            return -9223372036854775807L;
        }
        long j11 = zzbkVar.zzg;
        String str = zzex.zza;
        if (j11 == -9223372036854775807L) {
            elapsedRealtime = System.currentTimeMillis();
        } else {
            elapsedRealtime = j11 + SystemClock.elapsedRealtime();
        }
        return zzex.zzs(elapsedRealtime - zzbkVar.zzf) - j10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:297:0x063d, code lost:
        if (r6.zza.zzd() != (-9223372036854775807L)) goto L577;
     */
    /* JADX WARN: Code restructure failed: missing block: B:501:0x09c2, code lost:
        if (r1 != false) goto L458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:514:0x09f4, code lost:
        if (r8 == false) goto L469;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:261:0x058b A[Catch: IOException -> 0x002a, zzuh -> 0x002e, zzgk -> 0x0032, zzaz -> 0x0036, zzsa -> 0x003a, RuntimeException -> 0x06b4, zzin -> 0x084d, TRY_LEAVE, TryCatch #17 {RuntimeException -> 0x06b4, blocks: (B:3:0x000b, B:197:0x0464, B:199:0x0477, B:202:0x048a, B:216:0x04cc, B:221:0x04e1, B:258:0x0579, B:261:0x058b, B:263:0x0591, B:266:0x05a1, B:269:0x05aa, B:274:0x05b9, B:278:0x05c9, B:283:0x05df, B:220:0x04de), top: B:660:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:321:0x06a3 A[Catch: IOException -> 0x002a, zzuh -> 0x002e, zzgk -> 0x0032, zzaz -> 0x0036, zzsa -> 0x003a, RuntimeException -> 0x0629, zzin -> 0x062d, TRY_LEAVE, TryCatch #9 {zzin -> 0x062d, blocks: (B:358:0x071f, B:285:0x0617, B:287:0x061e, B:289:0x0622, B:298:0x063f, B:300:0x0643, B:304:0x064b, B:306:0x0651, B:308:0x066e, B:311:0x0677, B:321:0x06a3, B:313:0x067d, B:315:0x0685, B:316:0x068e, B:318:0x0694, B:296:0x0635, B:329:0x06c8, B:334:0x06d2, B:337:0x06db, B:339:0x06e1, B:343:0x06ef, B:345:0x06f6), top: B:656:0x057d }] */
    /* JADX WARN: Removed duplicated region for block: B:349:0x0703 A[Catch: IOException -> 0x002a, zzuh -> 0x002e, zzgk -> 0x0032, zzaz -> 0x0036, zzsa -> 0x003a, RuntimeException -> 0x0629, zzin -> 0x0773, TryCatch #6 {zzin -> 0x0773, blocks: (B:347:0x06fd, B:349:0x0703, B:351:0x0709, B:354:0x0710, B:355:0x071a, B:327:0x06c2, B:331:0x06cc), top: B:654:0x06c2 }] */
    /* JADX WARN: Removed duplicated region for block: B:358:0x071f A[Catch: IOException -> 0x002a, zzuh -> 0x002e, zzgk -> 0x0032, zzaz -> 0x0036, zzsa -> 0x003a, RuntimeException -> 0x0629, zzin -> 0x062d, TRY_ENTER, TRY_LEAVE, TryCatch #9 {zzin -> 0x062d, blocks: (B:358:0x071f, B:285:0x0617, B:287:0x061e, B:289:0x0622, B:298:0x063f, B:300:0x0643, B:304:0x064b, B:306:0x0651, B:308:0x066e, B:311:0x0677, B:321:0x06a3, B:313:0x067d, B:315:0x0685, B:316:0x068e, B:318:0x0694, B:296:0x0635, B:329:0x06c8, B:334:0x06d2, B:337:0x06db, B:339:0x06e1, B:343:0x06ef, B:345:0x06f6), top: B:656:0x057d }] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0781 A[Catch: IOException -> 0x002a, zzuh -> 0x002e, zzgk -> 0x0032, zzaz -> 0x0036, zzsa -> 0x003a, RuntimeException -> 0x0629, zzin -> 0x0760, TryCatch #18 {zzin -> 0x0760, blocks: (B:363:0x0745, B:365:0x074b, B:367:0x0753, B:370:0x0768, B:371:0x076b, B:375:0x0777, B:423:0x0848, B:427:0x0856, B:432:0x0863, B:434:0x086b, B:435:0x0871, B:437:0x087f, B:438:0x0899, B:440:0x089d, B:442:0x08a5, B:457:0x08cf, B:443:0x08a9, B:445:0x08b2, B:449:0x08bb, B:455:0x08cb, B:459:0x08dc, B:461:0x08e2, B:465:0x08ef, B:467:0x08f7, B:469:0x08fb, B:470:0x0906, B:472:0x090c, B:525:0x0a27, B:528:0x0a2e, B:530:0x0a32, B:532:0x0a3a, B:533:0x0a3d, B:534:0x0a40, B:536:0x0a46, B:538:0x0a4f, B:540:0x0a59, B:542:0x0a5f, B:544:0x0a6a, B:551:0x0a8e, B:553:0x0a94, B:557:0x0a9e, B:567:0x0ab8, B:564:0x0aaf, B:566:0x0ab3, B:545:0x0a71, B:548:0x0a7f, B:549:0x0a86, B:550:0x0a87, B:473:0x0917, B:475:0x091d, B:477:0x0921, B:504:0x09c9, B:506:0x09d5, B:507:0x09e2, B:509:0x09e9, B:511:0x09ed, B:515:0x09f6, B:517:0x0a05, B:519:0x0a0b, B:521:0x0a15, B:522:0x0a1a, B:523:0x0a1f, B:524:0x0a24, B:480:0x092f, B:482:0x0933, B:484:0x0945, B:486:0x0953, B:488:0x095d, B:492:0x0966, B:494:0x0970, B:500:0x097b, B:458:0x08d5, B:378:0x0781, B:380:0x0785, B:382:0x078b, B:384:0x0791, B:386:0x079b, B:389:0x07a1, B:390:0x07a4, B:392:0x07ad, B:394:0x07bf, B:396:0x07c8, B:398:0x07d0, B:403:0x07dc, B:405:0x0806, B:407:0x080c, B:409:0x0811, B:410:0x0819, B:412:0x0820, B:413:0x0823, B:414:0x082c, B:416:0x0830, B:418:0x0836, B:419:0x083b, B:422:0x0847, B:569:0x0ac0, B:573:0x0acc), top: B:653:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:389:0x07a1 A[Catch: IOException -> 0x002a, zzuh -> 0x002e, zzgk -> 0x0032, zzaz -> 0x0036, zzsa -> 0x003a, RuntimeException -> 0x0629, zzin -> 0x0760, TryCatch #18 {zzin -> 0x0760, blocks: (B:363:0x0745, B:365:0x074b, B:367:0x0753, B:370:0x0768, B:371:0x076b, B:375:0x0777, B:423:0x0848, B:427:0x0856, B:432:0x0863, B:434:0x086b, B:435:0x0871, B:437:0x087f, B:438:0x0899, B:440:0x089d, B:442:0x08a5, B:457:0x08cf, B:443:0x08a9, B:445:0x08b2, B:449:0x08bb, B:455:0x08cb, B:459:0x08dc, B:461:0x08e2, B:465:0x08ef, B:467:0x08f7, B:469:0x08fb, B:470:0x0906, B:472:0x090c, B:525:0x0a27, B:528:0x0a2e, B:530:0x0a32, B:532:0x0a3a, B:533:0x0a3d, B:534:0x0a40, B:536:0x0a46, B:538:0x0a4f, B:540:0x0a59, B:542:0x0a5f, B:544:0x0a6a, B:551:0x0a8e, B:553:0x0a94, B:557:0x0a9e, B:567:0x0ab8, B:564:0x0aaf, B:566:0x0ab3, B:545:0x0a71, B:548:0x0a7f, B:549:0x0a86, B:550:0x0a87, B:473:0x0917, B:475:0x091d, B:477:0x0921, B:504:0x09c9, B:506:0x09d5, B:507:0x09e2, B:509:0x09e9, B:511:0x09ed, B:515:0x09f6, B:517:0x0a05, B:519:0x0a0b, B:521:0x0a15, B:522:0x0a1a, B:523:0x0a1f, B:524:0x0a24, B:480:0x092f, B:482:0x0933, B:484:0x0945, B:486:0x0953, B:488:0x095d, B:492:0x0966, B:494:0x0970, B:500:0x097b, B:458:0x08d5, B:378:0x0781, B:380:0x0785, B:382:0x078b, B:384:0x0791, B:386:0x079b, B:389:0x07a1, B:390:0x07a4, B:392:0x07ad, B:394:0x07bf, B:396:0x07c8, B:398:0x07d0, B:403:0x07dc, B:405:0x0806, B:407:0x080c, B:409:0x0811, B:410:0x0819, B:412:0x0820, B:413:0x0823, B:414:0x082c, B:416:0x0830, B:418:0x0836, B:419:0x083b, B:422:0x0847, B:569:0x0ac0, B:573:0x0acc), top: B:653:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:392:0x07ad A[Catch: IOException -> 0x002a, zzuh -> 0x002e, zzgk -> 0x0032, zzaz -> 0x0036, zzsa -> 0x003a, RuntimeException -> 0x0629, zzin -> 0x0760, TryCatch #18 {zzin -> 0x0760, blocks: (B:363:0x0745, B:365:0x074b, B:367:0x0753, B:370:0x0768, B:371:0x076b, B:375:0x0777, B:423:0x0848, B:427:0x0856, B:432:0x0863, B:434:0x086b, B:435:0x0871, B:437:0x087f, B:438:0x0899, B:440:0x089d, B:442:0x08a5, B:457:0x08cf, B:443:0x08a9, B:445:0x08b2, B:449:0x08bb, B:455:0x08cb, B:459:0x08dc, B:461:0x08e2, B:465:0x08ef, B:467:0x08f7, B:469:0x08fb, B:470:0x0906, B:472:0x090c, B:525:0x0a27, B:528:0x0a2e, B:530:0x0a32, B:532:0x0a3a, B:533:0x0a3d, B:534:0x0a40, B:536:0x0a46, B:538:0x0a4f, B:540:0x0a59, B:542:0x0a5f, B:544:0x0a6a, B:551:0x0a8e, B:553:0x0a94, B:557:0x0a9e, B:567:0x0ab8, B:564:0x0aaf, B:566:0x0ab3, B:545:0x0a71, B:548:0x0a7f, B:549:0x0a86, B:550:0x0a87, B:473:0x0917, B:475:0x091d, B:477:0x0921, B:504:0x09c9, B:506:0x09d5, B:507:0x09e2, B:509:0x09e9, B:511:0x09ed, B:515:0x09f6, B:517:0x0a05, B:519:0x0a0b, B:521:0x0a15, B:522:0x0a1a, B:523:0x0a1f, B:524:0x0a24, B:480:0x092f, B:482:0x0933, B:484:0x0945, B:486:0x0953, B:488:0x095d, B:492:0x0966, B:494:0x0970, B:500:0x097b, B:458:0x08d5, B:378:0x0781, B:380:0x0785, B:382:0x078b, B:384:0x0791, B:386:0x079b, B:389:0x07a1, B:390:0x07a4, B:392:0x07ad, B:394:0x07bf, B:396:0x07c8, B:398:0x07d0, B:403:0x07dc, B:405:0x0806, B:407:0x080c, B:409:0x0811, B:410:0x0819, B:412:0x0820, B:413:0x0823, B:414:0x082c, B:416:0x0830, B:418:0x0836, B:419:0x083b, B:422:0x0847, B:569:0x0ac0, B:573:0x0acc), top: B:653:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:409:0x0811 A[Catch: IOException -> 0x002a, zzuh -> 0x002e, zzgk -> 0x0032, zzaz -> 0x0036, zzsa -> 0x003a, RuntimeException -> 0x0629, zzin -> 0x0760, LOOP:10: B:408:0x080f->B:409:0x0811, LOOP_END, TryCatch #18 {zzin -> 0x0760, blocks: (B:363:0x0745, B:365:0x074b, B:367:0x0753, B:370:0x0768, B:371:0x076b, B:375:0x0777, B:423:0x0848, B:427:0x0856, B:432:0x0863, B:434:0x086b, B:435:0x0871, B:437:0x087f, B:438:0x0899, B:440:0x089d, B:442:0x08a5, B:457:0x08cf, B:443:0x08a9, B:445:0x08b2, B:449:0x08bb, B:455:0x08cb, B:459:0x08dc, B:461:0x08e2, B:465:0x08ef, B:467:0x08f7, B:469:0x08fb, B:470:0x0906, B:472:0x090c, B:525:0x0a27, B:528:0x0a2e, B:530:0x0a32, B:532:0x0a3a, B:533:0x0a3d, B:534:0x0a40, B:536:0x0a46, B:538:0x0a4f, B:540:0x0a59, B:542:0x0a5f, B:544:0x0a6a, B:551:0x0a8e, B:553:0x0a94, B:557:0x0a9e, B:567:0x0ab8, B:564:0x0aaf, B:566:0x0ab3, B:545:0x0a71, B:548:0x0a7f, B:549:0x0a86, B:550:0x0a87, B:473:0x0917, B:475:0x091d, B:477:0x0921, B:504:0x09c9, B:506:0x09d5, B:507:0x09e2, B:509:0x09e9, B:511:0x09ed, B:515:0x09f6, B:517:0x0a05, B:519:0x0a0b, B:521:0x0a15, B:522:0x0a1a, B:523:0x0a1f, B:524:0x0a24, B:480:0x092f, B:482:0x0933, B:484:0x0945, B:486:0x0953, B:488:0x095d, B:492:0x0966, B:494:0x0970, B:500:0x097b, B:458:0x08d5, B:378:0x0781, B:380:0x0785, B:382:0x078b, B:384:0x0791, B:386:0x079b, B:389:0x07a1, B:390:0x07a4, B:392:0x07ad, B:394:0x07bf, B:396:0x07c8, B:398:0x07d0, B:403:0x07dc, B:405:0x0806, B:407:0x080c, B:409:0x0811, B:410:0x0819, B:412:0x0820, B:413:0x0823, B:414:0x082c, B:416:0x0830, B:418:0x0836, B:419:0x083b, B:422:0x0847, B:569:0x0ac0, B:573:0x0acc), top: B:653:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:412:0x0820 A[Catch: IOException -> 0x002a, zzuh -> 0x002e, zzgk -> 0x0032, zzaz -> 0x0036, zzsa -> 0x003a, RuntimeException -> 0x0629, zzin -> 0x0760, TryCatch #18 {zzin -> 0x0760, blocks: (B:363:0x0745, B:365:0x074b, B:367:0x0753, B:370:0x0768, B:371:0x076b, B:375:0x0777, B:423:0x0848, B:427:0x0856, B:432:0x0863, B:434:0x086b, B:435:0x0871, B:437:0x087f, B:438:0x0899, B:440:0x089d, B:442:0x08a5, B:457:0x08cf, B:443:0x08a9, B:445:0x08b2, B:449:0x08bb, B:455:0x08cb, B:459:0x08dc, B:461:0x08e2, B:465:0x08ef, B:467:0x08f7, B:469:0x08fb, B:470:0x0906, B:472:0x090c, B:525:0x0a27, B:528:0x0a2e, B:530:0x0a32, B:532:0x0a3a, B:533:0x0a3d, B:534:0x0a40, B:536:0x0a46, B:538:0x0a4f, B:540:0x0a59, B:542:0x0a5f, B:544:0x0a6a, B:551:0x0a8e, B:553:0x0a94, B:557:0x0a9e, B:567:0x0ab8, B:564:0x0aaf, B:566:0x0ab3, B:545:0x0a71, B:548:0x0a7f, B:549:0x0a86, B:550:0x0a87, B:473:0x0917, B:475:0x091d, B:477:0x0921, B:504:0x09c9, B:506:0x09d5, B:507:0x09e2, B:509:0x09e9, B:511:0x09ed, B:515:0x09f6, B:517:0x0a05, B:519:0x0a0b, B:521:0x0a15, B:522:0x0a1a, B:523:0x0a1f, B:524:0x0a24, B:480:0x092f, B:482:0x0933, B:484:0x0945, B:486:0x0953, B:488:0x095d, B:492:0x0966, B:494:0x0970, B:500:0x097b, B:458:0x08d5, B:378:0x0781, B:380:0x0785, B:382:0x078b, B:384:0x0791, B:386:0x079b, B:389:0x07a1, B:390:0x07a4, B:392:0x07ad, B:394:0x07bf, B:396:0x07c8, B:398:0x07d0, B:403:0x07dc, B:405:0x0806, B:407:0x080c, B:409:0x0811, B:410:0x0819, B:412:0x0820, B:413:0x0823, B:414:0x082c, B:416:0x0830, B:418:0x0836, B:419:0x083b, B:422:0x0847, B:569:0x0ac0, B:573:0x0acc), top: B:653:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0830 A[Catch: IOException -> 0x002a, zzuh -> 0x002e, zzgk -> 0x0032, zzaz -> 0x0036, zzsa -> 0x003a, RuntimeException -> 0x0629, zzin -> 0x0760, TryCatch #18 {zzin -> 0x0760, blocks: (B:363:0x0745, B:365:0x074b, B:367:0x0753, B:370:0x0768, B:371:0x076b, B:375:0x0777, B:423:0x0848, B:427:0x0856, B:432:0x0863, B:434:0x086b, B:435:0x0871, B:437:0x087f, B:438:0x0899, B:440:0x089d, B:442:0x08a5, B:457:0x08cf, B:443:0x08a9, B:445:0x08b2, B:449:0x08bb, B:455:0x08cb, B:459:0x08dc, B:461:0x08e2, B:465:0x08ef, B:467:0x08f7, B:469:0x08fb, B:470:0x0906, B:472:0x090c, B:525:0x0a27, B:528:0x0a2e, B:530:0x0a32, B:532:0x0a3a, B:533:0x0a3d, B:534:0x0a40, B:536:0x0a46, B:538:0x0a4f, B:540:0x0a59, B:542:0x0a5f, B:544:0x0a6a, B:551:0x0a8e, B:553:0x0a94, B:557:0x0a9e, B:567:0x0ab8, B:564:0x0aaf, B:566:0x0ab3, B:545:0x0a71, B:548:0x0a7f, B:549:0x0a86, B:550:0x0a87, B:473:0x0917, B:475:0x091d, B:477:0x0921, B:504:0x09c9, B:506:0x09d5, B:507:0x09e2, B:509:0x09e9, B:511:0x09ed, B:515:0x09f6, B:517:0x0a05, B:519:0x0a0b, B:521:0x0a15, B:522:0x0a1a, B:523:0x0a1f, B:524:0x0a24, B:480:0x092f, B:482:0x0933, B:484:0x0945, B:486:0x0953, B:488:0x095d, B:492:0x0966, B:494:0x0970, B:500:0x097b, B:458:0x08d5, B:378:0x0781, B:380:0x0785, B:382:0x078b, B:384:0x0791, B:386:0x079b, B:389:0x07a1, B:390:0x07a4, B:392:0x07ad, B:394:0x07bf, B:396:0x07c8, B:398:0x07d0, B:403:0x07dc, B:405:0x0806, B:407:0x080c, B:409:0x0811, B:410:0x0819, B:412:0x0820, B:413:0x0823, B:414:0x082c, B:416:0x0830, B:418:0x0836, B:419:0x083b, B:422:0x0847, B:569:0x0ac0, B:573:0x0acc), top: B:653:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:527:0x0a2d  */
    /* JADX WARN: Removed duplicated region for block: B:553:0x0a94 A[Catch: IOException -> 0x002a, zzuh -> 0x002e, zzgk -> 0x0032, zzaz -> 0x0036, zzsa -> 0x003a, RuntimeException -> 0x0629, zzin -> 0x0760, TryCatch #18 {zzin -> 0x0760, blocks: (B:363:0x0745, B:365:0x074b, B:367:0x0753, B:370:0x0768, B:371:0x076b, B:375:0x0777, B:423:0x0848, B:427:0x0856, B:432:0x0863, B:434:0x086b, B:435:0x0871, B:437:0x087f, B:438:0x0899, B:440:0x089d, B:442:0x08a5, B:457:0x08cf, B:443:0x08a9, B:445:0x08b2, B:449:0x08bb, B:455:0x08cb, B:459:0x08dc, B:461:0x08e2, B:465:0x08ef, B:467:0x08f7, B:469:0x08fb, B:470:0x0906, B:472:0x090c, B:525:0x0a27, B:528:0x0a2e, B:530:0x0a32, B:532:0x0a3a, B:533:0x0a3d, B:534:0x0a40, B:536:0x0a46, B:538:0x0a4f, B:540:0x0a59, B:542:0x0a5f, B:544:0x0a6a, B:551:0x0a8e, B:553:0x0a94, B:557:0x0a9e, B:567:0x0ab8, B:564:0x0aaf, B:566:0x0ab3, B:545:0x0a71, B:548:0x0a7f, B:549:0x0a86, B:550:0x0a87, B:473:0x0917, B:475:0x091d, B:477:0x0921, B:504:0x09c9, B:506:0x09d5, B:507:0x09e2, B:509:0x09e9, B:511:0x09ed, B:515:0x09f6, B:517:0x0a05, B:519:0x0a0b, B:521:0x0a15, B:522:0x0a1a, B:523:0x0a1f, B:524:0x0a24, B:480:0x092f, B:482:0x0933, B:484:0x0945, B:486:0x0953, B:488:0x095d, B:492:0x0966, B:494:0x0970, B:500:0x097b, B:458:0x08d5, B:378:0x0781, B:380:0x0785, B:382:0x078b, B:384:0x0791, B:386:0x079b, B:389:0x07a1, B:390:0x07a4, B:392:0x07ad, B:394:0x07bf, B:396:0x07c8, B:398:0x07d0, B:403:0x07dc, B:405:0x0806, B:407:0x080c, B:409:0x0811, B:410:0x0819, B:412:0x0820, B:413:0x0823, B:414:0x082c, B:416:0x0830, B:418:0x0836, B:419:0x083b, B:422:0x0847, B:569:0x0ac0, B:573:0x0acc), top: B:653:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:559:0x0aa7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:560:0x0aa8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:598:0x0b3a  */
    /* JADX WARN: Removed duplicated region for block: B:605:0x0b53  */
    /* JADX WARN: Removed duplicated region for block: B:617:0x0b93 A[LOOP:4: B:617:0x0b93->B:620:0x0b9b, LOOP_START, PHI: r2 
      PHI: (r2v33 com.google.android.gms.internal.ads.zzlc) = (r2v30 com.google.android.gms.internal.ads.zzlc), (r2v34 com.google.android.gms.internal.ads.zzlc) binds: [B:615:0x0b90, B:620:0x0b9b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:623:0x0baa  */
    /* JADX WARN: Removed duplicated region for block: B:626:0x0bb8  */
    /* JADX WARN: Removed duplicated region for block: B:629:0x0bc3  */
    /* JADX WARN: Removed duplicated region for block: B:637:0x0bfe  */
    /* JADX WARN: Removed duplicated region for block: B:680:0x073f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:690:0x0846 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r22v16 */
    /* JADX WARN: Type inference failed for: r22v18 */
    /* JADX WARN: Type inference failed for: r22v19, types: [long] */
    /* JADX WARN: Type inference failed for: r22v9 */
    /* JADX WARN: Type inference failed for: r41v0, types: [com.google.android.gms.internal.ads.zzve, com.google.android.gms.internal.ads.zzkt] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r42) {
        /*
            Method dump skipped, instructions count: 3208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkt.handleMessage(android.os.Message):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzia
    public final void zza(int i10) {
        this.zzi.zzd(33, i10, 0).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzia
    public final void zzb(float f10) {
        this.zzi.zzj(34);
    }

    @Override // com.google.android.gms.internal.ads.zzik
    public final void zzc(zzbb zzbbVar) {
        this.zzi.zzc(16, zzbbVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzabp
    public final void zzcT(long j10, long j11, zzz zzzVar, @Nullable MediaFormat mediaFormat) {
        if (this.zzC) {
            this.zzi.zzb(37).zza();
        }
    }

    public final Looper zze() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzxa
    public final /* bridge */ /* synthetic */ void zzj(zzxb zzxbVar) {
        this.zzi.zzc(9, (zzvf) zzxbVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzlq
    public final void zzk() {
        zzdt zzdtVar = this.zzi;
        zzdtVar.zzg(2);
        zzdtVar.zzj(22);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zzl(zzvf zzvfVar) {
        this.zzi.zzc(8, zzvfVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void zzm() {
        this.zzi.zzj(10);
    }

    public final void zzn() {
        this.zzi.zzb(29).zza();
    }

    public final void zzo(zzbl zzblVar, int i10, long j10) {
        this.zzi.zzc(3, new zzkr(zzblVar, i10, j10)).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    public final void zzp(zzlw zzlwVar) {
        if (!this.zzG && this.zzk.getThread().isAlive()) {
            this.zzi.zzc(14, zzlwVar).zza();
            return;
        }
        zzea.zzf("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        zzlwVar.zzh(false);
    }

    public final void zzq(zze zzeVar, boolean z10) {
        this.zzi.zze(31, 0, 0, zzeVar).zza();
    }

    public final void zzr(boolean z10, int i10, int i11) {
        this.zzi.zzd(1, z10 ? 1 : 0, (i11 << 4) | 1).zza();
    }

    public final void zzs(zzmh zzmhVar) {
        this.zzi.zzc(38, zzmhVar).zza();
    }

    public final void zzt(float f10) {
        this.zzi.zzc(32, Float.valueOf(f10)).zza();
    }

    public final void zzu() {
        this.zzi.zzb(6).zza();
    }

    public final boolean zzw() {
        if (this.zzG || !this.zzk.getThread().isAlive()) {
            return true;
        }
        this.zzG = true;
        zzdm zzdmVar = new zzdm(this.zzq);
        this.zzi.zzc(7, zzdmVar).zza();
        return zzdmVar.zzc(this.zzt);
    }

    public final boolean zzx(@Nullable Object obj, long j10) {
        if (!this.zzG && this.zzk.getThread().isAlive()) {
            zzdm zzdmVar = new zzdm(this.zzq);
            this.zzi.zzc(30, new Pair(obj, zzdmVar)).zza();
            if (j10 != -9223372036854775807L) {
                return zzdmVar.zzc(j10);
            }
            return true;
        }
        return true;
    }

    public final void zzy(List list, int i10, long j10, zzxc zzxcVar) {
        this.zzi.zzc(17, new zzkn(list, zzxcVar, i10, j10, null)).zza();
    }
}
