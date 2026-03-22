package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzwl implements zzvf, zzady, zzzs, zzzw, zzww {
    private static final Map zzb;
    private static final zzz zzc;
    private zzaeu zzA;
    private long zzB;
    private boolean zzC;
    private boolean zzE;
    private boolean zzF;
    private boolean zzG;
    private int zzH;
    private boolean zzI;
    private long zzJ;
    private boolean zzL;
    private int zzM;
    private boolean zzN;
    private boolean zzO;
    private final zzzm zzP;
    private final Uri zzd;
    private final zzgj zze;
    private final zzsh zzf;
    private final zzvr zzg;
    private final zzsc zzh;
    private final zzwh zzi;
    private final long zzj;
    private final long zzk;
    private final zzwa zzm;
    @Nullable
    private zzve zzr;
    @Nullable
    private zzagv zzs;
    private boolean zzv;
    private boolean zzw;
    private boolean zzx;
    private boolean zzy;
    private zzwk zzz;
    private final zzaaa zzl = new zzaaa("ProgressiveMediaPeriod");
    private final zzdm zzn = new zzdm(zzdj.zza);
    private final Runnable zzo = new Runnable() { // from class: com.google.android.gms.internal.ads.zzwc
        @Override // java.lang.Runnable
        public final void run() {
            zzwl.this.zzV();
        }
    };
    private final Runnable zzp = new Runnable() { // from class: com.google.android.gms.internal.ads.zzwd
        @Override // java.lang.Runnable
        public final void run() {
            zzwl.zzA(zzwl.this);
        }
    };
    private final Handler zzq = zzex.zzy(null);
    private zzwj[] zzu = new zzwj[0];
    private zzwy[] zzt = new zzwy[0];
    private long zzK = -9223372036854775807L;
    private int zzD = 1;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", "1");
        zzb = Collections.unmodifiableMap(hashMap);
        zzx zzxVar = new zzx();
        zzxVar.zzS("icy");
        zzxVar.zzah("application/x-icy");
        zzc = zzxVar.zzan();
    }

    public zzwl(Uri uri, zzgj zzgjVar, zzwa zzwaVar, zzsh zzshVar, zzsc zzscVar, zzzq zzzqVar, zzvr zzvrVar, zzwh zzwhVar, zzzm zzzmVar, @Nullable String str, int i10, int i11, @Nullable zzz zzzVar, long j10, @Nullable zzaai zzaaiVar) {
        this.zzd = uri;
        this.zze = zzgjVar;
        this.zzf = zzshVar;
        this.zzh = zzscVar;
        this.zzg = zzvrVar;
        this.zzi = zzwhVar;
        this.zzP = zzzmVar;
        this.zzj = i10;
        this.zzm = zzwaVar;
        this.zzk = j10;
    }

    public static /* synthetic */ void zzA(zzwl zzwlVar) {
        if (!zzwlVar.zzO) {
            zzve zzveVar = zzwlVar.zzr;
            zzveVar.getClass();
            zzveVar.zzj(zzwlVar);
        }
    }

    public static /* synthetic */ void zzC(zzwl zzwlVar, zzaeu zzaeuVar) {
        zzaeu zzaetVar;
        if (zzwlVar.zzs == null) {
            zzaetVar = zzaeuVar;
        } else {
            zzaetVar = new zzaet(-9223372036854775807L, 0L);
        }
        zzwlVar.zzA = zzaetVar;
        zzwlVar.zzB = zzaeuVar.zza();
        boolean z10 = false;
        int i10 = 1;
        if (!zzwlVar.zzI && zzaeuVar.zza() == -9223372036854775807L) {
            z10 = true;
        }
        zzwlVar.zzC = z10;
        if (true == z10) {
            i10 = 7;
        }
        zzwlVar.zzD = i10;
        if (zzwlVar.zzw) {
            zzwlVar.zzi.zza(zzwlVar.zzB, zzaeuVar, z10);
        } else {
            zzwlVar.zzV();
        }
    }

    private final int zzR() {
        int i10 = 0;
        for (zzwy zzwyVar : this.zzt) {
            i10 += zzwyVar.zzd();
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzS(boolean z10) {
        int i10 = 0;
        long j10 = Long.MIN_VALUE;
        while (true) {
            zzwy[] zzwyVarArr = this.zzt;
            if (i10 < zzwyVarArr.length) {
                if (!z10) {
                    zzwk zzwkVar = this.zzz;
                    zzwkVar.getClass();
                    if (!zzwkVar.zzc[i10]) {
                        i10++;
                    }
                }
                j10 = Math.max(j10, zzwyVarArr[i10].zzh());
                i10++;
            } else {
                return j10;
            }
        }
    }

    private final zzafb zzT(zzwj zzwjVar) {
        int length = this.zzt.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (zzwjVar.equals(this.zzu[i10])) {
                return this.zzt[i10];
            }
        }
        if (this.zzv) {
            int i11 = zzwjVar.zza;
            zzea.zzf("ProgressiveMediaPeriod", "Extractor added new track (id=" + i11 + ") after finishing tracks.");
            return new zzadr();
        }
        zzwy zzwyVar = new zzwy(this.zzP, this.zzf, this.zzh);
        zzwyVar.zzv(this);
        int i12 = length + 1;
        zzwj[] zzwjVarArr = (zzwj[]) Arrays.copyOf(this.zzu, i12);
        zzwjVarArr[length] = zzwjVar;
        String str = zzex.zza;
        this.zzu = zzwjVarArr;
        zzwy[] zzwyVarArr = (zzwy[]) Arrays.copyOf(this.zzt, i12);
        zzwyVarArr[length] = zzwyVar;
        this.zzt = zzwyVarArr;
        return zzwyVar;
    }

    private final void zzU() {
        zzdd.zzf(this.zzw);
        this.zzz.getClass();
        this.zzA.getClass();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzV() {
        boolean z10;
        boolean z11;
        zzav zzc2;
        int i10;
        if (!this.zzO && !this.zzw && this.zzv && this.zzA != null) {
            for (zzwy zzwyVar : this.zzt) {
                if (zzwyVar.zzi() == null) {
                    return;
                }
            }
            this.zzn.zzd();
            int length = this.zzt.length;
            zzbm[] zzbmVarArr = new zzbm[length];
            boolean[] zArr = new boolean[length];
            for (int i11 = 0; i11 < length; i11++) {
                zzz zzi = this.zzt[i11].zzi();
                zzi.getClass();
                String str = zzi.zzo;
                boolean zzh = zzay.zzh(str);
                if (zzh || zzay.zzj(str)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                zArr[i11] = z10;
                this.zzx = z10 | this.zzx;
                boolean zzi2 = zzay.zzi(str);
                if (this.zzk != -9223372036854775807L && length == 1 && zzi2) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                this.zzy = z11;
                zzagv zzagvVar = this.zzs;
                if (zzagvVar != null) {
                    if (zzh || this.zzu[i11].zzb) {
                        zzav zzavVar = zzi.zzl;
                        if (zzavVar == null) {
                            zzc2 = new zzav(-9223372036854775807L, zzagvVar);
                        } else {
                            zzc2 = zzavVar.zzc(zzagvVar);
                        }
                        zzx zzb2 = zzi.zzb();
                        zzb2.zzaa(zzc2);
                        zzi = zzb2.zzan();
                    }
                    if (zzh && zzi.zzh == -1 && zzi.zzi == -1 && (i10 = zzagvVar.zza) != -1) {
                        zzx zzb3 = zzi.zzb();
                        zzb3.zzC(i10);
                        zzi = zzb3.zzan();
                    }
                }
                zzz zzc3 = zzi.zzc(this.zzf.zza(zzi));
                zzbmVarArr[i11] = new zzbm(Integer.toString(i11), zzc3);
                this.zzG = zzc3.zzu | this.zzG;
            }
            this.zzz = new zzwk(new zzxk(zzbmVarArr), zArr);
            if (this.zzy && this.zzB == -9223372036854775807L) {
                this.zzB = this.zzk;
                this.zzA = new zzwf(this, this.zzA);
            }
            this.zzi.zza(this.zzB, this.zzA, this.zzC);
            this.zzw = true;
            zzve zzveVar = this.zzr;
            zzveVar.getClass();
            zzveVar.zzl(this);
        }
    }

    private final void zzW(int i10) {
        zzU();
        zzwk zzwkVar = this.zzz;
        boolean[] zArr = zzwkVar.zzd;
        if (!zArr[i10]) {
            zzz zzb2 = zzwkVar.zza.zzb(i10).zzb(0);
            this.zzg.zzd(new zzvd(1, zzay.zzb(zzb2.zzo), zzb2, 0, null, zzex.zzv(this.zzJ), -9223372036854775807L));
            zArr[i10] = true;
        }
    }

    private final void zzX(int i10) {
        zzU();
        if (this.zzL) {
            if ((!this.zzx || this.zzz.zzb[i10]) && !this.zzt[i10].zzy(false)) {
                this.zzK = 0L;
                this.zzL = false;
                this.zzF = true;
                this.zzJ = 0L;
                this.zzM = 0;
                for (zzwy zzwyVar : this.zzt) {
                    zzwyVar.zzq(false);
                }
                zzve zzveVar = this.zzr;
                zzveVar.getClass();
                zzveVar.zzj(this);
            }
        }
    }

    private final void zzY() {
        zzwg zzwgVar = new zzwg(this, this.zzd, this.zze, this.zzm, this, this.zzn);
        if (this.zzw) {
            zzdd.zzf(zzZ());
            long j10 = this.zzB;
            if (j10 != -9223372036854775807L && this.zzK > j10) {
                this.zzN = true;
                this.zzK = -9223372036854775807L;
                return;
            }
            zzaeu zzaeuVar = this.zzA;
            zzaeuVar.getClass();
            zzwg.zzf(zzwgVar, zzaeuVar.zzg(this.zzK).zza.zzc, this.zzK);
            for (zzwy zzwyVar : this.zzt) {
                zzwyVar.zzu(this.zzK);
            }
            this.zzK = -9223372036854775807L;
        }
        this.zzM = zzR();
        this.zzl.zza(zzwgVar, this, zzzq.zza(this.zzD));
    }

    private final boolean zzZ() {
        if (this.zzK != -9223372036854775807L) {
            return true;
        }
        return false;
    }

    private final boolean zzaa() {
        if (!this.zzF && !zzZ()) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzady
    public final void zzG() {
        this.zzv = true;
        this.zzq.post(this.zzo);
    }

    final void zzH() throws IOException {
        this.zzl.zzi(zzzq.zza(this.zzD));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzI(int i10) throws IOException {
        this.zzt[i10].zzn();
        zzH();
    }

    @Override // com.google.android.gms.internal.ads.zzzs
    public final /* bridge */ /* synthetic */ void zzJ(zzzv zzzvVar, long j10, long j11, boolean z10) {
        zzwg zzwgVar = (zzwg) zzzvVar;
        zzhi zze = zzwg.zze(zzwgVar);
        zzuy zzuyVar = new zzuy(zzwg.zzb(zzwgVar), zzwg.zzd(zzwgVar), zze.zzh(), zze.zzi(), j10, j11, zze.zzg());
        zzwg.zzb(zzwgVar);
        this.zzg.zze(zzuyVar, new zzvd(1, -1, null, 0, null, zzex.zzv(zzwg.zzc(zzwgVar)), zzex.zzv(this.zzB)));
        if (!z10) {
            for (zzwy zzwyVar : this.zzt) {
                zzwyVar.zzq(false);
            }
            if (this.zzH > 0) {
                zzve zzveVar = this.zzr;
                zzveVar.getClass();
                zzveVar.zzj(this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzs
    public final /* bridge */ /* synthetic */ void zzK(zzzv zzzvVar, long j10, long j11) {
        long j12;
        zzwg zzwgVar = (zzwg) zzzvVar;
        if (this.zzB == -9223372036854775807L && this.zzA != null) {
            long zzS = zzS(true);
            if (zzS == Long.MIN_VALUE) {
                j12 = 0;
            } else {
                j12 = zzS + 10000;
            }
            this.zzB = j12;
            this.zzi.zza(j12, this.zzA, this.zzC);
        }
        zzhi zze = zzwg.zze(zzwgVar);
        zzuy zzuyVar = new zzuy(zzwg.zzb(zzwgVar), zzwg.zzd(zzwgVar), zze.zzh(), zze.zzi(), j10, j11, zze.zzg());
        zzwg.zzb(zzwgVar);
        this.zzg.zzf(zzuyVar, new zzvd(1, -1, null, 0, null, zzex.zzv(zzwg.zzc(zzwgVar)), zzex.zzv(this.zzB)));
        this.zzN = true;
        zzve zzveVar = this.zzr;
        zzveVar.getClass();
        zzveVar.zzj(this);
    }

    @Override // com.google.android.gms.internal.ads.zzzs
    public final /* bridge */ /* synthetic */ void zzL(zzzv zzzvVar, long j10, long j11, int i10) {
        zzuy zzuyVar;
        zzwg zzwgVar = (zzwg) zzzvVar;
        zzhi zze = zzwg.zze(zzwgVar);
        if (i10 == 0) {
            zzuyVar = new zzuy(zzwg.zzb(zzwgVar), zzwg.zzd(zzwgVar), j10);
        } else {
            zzuyVar = new zzuy(zzwg.zzb(zzwgVar), zzwg.zzd(zzwgVar), zze.zzh(), zze.zzi(), j10, j11, zze.zzg());
        }
        this.zzg.zzh(zzuyVar, new zzvd(1, -1, null, 0, null, zzex.zzv(zzwg.zzc(zzwgVar)), zzex.zzv(this.zzB)), i10);
    }

    @Override // com.google.android.gms.internal.ads.zzzw
    public final void zzM() {
        for (zzwy zzwyVar : this.zzt) {
            zzwyVar.zzp();
        }
        this.zzm.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzww
    public final void zzN(zzz zzzVar) {
        this.zzq.post(this.zzo);
    }

    public final void zzO() {
        if (this.zzw) {
            for (zzwy zzwyVar : this.zzt) {
                zzwyVar.zzo();
            }
        }
        this.zzl.zzj(this);
        this.zzq.removeCallbacksAndMessages(null);
        this.zzr = null;
        this.zzO = true;
    }

    @Override // com.google.android.gms.internal.ads.zzady
    public final void zzP(final zzaeu zzaeuVar) {
        this.zzq.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzwe
            @Override // java.lang.Runnable
            public final void run() {
                zzwl.zzC(zzwl.this, zzaeuVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzQ(int i10) {
        if (!zzaa() && this.zzt[i10].zzy(this.zzN)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zza(long j10, zzmi zzmiVar) {
        boolean z10;
        zzU();
        if (!this.zzA.zzh()) {
            return 0L;
        }
        zzaes zzg = this.zzA.zzg(j10);
        zzaev zzaevVar = zzg.zza;
        zzaev zzaevVar2 = zzg.zzb;
        long j11 = zzmiVar.zzc;
        if (j11 == 0) {
            if (zzmiVar.zzd == 0) {
                return j10;
            }
            j11 = 0;
        }
        long j12 = zzaevVar.zzb;
        String str = zzex.zza;
        long j13 = j10 - j11;
        long j14 = zzmiVar.zzd;
        long j15 = j10 + j14;
        long j16 = j10 ^ j15;
        long j17 = j14 ^ j15;
        if (((j10 ^ j11) & (j10 ^ j13)) < 0) {
            j13 = Long.MIN_VALUE;
        }
        if ((j16 & j17) < 0) {
            j15 = Long.MAX_VALUE;
        }
        boolean z11 = true;
        if (j13 <= j12 && j12 <= j15) {
            z10 = true;
        } else {
            z10 = false;
        }
        long j18 = zzaevVar2.zzb;
        if (j13 > j18 || j18 > j15) {
            z11 = false;
        }
        if (z10 && z11) {
            if (Math.abs(j12 - j10) > Math.abs(j18 - j10)) {
                return j18;
            }
        } else if (!z10) {
            if (z11) {
                return j18;
            }
            return j13;
        }
        return j12;
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final long zzb() {
        long j10;
        zzU();
        if (this.zzN || this.zzH == 0) {
            return Long.MIN_VALUE;
        }
        if (zzZ()) {
            return this.zzK;
        }
        if (this.zzx) {
            int length = this.zzt.length;
            j10 = Long.MAX_VALUE;
            for (int i10 = 0; i10 < length; i10++) {
                zzwk zzwkVar = this.zzz;
                if (zzwkVar.zzb[i10] && zzwkVar.zzc[i10] && !this.zzt[i10].zzx()) {
                    j10 = Math.min(j10, this.zzt[i10].zzh());
                }
            }
        } else {
            j10 = Long.MAX_VALUE;
        }
        if (j10 == Long.MAX_VALUE) {
            j10 = zzS(false);
        }
        if (j10 == Long.MIN_VALUE) {
            return this.zzJ;
        }
        return j10;
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final long zzc() {
        return zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zzd() {
        if (this.zzG) {
            this.zzG = false;
        } else if (this.zzF) {
            if (this.zzN || zzR() > this.zzM) {
                this.zzF = false;
            } else {
                return -9223372036854775807L;
            }
        } else {
            return -9223372036854775807L;
        }
        return this.zzJ;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zze(long j10) {
        boolean zzA;
        zzU();
        boolean[] zArr = this.zzz.zzb;
        if (true != this.zzA.zzh()) {
            j10 = 0;
        }
        this.zzF = false;
        long j11 = this.zzJ;
        this.zzJ = j10;
        if (zzZ()) {
            this.zzK = j10;
            return j10;
        }
        if (this.zzD != 7 && (this.zzN || this.zzl.zzl())) {
            int length = this.zzt.length;
            for (int i10 = 0; i10 < length; i10++) {
                zzwy zzwyVar = this.zzt[i10];
                if (zzwyVar.zzb() != 0 || j11 != j10) {
                    if (this.zzy) {
                        zzA = zzwyVar.zzz(zzwyVar.zza());
                    } else {
                        zzA = zzwyVar.zzA(j10, this.zzN);
                    }
                    if (zzA) {
                        continue;
                    } else if (!zArr[i10] && this.zzx) {
                    }
                }
            }
            return j10;
        }
        this.zzL = false;
        this.zzK = j10;
        this.zzN = false;
        this.zzG = false;
        zzaaa zzaaaVar = this.zzl;
        if (zzaaaVar.zzl()) {
            for (zzwy zzwyVar2 : this.zzt) {
                zzwyVar2.zzk();
            }
            zzaaaVar.zzg();
        } else {
            zzaaaVar.zzh();
            for (zzwy zzwyVar3 : this.zzt) {
                zzwyVar3.zzq(false);
            }
        }
        return j10;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zzf(zzyw[] zzywVarArr, boolean[] zArr, zzwz[] zzwzVarArr, boolean[] zArr2, long j10) {
        boolean z10;
        zzyw zzywVar;
        boolean z11;
        boolean z12;
        int i10;
        zzU();
        zzwk zzwkVar = this.zzz;
        zzxk zzxkVar = zzwkVar.zza;
        boolean[] zArr3 = zzwkVar.zzc;
        int i11 = this.zzH;
        int i12 = 0;
        for (int i13 = 0; i13 < zzywVarArr.length; i13++) {
            zzwz zzwzVar = zzwzVarArr[i13];
            if (zzwzVar != null && (zzywVarArr[i13] == null || !zArr[i13])) {
                i10 = ((zzwi) zzwzVar).zzb;
                zzdd.zzf(zArr3[i10]);
                this.zzH--;
                zArr3[i10] = false;
                zzwzVarArr[i13] = null;
            }
        }
        if (!this.zzE ? !(j10 == 0 || this.zzy) : i11 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        for (int i14 = 0; i14 < zzywVarArr.length; i14++) {
            if (zzwzVarArr[i14] == null && (zzywVar = zzywVarArr[i14]) != null) {
                if (zzywVar.zzh() == 1) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                zzdd.zzf(z11);
                if (zzywVar.zze(0) == 0) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                zzdd.zzf(z12);
                int zza = zzxkVar.zza(zzywVar.zzc());
                zzdd.zzf(!zArr3[zza]);
                this.zzH++;
                zArr3[zza] = true;
                this.zzG = zzywVar.zzb().zzu | this.zzG;
                zzwzVarArr[i14] = new zzwi(this, zza);
                zArr2[i14] = true;
                if (!z10) {
                    zzwy zzwyVar = this.zzt[zza];
                    if (zzwyVar.zzb() != 0 && !zzwyVar.zzA(j10, true)) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
            }
        }
        if (this.zzH == 0) {
            this.zzL = false;
            this.zzF = false;
            this.zzG = false;
            zzaaa zzaaaVar = this.zzl;
            if (zzaaaVar.zzl()) {
                zzwy[] zzwyVarArr = this.zzt;
                int length = zzwyVarArr.length;
                while (i12 < length) {
                    zzwyVarArr[i12].zzk();
                    i12++;
                }
                zzaaaVar.zzg();
            } else {
                this.zzN = false;
                for (zzwy zzwyVar2 : this.zzt) {
                    zzwyVar2.zzq(false);
                }
            }
        } else if (z10) {
            j10 = zze(j10);
            while (i12 < zzwzVarArr.length) {
                if (zzwzVarArr[i12] != null) {
                    zArr2[i12] = true;
                }
                i12++;
            }
        }
        this.zzE = true;
        return j10;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final zzxk zzg() {
        zzU();
        return this.zzz.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzh(long j10, boolean z10) {
        if (!this.zzy) {
            zzU();
            if (!zzZ()) {
                boolean[] zArr = this.zzz.zzc;
                int length = this.zzt.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.zzt[i10].zzj(j10, false, zArr[i10]);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzi() throws IOException {
        zzH();
        if (this.zzN && !this.zzw) {
            throw zzaz.zza("Loading finished before preparation is complete.", null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzj(int i10, zzkv zzkvVar, zzhs zzhsVar, int i11) {
        if (zzaa()) {
            return -3;
        }
        zzW(i10);
        int zze = this.zzt[i10].zze(zzkvVar, zzhsVar, i11, this.zzN);
        if (zze == -3) {
            zzX(i10);
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzk(zzve zzveVar, long j10) {
        this.zzr = zzveVar;
        this.zzn.zzf();
        zzY();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzl(int i10, long j10) {
        if (zzaa()) {
            return 0;
        }
        zzW(i10);
        zzwy zzwyVar = this.zzt[i10];
        int zzc2 = zzwyVar.zzc(j10, this.zzN);
        zzwyVar.zzw(zzc2);
        if (zzc2 == 0) {
            zzX(i10);
            return 0;
        }
        return zzc2;
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final boolean zzo(zzla zzlaVar) {
        if (!this.zzN) {
            zzaaa zzaaaVar = this.zzl;
            if (!zzaaaVar.zzk() && !this.zzL) {
                if (!this.zzw || this.zzH != 0) {
                    boolean zzf = this.zzn.zzf();
                    if (!zzaaaVar.zzl()) {
                        zzY();
                        return true;
                    }
                    return zzf;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final boolean zzp() {
        if (this.zzl.zzl() && this.zzn.zze()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e3  */
    @Override // com.google.android.gms.internal.ads.zzzs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ com.google.android.gms.internal.ads.zzzt zzu(com.google.android.gms.internal.ads.zzzv r23, long r24, long r26, java.io.IOException r28, int r29) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzwl.zzu(com.google.android.gms.internal.ads.zzzv, long, long, java.io.IOException, int):com.google.android.gms.internal.ads.zzzt");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzafb zzv() {
        return zzT(new zzwj(0, true));
    }

    @Override // com.google.android.gms.internal.ads.zzady
    public final zzafb zzw(int i10, int i11) {
        return zzT(new zzwj(i10, false));
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final void zzm(long j10) {
    }
}
