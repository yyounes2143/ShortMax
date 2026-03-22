package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzkh extends zzg implements zziy {
    public static final /* synthetic */ int zzd = 0;
    private final zzdi zzA;
    private int zzB;
    private int zzC;
    private boolean zzD;
    private zzmh zzE;
    private zzmi zzF;
    private zzix zzG;
    private zzbd zzH;
    private zzat zzI;
    @Nullable
    private Object zzJ;
    @Nullable
    private Surface zzK;
    private int zzL;
    private zzeo zzM;
    private zze zzN;
    private float zzO;
    private boolean zzP;
    private boolean zzQ;
    private boolean zzR;
    private int zzS;
    private zzat zzT;
    private zzls zzU;
    private int zzV;
    private long zzW;
    private final zzjj zzX;
    private zzxc zzY;
    final zzze zzb;
    final zzbd zzc;
    private final zzdm zze = new zzdm(zzdj.zza);
    private final Context zzf;
    private final zzbh zzg;
    private final zzma[] zzh;
    private final zzma[] zzi;
    private final zzzd zzj;
    private final zzdt zzk;
    private final zzkt zzl;
    private final zzdz zzm;
    private final CopyOnWriteArraySet zzn;
    private final zzbj zzo;
    private final List zzp;
    private final boolean zzq;
    private final zzmo zzr;
    private final Looper zzs;
    private final zzzl zzt;
    private final zzdj zzu;
    private final zzkd zzv;
    private final zzke zzw;
    private final zzmm zzx;
    private final zzmn zzy;
    private final long zzz;

    static {
        zzaq.zzb("media3.exoplayer");
    }

    @SuppressLint({"HandlerLeak"})
    public zzkh(zziw zziwVar, @Nullable zzbh zzbhVar) {
        zziw zziwVar2;
        zzdj zzdjVar;
        try {
            zzea.zze("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.8.0-alpha01] [" + zzex.zza + "]");
            this.zzf = zziwVar.zza.getApplicationContext();
            this.zzr = (zzmo) zziwVar.zzh.apply(zziwVar.zzb);
            this.zzS = zziwVar.zzj;
            this.zzN = zziwVar.zzk;
            this.zzL = zziwVar.zzl;
            this.zzP = false;
            this.zzz = zziwVar.zzq;
            zzkd zzkdVar = new zzkd(this, null);
            this.zzv = zzkdVar;
            this.zzw = new zzke(null);
            zzma[] zzac = zzceo.zzac(((zzip) zziwVar.zzc).zza.zza, new Handler(zziwVar.zzi), zzkdVar, zzkdVar, zzkdVar, zzkdVar);
            this.zzh = zzac;
            int length = zzac.length;
            this.zzi = new zzma[2];
            int i10 = 0;
            while (true) {
                zzma[] zzmaVarArr = this.zzi;
                int length2 = zzmaVarArr.length;
                if (i10 >= 2) {
                    break;
                }
                zzma zzmaVar = this.zzh[i10];
                zzmaVarArr[i10] = null;
                i10++;
            }
            zzzd zzzdVar = (zzzd) zziwVar.zze.zza();
            this.zzj = zzzdVar;
            zziw.zza(((zziq) zziwVar.zzd).zza);
            zzzp zzh = zzzp.zzh(((zzit) zziwVar.zzg).zza);
            this.zzt = zzh;
            this.zzq = zziwVar.zzm;
            this.zzF = zziwVar.zzn;
            this.zzE = zziwVar.zzo;
            Looper looper = zziwVar.zzi;
            this.zzs = looper;
            zzdj zzdjVar2 = zziwVar.zzb;
            this.zzu = zzdjVar2;
            this.zzg = zzbhVar;
            zzdz zzdzVar = new zzdz(looper, zzdjVar2, new zzdx(this) { // from class: com.google.android.gms.internal.ads.zzji
                @Override // com.google.android.gms.internal.ads.zzdx
                public final void zza(Object obj, zzv zzvVar) {
                    zzbe zzbeVar = (zzbe) obj;
                }
            });
            this.zzm = zzdzVar;
            CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
            this.zzn = copyOnWriteArraySet;
            this.zzp = new ArrayList();
            this.zzY = new zzxc(0);
            this.zzG = zzix.zza;
            int length3 = this.zzh.length;
            zzze zzzeVar = new zzze(new zzme[2], new zzyw[2], zzbt.zza, null);
            this.zzb = zzzeVar;
            this.zzo = new zzbj();
            zzbc zzbcVar = new zzbc();
            zzbcVar.zzc(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32);
            zzzdVar.zzn();
            zzbcVar.zzd(29, true);
            zzbcVar.zzd(23, false);
            zzbcVar.zzd(25, false);
            zzbcVar.zzd(33, false);
            zzbcVar.zzd(26, false);
            zzbcVar.zzd(34, false);
            zzbd zze = zzbcVar.zze();
            this.zzc = zze;
            zzbc zzbcVar2 = new zzbc();
            zzbcVar2.zzb(zze);
            zzbcVar2.zza(4);
            zzbcVar2.zza(10);
            this.zzH = zzbcVar2.zze();
            this.zzk = zzdjVar2.zzd(looper, null);
            zzjj zzjjVar = new zzjj(this);
            this.zzX = zzjjVar;
            this.zzU = zzls.zzh(zzzeVar);
            this.zzr.zzT(zzbhVar, looper);
            final zzph zzphVar = new zzph(zziwVar.zzt);
            zzkt zzktVar = new zzkt(this.zzf, this.zzh, this.zzi, zzzdVar, zzzeVar, (zzkx) zziwVar.zzf.zza(), zzh, 0, false, this.zzr, this.zzF, zziwVar.zzu, zziwVar.zzp, false, false, looper, zzdjVar2, zzjjVar, zzphVar, null, this.zzG, this.zzw);
            this.zzl = zzktVar;
            Looper zze2 = zzktVar.zze();
            this.zzO = 1.0f;
            zzat zzatVar = zzat.zza;
            this.zzI = zzatVar;
            this.zzT = zzatVar;
            this.zzV = -1;
            int i11 = zzcw.zza;
            this.zzQ = true;
            zzmo zzmoVar = this.zzr;
            if (zzmoVar != null) {
                zzdzVar.zzb(zzmoVar);
                zzh.zzf(new Handler(looper), this.zzr);
                copyOnWriteArraySet.add(this.zzv);
                if (Build.VERSION.SDK_INT >= 31) {
                    final Context context = this.zzf;
                    zziwVar2 = zziwVar;
                    final boolean z10 = zziwVar2.zzr;
                    zzdjVar = zzdjVar2;
                    zzdjVar.zzd(zzktVar.zze(), null).zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjx
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzpd zzb = zzpd.zzb(context);
                            if (zzb == null) {
                                zzea.zzf("ExoPlayerImpl", "MediaMetricsService unavailable.");
                                return;
                            }
                            if (z10) {
                                this.zzz(zzb);
                            }
                            zzphVar.zzb(zzb.zza());
                        }
                    });
                } else {
                    zziwVar2 = zziwVar;
                    zzdjVar = zzdjVar2;
                }
                zzdi zzdiVar = new zzdi(0, zze2, looper, zzdjVar, new zzjk(this));
                this.zzA = zzdiVar;
                zzdiVar.zzd(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjl
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzkh.zzJ(zzkh.this);
                    }
                });
                new zzhx(zziwVar2.zza, zze2, zziwVar2.zzi, this.zzv, zzdjVar);
                this.zzx = new zzmm(zziwVar2.zza, zze2, zzdjVar);
                this.zzy = new zzmn(zziwVar2.zza, zze2, zzdjVar);
                int i12 = zzo.zza;
                zzcd zzcdVar = zzcd.zza;
                this.zzM = zzeo.zza;
                zzktVar.zzs(this.zzE);
                zzktVar.zzq(this.zzN, false);
                zzad(1, 3, this.zzN);
                zzad(2, 4, Integer.valueOf(this.zzL));
                zzad(2, 5, 0);
                zzad(1, 9, Boolean.valueOf(this.zzP));
                zzad(6, 8, this.zzw);
                zzad(-1, 16, Integer.valueOf(this.zzS));
                this.zze.zzf();
                return;
            }
            throw null;
        } catch (Throwable th2) {
            this.zze.zzf();
            throw th2;
        }
    }

    public static /* synthetic */ void zzJ(zzkh zzkhVar) {
        String str = zzex.zza;
        zzkhVar.zzA.zze(Integer.valueOf(zzcj.zzc(zzkhVar.zzf).generateAudioSessionId()));
    }

    public static /* synthetic */ void zzK(zzkh zzkhVar, zzkq zzkqVar) {
        boolean z10;
        long j10;
        boolean z11;
        int i10 = zzkhVar.zzB - zzkqVar.zzb;
        zzkhVar.zzB = i10;
        boolean z12 = true;
        if (zzkqVar.zzc) {
            zzkhVar.zzC = zzkqVar.zzd;
            zzkhVar.zzD = true;
        }
        if (i10 == 0) {
            zzbl zzblVar = zzkqVar.zza.zza;
            if (!zzkhVar.zzU.zza.zzo() && zzblVar.zzo()) {
                zzkhVar.zzV = -1;
                zzkhVar.zzW = 0L;
            }
            if (!zzblVar.zzo()) {
                List zzw = ((zzly) zzblVar).zzw();
                int size = zzw.size();
                List list = zzkhVar.zzp;
                if (size == list.size()) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                zzdd.zzf(z11);
                for (int i11 = 0; i11 < zzw.size(); i11++) {
                    ((zzkf) list.get(i11)).zzc((zzbl) zzw.get(i11));
                }
            }
            long j11 = -9223372036854775807L;
            if (zzkhVar.zzD) {
                if (zzkqVar.zza.zzb.equals(zzkhVar.zzU.zzb) && zzkqVar.zza.zzd == zzkhVar.zzU.zzs) {
                    z12 = false;
                }
                if (z12) {
                    if (!zzblVar.zzo() && !zzkqVar.zza.zzb.zzb()) {
                        zzls zzlsVar = zzkqVar.zza;
                        zzvh zzvhVar = zzlsVar.zzb;
                        j10 = zzlsVar.zzd;
                        zzkhVar.zzW(zzblVar, zzvhVar, j10);
                    } else {
                        j10 = zzkqVar.zza.zzd;
                    }
                    z10 = z12;
                    j11 = j10;
                } else {
                    z10 = z12;
                }
            } else {
                z10 = false;
            }
            zzkhVar.zzD = false;
            zzkhVar.zzag(zzkqVar.zza, 1, z10, zzkhVar.zzC, j11, -1, false);
        }
    }

    public static /* synthetic */ void zzL(zzkh zzkhVar, int i10, final int i11) {
        zzkhVar.zzai();
        Integer valueOf = Integer.valueOf(i11);
        zzkhVar.zzad(1, 10, valueOf);
        zzkhVar.zzad(2, 10, valueOf);
        zzdw zzdwVar = new zzdw() { // from class: com.google.android.gms.internal.ads.zzjm
            @Override // com.google.android.gms.internal.ads.zzdw
            public final void zza(Object obj) {
                int i12 = zzkh.zzd;
                ((zzbe) obj).zza(i11);
            }
        };
        zzdz zzdzVar = zzkhVar.zzm;
        zzdzVar.zzd(21, zzdwVar);
        zzdzVar.zzc();
    }

    public static /* bridge */ /* synthetic */ void zzP(zzkh zzkhVar, SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        zzkhVar.zzae(surface);
        zzkhVar.zzK = surface;
    }

    private final int zzS(zzls zzlsVar) {
        zzbl zzblVar = zzlsVar.zza;
        if (zzblVar.zzo()) {
            return this.zzV;
        }
        return zzblVar.zzn(zzlsVar.zzb.zza, this.zzo).zzc;
    }

    private final long zzT(zzls zzlsVar) {
        zzvh zzvhVar = zzlsVar.zzb;
        if (zzvhVar.zzb()) {
            zzbl zzblVar = zzlsVar.zza;
            zzblVar.zzn(zzvhVar.zza, this.zzo);
            long j10 = zzlsVar.zzc;
            if (j10 == -9223372036854775807L) {
                long j11 = zzblVar.zze(zzS(zzlsVar), this.zza, 0L).zzl;
                return zzex.zzv(0L);
            }
            return zzex.zzv(0L) + zzex.zzv(j10);
        }
        return zzex.zzv(zzU(zzlsVar));
    }

    private final long zzU(zzls zzlsVar) {
        zzbl zzblVar = zzlsVar.zza;
        if (zzblVar.zzo()) {
            return zzex.zzs(this.zzW);
        }
        long j10 = zzlsVar.zzs;
        zzvh zzvhVar = zzlsVar.zzb;
        if (zzvhVar.zzb()) {
            return j10;
        }
        zzW(zzblVar, zzvhVar, j10);
        return j10;
    }

    private static long zzV(zzls zzlsVar) {
        zzbk zzbkVar = new zzbk();
        zzbj zzbjVar = new zzbj();
        zzbl zzblVar = zzlsVar.zza;
        zzblVar.zzn(zzlsVar.zzb.zza, zzbjVar);
        long j10 = zzlsVar.zzc;
        if (j10 == -9223372036854775807L) {
            long j11 = zzblVar.zze(zzbjVar.zzc, zzbkVar, 0L).zzl;
            return 0L;
        }
        return j10;
    }

    private final long zzW(zzbl zzblVar, zzvh zzvhVar, long j10) {
        zzblVar.zzn(zzvhVar.zza, this.zzo);
        return j10;
    }

    @Nullable
    private final Pair zzX(zzbl zzblVar, int i10, long j10) {
        if (zzblVar.zzo()) {
            this.zzV = i10;
            if (j10 == -9223372036854775807L) {
                j10 = 0;
            }
            this.zzW = j10;
            return null;
        }
        if (i10 == -1 || i10 >= zzblVar.zzc()) {
            i10 = zzblVar.zzg(false);
            long j11 = zzblVar.zze(i10, this.zza, 0L).zzl;
            j10 = zzex.zzv(0L);
        }
        return zzblVar.zzl(this.zza, this.zzo, i10, zzex.zzs(j10));
    }

    private static zzls zzY(zzls zzlsVar, int i10) {
        zzls zzf = zzlsVar.zzf(i10);
        if (i10 != 1 && i10 != 4) {
            return zzf;
        }
        return zzf.zza(false);
    }

    private final zzls zzZ(zzls zzlsVar, zzbl zzblVar, @Nullable Pair pair) {
        boolean z10;
        zzvh zzvhVar;
        zzxk zzxkVar;
        zzze zzzeVar;
        List list;
        int i10;
        long j10;
        if (zzblVar.zzo() || pair != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        zzbl zzblVar2 = zzlsVar.zza;
        long zzT = zzT(zzlsVar);
        zzls zzg = zzlsVar.zzg(zzblVar);
        if (zzblVar.zzo()) {
            zzvh zzi = zzls.zzi();
            long zzs = zzex.zzs(this.zzW);
            zzls zzb = zzg.zzc(zzi, zzs, zzs, zzs, 0L, zzxk.zza, this.zzb, zzfyq.zzn()).zzb(zzi);
            zzb.zzq = zzb.zzs;
            return zzb;
        }
        zzvh zzvhVar2 = zzg.zzb;
        Object obj = zzvhVar2.zza;
        String str = zzex.zza;
        boolean equals = obj.equals(pair.first);
        if (!equals) {
            zzvhVar = new zzvh(pair.first, -1L);
        } else {
            zzvhVar = zzvhVar2;
        }
        long longValue = ((Long) pair.second).longValue();
        long zzs2 = zzex.zzs(zzT);
        if (!zzblVar2.zzo()) {
            zzblVar2.zzn(obj, this.zzo);
        }
        if (!equals || longValue < zzs2) {
            zzvh zzvhVar3 = zzvhVar;
            zzdd.zzf(!zzvhVar3.zzb());
            if (!equals) {
                zzxkVar = zzxk.zza;
            } else {
                zzxkVar = zzg.zzh;
            }
            zzxk zzxkVar2 = zzxkVar;
            if (!equals) {
                zzzeVar = this.zzb;
            } else {
                zzzeVar = zzg.zzi;
            }
            zzze zzzeVar2 = zzzeVar;
            if (!equals) {
                list = zzfyq.zzn();
            } else {
                list = zzg.zzj;
            }
            zzls zzb2 = zzg.zzc(zzvhVar3, longValue, longValue, longValue, 0L, zzxkVar2, zzzeVar2, list).zzb(zzvhVar3);
            zzb2.zzq = longValue;
            return zzb2;
        } else if (i10 == 0) {
            int zza = zzblVar.zza(zzg.zzk.zza);
            if (zza != -1) {
                zzbj zzbjVar = this.zzo;
                if (zzblVar.zzd(zza, zzbjVar, false).zzc == zzblVar.zzn(zzvhVar.zza, zzbjVar).zzc) {
                    return zzg;
                }
            }
            Object obj2 = zzvhVar.zza;
            zzbj zzbjVar2 = this.zzo;
            zzblVar.zzn(obj2, zzbjVar2);
            if (zzvhVar.zzb()) {
                j10 = zzbjVar2.zzf(zzvhVar.zzb, zzvhVar.zzc);
            } else {
                j10 = zzbjVar2.zzd;
            }
            zzls zzb3 = zzg.zzc(zzvhVar, zzg.zzs, zzg.zzs, zzg.zzd, j10 - zzg.zzs, zzg.zzh, zzg.zzi, zzg.zzj).zzb(zzvhVar);
            zzb3.zzq = j10;
            return zzb3;
        } else {
            zzvh zzvhVar4 = zzvhVar;
            zzdd.zzf(!zzvhVar4.zzb());
            long max = Math.max(0L, zzg.zzr - (longValue - zzs2));
            long j11 = zzg.zzq;
            if (zzg.zzk.equals(zzvhVar2)) {
                j11 = longValue + max;
            }
            zzls zzc = zzg.zzc(zzvhVar4, longValue, longValue, longValue, max, zzg.zzh, zzg.zzi, zzg.zzj);
            zzc.zzq = j11;
            return zzc;
        }
    }

    private final zzlw zzaa(zzlv zzlvVar) {
        int zzS = zzS(this.zzU);
        zzbl zzblVar = this.zzU.zza;
        if (zzS == -1) {
            zzS = 0;
        }
        zzdj zzdjVar = this.zzu;
        zzkt zzktVar = this.zzl;
        return new zzlw(zzktVar, zzlvVar, zzblVar, zzS, zzdjVar, zzktVar.zze());
    }

    public final /* synthetic */ void zzab(final zzkq zzkqVar) {
        this.zzk.zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjo
            @Override // java.lang.Runnable
            public final void run() {
                zzkh.zzK(zzkh.this, zzkqVar);
            }
        });
    }

    public final void zzac(final int i10, final int i11) {
        if (i10 == this.zzM.zzb() && i11 == this.zzM.zza()) {
            return;
        }
        this.zzM = new zzeo(i10, i11);
        zzdz zzdzVar = this.zzm;
        zzdzVar.zzd(24, new zzdw() { // from class: com.google.android.gms.internal.ads.zzjf
            @Override // com.google.android.gms.internal.ads.zzdw
            public final void zza(Object obj) {
                int i12 = zzkh.zzd;
                ((zzbe) obj).zzp(i10, i11);
            }
        });
        zzdzVar.zzc();
        zzad(2, 14, new zzeo(i10, i11));
    }

    private final void zzad(int i10, int i11, @Nullable Object obj) {
        zzma[] zzmaVarArr = this.zzh;
        int length = zzmaVarArr.length;
        for (int i12 = 0; i12 < 2; i12++) {
            zzma zzmaVar = zzmaVarArr[i12];
            if (i10 == -1 || zzmaVar.zzb() == i10) {
                zzlw zzaa = zzaa(zzmaVar);
                zzaa.zzf(i11);
                zzaa.zze(obj);
                zzaa.zzd();
            }
        }
        zzma[] zzmaVarArr2 = this.zzi;
        int length2 = zzmaVarArr2.length;
        for (int i13 = 0; i13 < 2; i13++) {
            zzma zzmaVar2 = zzmaVarArr2[i13];
            if (zzmaVar2 != null && (i10 == -1 || zzmaVar2.zzb() == i10)) {
                zzlw zzaa2 = zzaa(zzmaVar2);
                zzaa2.zzf(i11);
                zzaa2.zze(obj);
                zzaa2.zzd();
            }
        }
    }

    public final void zzae(@Nullable Object obj) {
        long j10;
        Object obj2 = this.zzJ;
        boolean z10 = false;
        if (obj2 != null && obj2 != obj) {
            z10 = true;
        }
        if (z10) {
            j10 = this.zzz;
        } else {
            j10 = -9223372036854775807L;
        }
        boolean zzx = this.zzl.zzx(obj, j10);
        if (z10) {
            Object obj3 = this.zzJ;
            Surface surface = this.zzK;
            if (obj3 == surface) {
                surface.release();
                this.zzK = null;
            }
        }
        this.zzJ = obj;
        if (!zzx) {
            zzaf(zzin.zzd(new zzku(3), 1003));
        }
    }

    private final void zzaf(@Nullable zzin zzinVar) {
        zzls zzlsVar = this.zzU;
        zzls zzb = zzlsVar.zzb(zzlsVar.zzb);
        zzb.zzq = zzb.zzs;
        zzb.zzr = 0L;
        zzls zzY = zzY(zzb, 1);
        if (zzinVar != null) {
            zzY = zzY.zze(zzinVar);
        }
        this.zzB++;
        this.zzl.zzu();
        zzag(zzY, 0, false, 5, -9223372036854775807L, -1, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:263:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0371  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x040a  */
    /* JADX WARN: Removed duplicated region for block: B:389:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0456 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:403:0x0460 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:409:0x046c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:419:0x047f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:424:0x048b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:433:0x04a3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:439:0x04b0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:445:0x04c7  */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzag(final com.google.android.gms.internal.ads.zzls r43, final int r44, boolean r45, int r46, long r47, int r49, boolean r50) {
        /*
            Method dump skipped, instructions count: 1241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkh.zzag(com.google.android.gms.internal.ads.zzls, int, boolean, int, long, int, boolean):void");
    }

    private final void zzah() {
        int zzg = zzg();
        if (zzg != 2 && zzg != 3) {
            this.zzx.zza(false);
            this.zzy.zza(false);
            return;
        }
        zzai();
        boolean z10 = this.zzU.zzp;
        this.zzx.zza(zzv());
        this.zzy.zza(zzv());
    }

    private final void zzai() {
        IllegalStateException illegalStateException;
        this.zze.zzb();
        Looper looper = this.zzs;
        if (Thread.currentThread() != looper.getThread()) {
            Object[] objArr = {Thread.currentThread().getName(), looper.getThread().getName()};
            String str = zzex.zza;
            String format = String.format(Locale.US, "Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread", objArr);
            if (!this.zzQ) {
                if (this.zzR) {
                    illegalStateException = null;
                } else {
                    illegalStateException = new IllegalStateException();
                }
                zzea.zzg("ExoPlayerImpl", format, illegalStateException);
                this.zzR = true;
                return;
            }
            throw new IllegalStateException(format);
        }
    }

    @Override // com.google.android.gms.internal.ads.zziy
    public final void zzA() {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = zzex.zza;
        String zza = zzaq.zza();
        zzea.zze("ExoPlayerImpl", "Release " + hexString + " [AndroidXMedia3/1.8.0-alpha01] [" + str + "] [" + zza + "]");
        zzai();
        this.zzx.zza(false);
        this.zzy.zza(false);
        if (!this.zzl.zzw()) {
            zzdz zzdzVar = this.zzm;
            zzdzVar.zzd(10, new zzdw() { // from class: com.google.android.gms.internal.ads.zzjg
                @Override // com.google.android.gms.internal.ads.zzdw
                public final void zza(Object obj) {
                    int i10 = zzkh.zzd;
                    ((zzbe) obj).zzk(zzin.zzd(new zzku(1), 1003));
                }
            });
            zzdzVar.zzc();
        }
        this.zzm.zze();
        this.zzk.zzf(null);
        zzzl zzzlVar = this.zzt;
        zzmo zzmoVar = this.zzr;
        zzzlVar.zzg(zzmoVar);
        zzls zzlsVar = this.zzU;
        boolean z10 = zzlsVar.zzp;
        zzls zzY = zzY(zzlsVar, 1);
        this.zzU = zzY;
        zzls zzb = zzY.zzb(zzY.zzb);
        this.zzU = zzb;
        zzb.zzq = zzb.zzs;
        this.zzU.zzr = 0L;
        zzmoVar.zzR();
        Surface surface = this.zzK;
        if (surface != null) {
            surface.release();
            this.zzK = null;
        }
        int i10 = zzcw.zza;
    }

    @Override // com.google.android.gms.internal.ads.zziy
    public final void zzB(zzmr zzmrVar) {
        zzai();
        this.zzr.zzS(zzmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zziy
    public final void zzC(zzvj zzvjVar) {
        boolean z10;
        zzai();
        List singletonList = Collections.singletonList(zzvjVar);
        zzai();
        zzai();
        zzS(this.zzU);
        zzl();
        this.zzB++;
        List list = this.zzp;
        if (!list.isEmpty()) {
            int size = list.size();
            for (int i10 = size - 1; i10 >= 0; i10--) {
                list.remove(i10);
            }
            this.zzY = this.zzY.zzh(0, size);
        }
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < singletonList.size(); i11++) {
            zzlp zzlpVar = new zzlp((zzvj) singletonList.get(i11), this.zzq);
            arrayList.add(zzlpVar);
            list.add(i11, new zzkf(zzlpVar.zzb, zzlpVar.zza));
        }
        this.zzY = this.zzY.zzg(0, arrayList.size());
        zzly zzlyVar = new zzly(list, this.zzY);
        if (!zzlyVar.zzo() && zzlyVar.zzc() < 0) {
            throw new zzaa(zzlyVar, -1, -9223372036854775807L);
        }
        int zzg = zzlyVar.zzg(false);
        zzls zzZ = zzZ(this.zzU, zzlyVar, zzX(zzlyVar, zzg, -9223372036854775807L));
        int i12 = zzZ.zze;
        if (zzg != -1 && i12 != 1) {
            i12 = 4;
            if (!zzlyVar.zzo() && zzg < zzlyVar.zzc()) {
                i12 = 2;
            }
        }
        zzls zzY = zzY(zzZ, i12);
        this.zzl.zzy(arrayList, zzg, zzex.zzs(-9223372036854775807L), this.zzY);
        if (!this.zzU.zzb.zza.equals(zzY.zzb.zza) && !this.zzU.zza.zzo()) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzag(zzY, 0, z10, 4, zzU(zzY), -1, false);
    }

    @Nullable
    public final zzin zzF() {
        zzai();
        return this.zzU.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzg
    public final void zzb(int i10, long j10, int i11, boolean z10) {
        boolean z11;
        zzai();
        if (i10 != -1) {
            if (i10 >= 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            zzdd.zzd(z11);
            zzbl zzblVar = this.zzU.zza;
            if (!zzblVar.zzo() && i10 >= zzblVar.zzc()) {
                return;
            }
            this.zzr.zzv();
            this.zzB++;
            if (zzx()) {
                zzea.zzf("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                zzkq zzkqVar = new zzkq(this.zzU);
                zzkqVar.zza(1);
                this.zzX.zza.zzab(zzkqVar);
                return;
            }
            zzls zzlsVar = this.zzU;
            int i12 = zzlsVar.zze;
            if (i12 == 3 || (i12 == 4 && !zzblVar.zzo())) {
                zzlsVar = zzY(this.zzU, 2);
            }
            int zze = zze();
            zzls zzZ = zzZ(zzlsVar, zzblVar, zzX(zzblVar, i10, j10));
            this.zzl.zzo(zzblVar, i10, zzex.zzs(j10));
            zzag(zzZ, 0, true, 1, zzU(zzZ), zze, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzc() {
        zzai();
        if (zzx()) {
            return this.zzU.zzb.zzb;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzd() {
        zzai();
        if (zzx()) {
            return this.zzU.zzb.zzc;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zze() {
        zzai();
        int zzS = zzS(this.zzU);
        if (zzS == -1) {
            return 0;
        }
        return zzS;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzf() {
        zzai();
        if (this.zzU.zza.zzo()) {
            return 0;
        }
        zzls zzlsVar = this.zzU;
        return zzlsVar.zza.zza(zzlsVar.zzb.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzg() {
        zzai();
        return this.zzU.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzh() {
        zzai();
        return this.zzU.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzi() {
        zzai();
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final long zzj() {
        zzai();
        if (zzx()) {
            zzls zzlsVar = this.zzU;
            if (zzlsVar.zzk.equals(zzlsVar.zzb)) {
                return zzex.zzv(this.zzU.zzq);
            }
            return zzm();
        }
        zzai();
        if (this.zzU.zza.zzo()) {
            return this.zzW;
        }
        zzls zzlsVar2 = this.zzU;
        long j10 = 0;
        if (zzlsVar2.zzk.zzd != zzlsVar2.zzb.zzd) {
            return zzex.zzv(zzlsVar2.zza.zze(zze(), this.zza, 0L).zzm);
        }
        long j11 = zzlsVar2.zzq;
        if (this.zzU.zzk.zzb()) {
            zzls zzlsVar3 = this.zzU;
            zzlsVar3.zza.zzn(zzlsVar3.zzk.zza, this.zzo).zzg(this.zzU.zzk.zzb);
        } else {
            j10 = j11;
        }
        zzls zzlsVar4 = this.zzU;
        zzW(zzlsVar4.zza, zzlsVar4.zzk, j10);
        return zzex.zzv(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final long zzk() {
        zzai();
        return zzT(this.zzU);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final long zzl() {
        zzai();
        return zzex.zzv(zzU(this.zzU));
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final long zzm() {
        zzai();
        if (!zzx()) {
            zzbl zzo = zzo();
            if (zzo.zzo()) {
                return -9223372036854775807L;
            }
            return zzex.zzv(zzo.zze(zze(), this.zza, 0L).zzm);
        }
        zzls zzlsVar = this.zzU;
        zzvh zzvhVar = zzlsVar.zzb;
        zzbl zzblVar = zzlsVar.zza;
        Object obj = zzvhVar.zza;
        zzbj zzbjVar = this.zzo;
        zzblVar.zzn(obj, zzbjVar);
        return zzex.zzv(zzbjVar.zzf(zzvhVar.zzb, zzvhVar.zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final long zzn() {
        zzai();
        return zzex.zzv(this.zzU.zzr);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final zzbl zzo() {
        zzai();
        return this.zzU.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final zzbt zzp() {
        zzai();
        return this.zzU.zzi.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final void zzq() {
        int i10;
        zzai();
        zzls zzlsVar = this.zzU;
        if (zzlsVar.zze != 1) {
            return;
        }
        zzls zze = zzlsVar.zze(null);
        if (true != zze.zza.zzo()) {
            i10 = 2;
        } else {
            i10 = 4;
        }
        zzls zzY = zzY(zze, i10);
        this.zzB++;
        this.zzl.zzn();
        zzag(zzY, 1, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final void zzr(boolean z10) {
        zzai();
        zzls zzlsVar = this.zzU;
        int i10 = zzlsVar.zzn;
        int i11 = 0;
        if (i10 == 1) {
            if (!z10) {
                i10 = 1;
                i11 = 1;
            } else {
                i10 = 1;
            }
        }
        if (zzlsVar.zzl == z10 && i10 == i11 && zzlsVar.zzm == 1) {
            return;
        }
        this.zzB++;
        zzls zzd2 = zzlsVar.zzd(z10, 1, i11);
        this.zzl.zzr(z10, 1, i11);
        zzag(zzd2, 0, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final void zzs(@Nullable Surface surface) {
        int i10;
        zzai();
        zzae(surface);
        if (surface == null) {
            i10 = 0;
        } else {
            i10 = -1;
        }
        zzac(i10, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final void zzt(float f10) {
        zzai();
        String str = zzex.zza;
        final float max = Math.max(0.0f, Math.min(f10, 1.0f));
        if (this.zzO == max) {
            return;
        }
        this.zzO = max;
        this.zzl.zzt(max);
        zzdz zzdzVar = this.zzm;
        zzdzVar.zzd(22, new zzdw() { // from class: com.google.android.gms.internal.ads.zzje
            @Override // com.google.android.gms.internal.ads.zzdw
            public final void zza(Object obj) {
                int i10 = zzkh.zzd;
                ((zzbe) obj).zzt(max);
            }
        });
        zzdzVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final void zzu() {
        zzai();
        zzaf(null);
        new zzcw(zzfyq.zzn(), this.zzU.zzs);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final boolean zzv() {
        zzai();
        return this.zzU.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final boolean zzw() {
        zzai();
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final boolean zzx() {
        zzai();
        return this.zzU.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zziy
    public final int zzy() {
        zzai();
        int length = this.zzh.length;
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zziy
    public final void zzz(zzmr zzmrVar) {
        this.zzr.zzu(zzmrVar);
    }
}
