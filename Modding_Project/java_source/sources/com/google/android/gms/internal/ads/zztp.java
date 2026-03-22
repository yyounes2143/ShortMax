package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zztp extends zzic {
    private static final byte[] zzb = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    @Nullable
    private zzti zzA;
    private int zzB;
    private boolean zzC;
    private boolean zzD;
    private boolean zzE;
    private boolean zzF;
    private boolean zzG;
    private long zzH;
    private boolean zzI;
    private long zzJ;
    private int zzK;
    private int zzL;
    @Nullable
    private ByteBuffer zzM;
    private boolean zzN;
    private boolean zzO;
    private boolean zzP;
    private boolean zzQ;
    private boolean zzR;
    private boolean zzS;
    private int zzT;
    private int zzU;
    private int zzV;
    private boolean zzW;
    private boolean zzX;
    private boolean zzY;
    private long zzZ;
    protected zzid zza;
    private long zzaa;
    private boolean zzab;
    private boolean zzac;
    private boolean zzad;
    private zztn zzae;
    private long zzaf;
    private boolean zzag;
    private boolean zzah;
    private boolean zzai;
    private long zzaj;
    private long zzak;
    @Nullable
    private zzsi zzal;
    @Nullable
    private zzsi zzam;
    private final zztd zzc;
    private final zztr zzd;
    private final float zze;
    private final zzhs zzf;
    private final zzhs zzg;
    private final zzhs zzh;
    private final zzsw zzi;
    private final MediaCodec.BufferInfo zzj;
    private final ArrayDeque zzk;
    private final zzrv zzl;
    @Nullable
    private zzz zzm;
    private zzz zzn;
    private zzlz zzo;
    @Nullable
    private MediaCrypto zzp;
    private long zzq;
    private float zzr;
    private float zzs;
    @Nullable
    private zztf zzt;
    @Nullable
    private zzz zzu;
    @Nullable
    private MediaFormat zzv;
    private boolean zzw;
    private float zzx;
    @Nullable
    private ArrayDeque zzy;
    @Nullable
    private zztl zzz;

    public zztp(int i10, zztd zztdVar, zztr zztrVar, boolean z10, float f10) {
        super(i10);
        this.zzc = zztdVar;
        zztrVar.getClass();
        this.zzd = zztrVar;
        this.zze = f10;
        this.zzf = new zzhs(0, 0);
        this.zzg = new zzhs(0, 0);
        this.zzh = new zzhs(2, 0);
        zzsw zzswVar = new zzsw();
        this.zzi = zzswVar;
        this.zzj = new MediaCodec.BufferInfo();
        this.zzr = 1.0f;
        this.zzs = 1.0f;
        this.zzq = -9223372036854775807L;
        this.zzk = new ArrayDeque();
        this.zzae = zztn.zza;
        zzswVar.zzj(0);
        zzswVar.zzc.order(ByteOrder.nativeOrder());
        this.zzl = new zzrv();
        this.zzx = -1.0f;
        this.zzB = 0;
        this.zzT = 0;
        this.zzK = -1;
        this.zzL = -1;
        this.zzJ = -9223372036854775807L;
        this.zzZ = -9223372036854775807L;
        this.zzaa = -9223372036854775807L;
        this.zzaf = -9223372036854775807L;
        this.zzH = -9223372036854775807L;
        this.zzU = 0;
        this.zzV = 0;
        this.zza = new zzid();
        this.zzaj = -9223372036854775807L;
        this.zzak = -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean zzaY(zzz zzzVar) {
        if (zzzVar.zzN != 0) {
            return false;
        }
        return true;
    }

    private final void zzaf() {
        this.zzP = false;
        zzal();
    }

    private final void zzag() throws zzin {
        if (this.zzW) {
            this.zzU = 1;
            this.zzV = 3;
            return;
        }
        zzaM();
        zzaJ();
    }

    private final void zzah() {
        try {
            zztf zztfVar = this.zzt;
            zzdd.zzb(zztfVar);
            zztfVar.zzj();
        } finally {
            zzaN();
        }
    }

    @TargetApi(23)
    private final void zzai() throws zzin {
        int i10 = this.zzV;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    this.zzac = true;
                    zzau();
                    return;
                }
                zzaM();
                zzaJ();
                return;
            }
            zzah();
            zzbc();
            return;
        }
        zzah();
    }

    private final void zzal() {
        zzam();
        this.zzR = false;
        this.zzi.zzb();
        this.zzh.zzb();
        this.zzQ = false;
        this.zzl.zzb();
    }

    private final void zzam() {
        this.zzZ = -9223372036854775807L;
        this.zzaa = -9223372036854775807L;
        this.zzaf = -9223372036854775807L;
    }

    private final void zzas() {
        this.zzK = -1;
        this.zzg.zzc = null;
    }

    private final void zzba() {
        this.zzL = -1;
        this.zzM = null;
    }

    private final void zzbb(zztn zztnVar) {
        this.zzae = zztnVar;
        if (zztnVar.zzd != -9223372036854775807L) {
            this.zzag = true;
        }
    }

    @RequiresApi(23)
    private final void zzbc() throws zzin {
        zzsi zzsiVar = this.zzam;
        zzsiVar.getClass();
        this.zzal = zzsiVar;
        this.zzU = 0;
        this.zzV = 0;
    }

    @TargetApi(23)
    private final boolean zzbd() throws zzin {
        if (this.zzW) {
            this.zzU = 1;
            if (this.zzD) {
                this.zzV = 3;
                return false;
            }
            this.zzV = 2;
        } else {
            zzbc();
        }
        return true;
    }

    private final boolean zzbe() {
        if (this.zzt != null) {
            if (zzaX()) {
                zzaM();
                return true;
            } else if (zzaV()) {
                zzah();
                return false;
            } else {
                long j10 = this.zzak;
                if (j10 != -9223372036854775807L && zzcW() <= j10 && this.zzaf < j10) {
                    this.zzai = true;
                    this.zzak = -9223372036854775807L;
                    return false;
                }
                return false;
            }
        }
        return false;
    }

    private final boolean zzbf() {
        if (this.zzL >= 0) {
            return true;
        }
        return false;
    }

    private final boolean zzbg(long j10, long j11) {
        if (j11 >= j10) {
            return false;
        }
        zzz zzzVar = this.zzn;
        if (zzzVar == null || !Objects.equals(zzzVar.zzo, MimeTypes.AUDIO_OPUS)) {
            return true;
        }
        if (zzaeq.zzf(j10, j11)) {
            return false;
        }
        return true;
    }

    private final boolean zzbh(int i10) throws zzin {
        zzkv zzl = zzl();
        zzhs zzhsVar = this.zzf;
        zzhsVar.zzb();
        int zzcV = zzcV(zzl, zzhsVar, i10 | 4);
        if (zzcV == -5) {
            zzae(zzl);
            return true;
        } else if (zzcV == -4 && zzhsVar.zzf()) {
            this.zzab = true;
            zzai();
            return false;
        } else {
            return false;
        }
    }

    private final boolean zzbi(long j10) {
        if (this.zzq != -9223372036854775807L && zzcX().zzb() - j10 >= this.zzq) {
            return false;
        }
        return true;
    }

    private final boolean zzbj(@Nullable zzz zzzVar) throws zzin {
        if (this.zzt != null && this.zzV != 3 && zzcU() != 0) {
            float f10 = this.zzs;
            zzzVar.getClass();
            float zzaa = zzaa(f10, zzzVar, zzU());
            float f11 = this.zzx;
            if (f11 != zzaa) {
                if (zzaa == -1.0f) {
                    zzag();
                    return false;
                } else if (f11 != -1.0f || zzaa > this.zze) {
                    Bundle bundle = new Bundle();
                    bundle.putFloat("operating-rate", zzaa);
                    zztf zztfVar = this.zzt;
                    zztfVar.getClass();
                    zztfVar.zzq(bundle);
                    this.zzx = zzaa;
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzic
    public void zzA(long j10, boolean z10) throws zzin {
        this.zzab = false;
        this.zzac = false;
        if (this.zzP) {
            zzal();
        } else {
            zzaP();
        }
        zzet zzetVar = this.zzae.zze;
        if (zzetVar.zza() > 0) {
            this.zzad = true;
        }
        zzetVar.zze();
        this.zzk.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzic
    public void zzD() {
        try {
            zzaf();
            zzaM();
        } finally {
            this.zzam = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003d, code lost:
        if (r7 >= r5) goto L17;
     */
    @Override // com.google.android.gms.internal.ads.zzic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zzG(com.google.android.gms.internal.ads.zzz[] r13, long r14, long r16, com.google.android.gms.internal.ads.zzvh r18) throws com.google.android.gms.internal.ads.zzin {
        /*
            r12 = this;
            r0 = r12
            com.google.android.gms.internal.ads.zztn r1 = r0.zzae
            long r1 = r1.zzd
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 != 0) goto L27
            com.google.android.gms.internal.ads.zztn r1 = new com.google.android.gms.internal.ads.zztn
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = r1
            r8 = r14
            r10 = r16
            r5.<init>(r6, r8, r10)
            r12.zzbb(r1)
            boolean r1 = r0.zzah
            if (r1 == 0) goto L5b
            r12.zzat()
            return
        L27:
            java.util.ArrayDeque r1 = r0.zzk
            boolean r2 = r1.isEmpty()
            if (r2 == 0) goto L5c
            long r5 = r0.zzZ
            int r2 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r2 == 0) goto L3f
            long r7 = r0.zzaf
            int r2 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r2 == 0) goto L5c
            int r2 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r2 < 0) goto L5c
        L3f:
            com.google.android.gms.internal.ads.zztn r1 = new com.google.android.gms.internal.ads.zztn
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = r1
            r8 = r14
            r10 = r16
            r5.<init>(r6, r8, r10)
            r12.zzbb(r1)
            com.google.android.gms.internal.ads.zztn r1 = r0.zzae
            long r1 = r1.zzd
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 == 0) goto L5b
            r12.zzat()
        L5b:
            return
        L5c:
            com.google.android.gms.internal.ads.zztn r9 = new com.google.android.gms.internal.ads.zztn
            long r3 = r0.zzZ
            r2 = r9
            r5 = r14
            r7 = r16
            r2.<init>(r3, r5, r7)
            r1.add(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztp.zzG(com.google.android.gms.internal.ads.zzz[], long, long, com.google.android.gms.internal.ads.zzvh):void");
    }

    @Override // com.google.android.gms.internal.ads.zzic, com.google.android.gms.internal.ads.zzma
    public void zzN(float f10, float f11) throws zzin {
        this.zzr = f10;
        this.zzs = f11;
        zzbj(this.zzu);
    }

    /* JADX WARN: Code restructure failed: missing block: B:181:0x0298, code lost:
        r1 = r8;
        r16 = r14;
        r4 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x02fa, code lost:
        if (r15.zzn != null) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x03c0, code lost:
        r1 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x03e1, code lost:
        r5 = r4.zzt;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x03e3, code lost:
        if (r5 == null) goto L230;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x03e8, code lost:
        if (r4.zzU == 2) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x03ec, code lost:
        if (r4.zzab == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x03ee, code lost:
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x03f3, code lost:
        if (r4.zzK >= 0) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x03f5, code lost:
        r3 = r5.zza();
        r4.zzK = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x03fb, code lost:
        if (r3 < 0) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x03fd, code lost:
        r6 = r4.zzg;
        r6.zzc = r5.zzf(r3);
        r6.zzb();
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x040b, code lost:
        if (r4.zzU != 1) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x040f, code lost:
        if (r4.zzG != false) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x0411, code lost:
        r4.zzX = true;
        r5.zzk(r4.zzK, 0, 0, 0, 4);
        zzas();
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x0421, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x0422, code lost:
        r2 = r0;
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x0426, code lost:
        r4.zzU = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x042b, code lost:
        if (r4.zzE == false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x042d, code lost:
        r3 = 0;
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x042e, code lost:
        r4.zzE = false;
        r6 = r4.zzg.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x0434, code lost:
        if (r6 == null) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x0436, code lost:
        r6.put(com.google.android.gms.internal.ads.zztp.zzb);
        r5.zzk(r4.zzK, 0, 38, 0, 0);
        zzas();
        r4.zzW = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x044d, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x044e, code lost:
        r2 = r0;
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x0456, code lost:
        throw r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x0457, code lost:
        r3 = false;
        r3 = false;
        r3 = false;
        r3 = false;
        r3 = false;
        r3 = false;
        r3 = false;
        r3 = false;
        r3 = false;
        r3 = false;
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x045a, code lost:
        if (r4.zzT != 1) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x045c, code lost:
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x045d, code lost:
        r6 = r4.zzu;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x045f, code lost:
        if (r6 == null) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x0467, code lost:
        if (r14 >= r6.zzr.size()) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x0469, code lost:
        r6 = (byte[]) r4.zzu.zzr.get(r14);
        r7 = r4.zzg.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x0477, code lost:
        if (r7 == null) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x0479, code lost:
        r7.put(r6);
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x047f, code lost:
        throw r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x0480, code lost:
        r4.zzT = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x0483, code lost:
        throw r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:313:0x0484, code lost:
        r6 = r4.zzg;
        r7 = r6.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x0488, code lost:
        if (r7 == null) goto L217;
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x048a, code lost:
        r7 = r7.position();
        r8 = zzl();
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x0492, code lost:
        r6 = r4.zzcV(r8, r6, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x0497, code lost:
        if (r6 != (-3)) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x049d, code lost:
        if (zzR() == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x049f, code lost:
        r4.zzaa = r4.zzZ;
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x04a6, code lost:
        if (r6 != (-5)) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x04aa, code lost:
        if (r4.zzT != 2) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x04ac, code lost:
        r4.zzg.zzb();
        r4.zzT = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x04b3, code lost:
        r4.zzae(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x04b8, code lost:
        r6 = r4.zzg;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x04be, code lost:
        if (r6.zzf() == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x04c0, code lost:
        r4.zzaa = r4.zzZ;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x04c6, code lost:
        if (r4.zzT != 2) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x04c8, code lost:
        r6.zzb();
        r4.zzT = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x04cd, code lost:
        r4.zzab = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x04d1, code lost:
        if (r4.zzW != false) goto L207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x04d3, code lost:
        zzai();
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x04da, code lost:
        if (r4.zzG != false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x04dc, code lost:
        r4.zzX = true;
        r5.zzk(r4.zzK, 0, 0, 0, 4);
        zzas();
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x04ef, code lost:
        if (r4.zzW != false) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x04f5, code lost:
        if (r6.zzg() != false) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x04f7, code lost:
        r6.zzb();
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x04fc, code lost:
        if (r4.zzT != 2) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x04fe, code lost:
        r4.zzT = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x0506, code lost:
        if (r4.zzaU(r6) != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x0508, code lost:
        r8 = r6.zzl();
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x050c, code lost:
        if (r8 == false) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x050e, code lost:
        r6.zzb.zzb(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x0513, code lost:
        r9 = r6.zze;
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x0517, code lost:
        if (r4.zzad == false) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x0519, code lost:
        r7 = r4.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x051f, code lost:
        if (r7.isEmpty() != false) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x0521, code lost:
        r7 = ((com.google.android.gms.internal.ads.zztn) r7.peekLast()).zze;
        r11 = r4.zzm;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x052b, code lost:
        if (r11 == null) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x052d, code lost:
        r7.zzd(r9, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x0531, code lost:
        throw r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x0532, code lost:
        r7 = r4.zzae.zze;
        r11 = r4.zzm;
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x0538, code lost:
        if (r11 == null) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x053a, code lost:
        r7.zzd(r9, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x053d, code lost:
        r4.zzad = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x0540, code lost:
        throw r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x0541, code lost:
        r14 = java.lang.Math.max(r4.zzZ, r9);
        r4.zzZ = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x054d, code lost:
        if (zzR() != false) goto L199;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x0553, code lost:
        if (r6.zzh() == false) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x0555, code lost:
        r4.zzaa = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x0557, code lost:
        r6.zzk();
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x055e, code lost:
        if (r6.zze() == false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x0560, code lost:
        r4.zzan(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x0563, code lost:
        r4.zzaL(r6);
        r11 = r4.zzay(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x056e, code lost:
        if (android.os.Build.VERSION.SDK_INT < 34) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x0572, code lost:
        if ((r11 & 32) != 0) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x0574, code lost:
        zzo();
        r4.zzak = java.lang.Math.max(r4.zzak, r6.zze);
     */
    /* JADX WARN: Code restructure failed: missing block: B:380:0x0581, code lost:
        if (r8 == false) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x0583, code lost:
        r5.zzl(r4.zzK, 0, r6.zzb, r9, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:384:0x0593, code lost:
        r7 = r4.zzK;
        r6 = r6.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x0597, code lost:
        if (r6 == null) goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x0599, code lost:
        r5.zzk(r7, 0, r6.limit(), r9, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x05a3, code lost:
        zzas();
        r4.zzW = true;
        r4.zzT = 0;
        r4.zza.zzc++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x05b3, code lost:
        throw r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x05b4, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x05b5, code lost:
        r4.zzao(r0);
        r4.zzbh(0);
        zzah();
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x05c7, code lost:
        throw r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x05c8, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x05c9, code lost:
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x05cb, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x05cc, code lost:
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a5, code lost:
        throw r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ad, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ae, code lost:
        r15.zzac = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b0, code lost:
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00b3, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b4, code lost:
        r2 = r0;
        r1 = true;
        r4 = r15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:260:0x03cc A[LOOP:0: B:148:0x0229->B:260:0x03cc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:433:0x0620  */
    /* JADX WARN: Removed duplicated region for block: B:439:0x063a  */
    /* JADX WARN: Removed duplicated region for block: B:444:0x0648  */
    /* JADX WARN: Removed duplicated region for block: B:447:0x0657  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x065a  */
    /* JADX WARN: Type inference failed for: r14v10, types: [java.lang.Throwable, android.media.MediaFormat] */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v44 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v63 */
    /* JADX WARN: Type inference failed for: r3v64 */
    /* JADX WARN: Type inference failed for: r3v65 */
    @Override // com.google.android.gms.internal.ads.zzma
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zzW(long r27, long r29) throws com.google.android.gms.internal.ads.zzin {
        /*
            Method dump skipped, instructions count: 1651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztp.zzW(long, long):void");
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public boolean zzX() {
        return this.zzac;
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public boolean zzY() {
        if (this.zzm == null) {
            return false;
        }
        if (zzT() || zzbf()) {
            return true;
        }
        if (this.zzJ == -9223372036854775807L || zzcX().zzb() >= this.zzJ) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzmd
    public final int zzZ(zzz zzzVar) throws zzin {
        try {
            return zzab(this.zzd, zzzVar);
        } catch (zztw e10) {
            throw zzk(e10, zzzVar, false, 4002);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long zzaA() {
        return this.zzae.zzd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long zzaB() {
        return this.zzae.zzc;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final MediaFormat zzaC() {
        return this.zzv;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final zzlz zzaE() {
        return this.zzo;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final zztf zzaF() {
        return this.zzt;
    }

    protected zzth zzaG(Throwable th2, @Nullable zzti zztiVar) {
        return new zzth(th2, zztiVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final zzti zzaH() {
        return this.zzA;
    }

    public final void zzaI() {
        this.zzah = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:292:0x04e6 A[Catch: Exception -> 0x02a6, TryCatch #12 {Exception -> 0x02a6, blocks: (B:133:0x0299, B:135:0x029f, B:140:0x02aa, B:143:0x02c8, B:145:0x02ce, B:147:0x02d4, B:151:0x02e6, B:155:0x02f3, B:159:0x0300, B:163:0x030d, B:166:0x0319, B:170:0x032b, B:173:0x0343, B:175:0x0354, B:176:0x0359, B:178:0x035d, B:179:0x0362, B:186:0x0380, B:187:0x0385, B:189:0x038a, B:190:0x038f, B:192:0x0394, B:193:0x0399, B:195:0x039d, B:196:0x03a2, B:198:0x03a6, B:199:0x03ab, B:201:0x03b1, B:202:0x03b6, B:204:0x03ba, B:205:0x03bf, B:207:0x03c3, B:208:0x03c8, B:210:0x03cc, B:211:0x03d1, B:213:0x03d5, B:214:0x03da, B:216:0x03de, B:217:0x03e3, B:219:0x03e7, B:220:0x03ec, B:222:0x03f0, B:223:0x03f5, B:225:0x03f9, B:226:0x03fe, B:228:0x0402, B:229:0x0407, B:231:0x040b, B:232:0x0410, B:256:0x0452, B:260:0x045b, B:270:0x0495, B:272:0x049f, B:274:0x04a7, B:276:0x04b1, B:278:0x04b9, B:280:0x04c1, B:284:0x04cc, B:286:0x04d2, B:290:0x04dd, B:292:0x04e6, B:317:0x053d, B:319:0x0543, B:321:0x054a, B:322:0x0557, B:297:0x04f3, B:299:0x04fb, B:301:0x0503, B:303:0x050b, B:305:0x0513, B:307:0x051b, B:309:0x0523, B:311:0x052d, B:313:0x0537, B:250:0x043b, B:251:0x0442), top: B:383:0x0299 }] */
    /* JADX WARN: Removed duplicated region for block: B:319:0x0543 A[Catch: Exception -> 0x02a6, TryCatch #12 {Exception -> 0x02a6, blocks: (B:133:0x0299, B:135:0x029f, B:140:0x02aa, B:143:0x02c8, B:145:0x02ce, B:147:0x02d4, B:151:0x02e6, B:155:0x02f3, B:159:0x0300, B:163:0x030d, B:166:0x0319, B:170:0x032b, B:173:0x0343, B:175:0x0354, B:176:0x0359, B:178:0x035d, B:179:0x0362, B:186:0x0380, B:187:0x0385, B:189:0x038a, B:190:0x038f, B:192:0x0394, B:193:0x0399, B:195:0x039d, B:196:0x03a2, B:198:0x03a6, B:199:0x03ab, B:201:0x03b1, B:202:0x03b6, B:204:0x03ba, B:205:0x03bf, B:207:0x03c3, B:208:0x03c8, B:210:0x03cc, B:211:0x03d1, B:213:0x03d5, B:214:0x03da, B:216:0x03de, B:217:0x03e3, B:219:0x03e7, B:220:0x03ec, B:222:0x03f0, B:223:0x03f5, B:225:0x03f9, B:226:0x03fe, B:228:0x0402, B:229:0x0407, B:231:0x040b, B:232:0x0410, B:256:0x0452, B:260:0x045b, B:270:0x0495, B:272:0x049f, B:274:0x04a7, B:276:0x04b1, B:278:0x04b9, B:280:0x04c1, B:284:0x04cc, B:286:0x04d2, B:290:0x04dd, B:292:0x04e6, B:317:0x053d, B:319:0x0543, B:321:0x054a, B:322:0x0557, B:297:0x04f3, B:299:0x04fb, B:301:0x0503, B:303:0x050b, B:305:0x0513, B:307:0x051b, B:309:0x0523, B:311:0x052d, B:313:0x0537, B:250:0x043b, B:251:0x0442), top: B:383:0x0299 }] */
    /* JADX WARN: Removed duplicated region for block: B:341:0x05bd A[Catch: zztl -> 0x05c0, TryCatch #11 {zztl -> 0x05c0, blocks: (B:339:0x05a2, B:341:0x05bd, B:345:0x05c8, B:348:0x05cf, B:349:0x05d1, B:344:0x05c2, B:351:0x05d5, B:352:0x05d6, B:355:0x05df, B:356:0x05e0, B:357:0x05ed, B:359:0x05f1), top: B:382:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:344:0x05c2 A[Catch: zztl -> 0x05c0, TryCatch #11 {zztl -> 0x05c0, blocks: (B:339:0x05a2, B:341:0x05bd, B:345:0x05c8, B:348:0x05cf, B:349:0x05d1, B:344:0x05c2, B:351:0x05d5, B:352:0x05d6, B:355:0x05df, B:356:0x05e0, B:357:0x05ed, B:359:0x05f1), top: B:382:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:347:0x05ce  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x0586 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:398:0x05cf A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [com.google.android.gms.internal.ads.zzto, android.media.MediaCrypto] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzaJ() throws com.google.android.gms.internal.ads.zzin {
        /*
            Method dump skipped, instructions count: 1533
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztp.zzaJ():void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void zzaK(long j10) {
        this.zzaf = j10;
        while (true) {
            ArrayDeque arrayDeque = this.zzk;
            if (!arrayDeque.isEmpty() && j10 >= ((zztn) arrayDeque.peek()).zzb) {
                zztn zztnVar = (zztn) arrayDeque.poll();
                zztnVar.getClass();
                zzbb(zztnVar);
                zzat();
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzaM() {
        try {
            zztf zztfVar = this.zzt;
            if (zztfVar != null) {
                zztfVar.zzm();
                this.zza.zzb++;
                zzti zztiVar = this.zzA;
                if (zztiVar != null) {
                    zzaq(zztiVar.zza);
                } else {
                    throw null;
                }
            }
            this.zzt = null;
            this.zzp = null;
            this.zzal = null;
            zzaO();
        } catch (Throwable th2) {
            this.zzt = null;
            this.zzp = null;
            this.zzal = null;
            zzaO();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void zzaN() {
        zzas();
        zzba();
        zzam();
        this.zzJ = -9223372036854775807L;
        this.zzX = false;
        this.zzH = -9223372036854775807L;
        this.zzW = false;
        this.zzE = false;
        this.zzF = false;
        this.zzN = false;
        this.zzO = false;
        this.zzU = 0;
        this.zzV = 0;
        this.zzT = this.zzS ? 1 : 0;
        this.zzai = false;
        this.zzaj = -9223372036854775807L;
        this.zzak = -9223372036854775807L;
    }

    @CallSuper
    protected final void zzaO() {
        zzaN();
        this.zzy = null;
        this.zzA = null;
        this.zzu = null;
        this.zzv = null;
        this.zzw = false;
        this.zzY = false;
        this.zzx = -1.0f;
        this.zzB = 0;
        this.zzC = false;
        this.zzD = false;
        this.zzG = false;
        this.zzI = false;
        this.zzS = false;
        this.zzT = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzaP() throws zzin {
        boolean zzbe = zzbe();
        if (zzbe) {
            zzaJ();
        }
        return zzbe;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzaQ() {
        return this.zzai;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzaR() {
        return this.zzP;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzaS(zzz zzzVar) {
        if (this.zzam == null && zzaw(zzzVar)) {
            return true;
        }
        return false;
    }

    protected boolean zzaT(zzz zzzVar) throws zzin {
        return true;
    }

    protected boolean zzaU(zzhs zzhsVar) {
        return false;
    }

    protected boolean zzaV() {
        return true;
    }

    protected boolean zzaW(zzti zztiVar) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean zzaX() {
        int i10 = this.zzV;
        if (i10 == 3 || ((this.zzC && !this.zzY) || (this.zzD && this.zzX))) {
            return true;
        }
        if (i10 == 2) {
            try {
                zzbc();
                return false;
            } catch (zzin e10) {
                zzea.zzg("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e10);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzaZ() throws zzin {
        return zzbj(this.zzu);
    }

    protected float zzaa(float f10, zzz zzzVar, zzz[] zzzVarArr) {
        throw null;
    }

    protected abstract int zzab(zztr zztrVar, zzz zzzVar) throws zztw;

    protected long zzac(long j10, long j11, boolean z10) {
        return 10000L;
    }

    protected zzie zzad(zzti zztiVar, zzz zzzVar, zzz zzzVar2) {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007f, code lost:
        if (zzbd() == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ae, code lost:
        if (zzbd() == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00c0, code lost:
        if (zzbd() == false) goto L40;
     */
    @androidx.annotation.Nullable
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.ads.zzie zzae(com.google.android.gms.internal.ads.zzkv r13) throws com.google.android.gms.internal.ads.zzin {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztp.zzae(com.google.android.gms.internal.ads.zzkv):com.google.android.gms.internal.ads.zzie");
    }

    protected abstract zztc zzaj(zzti zztiVar, zzz zzzVar, @Nullable MediaCrypto mediaCrypto, float f10);

    protected abstract List zzak(zztr zztrVar, zzz zzzVar, boolean z10) throws zztw;

    protected void zzan(zzhs zzhsVar) throws zzin {
        throw null;
    }

    protected void zzao(Exception exc) {
        throw null;
    }

    protected void zzap(String str, zztc zztcVar, long j10, long j11) {
        throw null;
    }

    protected void zzaq(String str) {
        throw null;
    }

    protected void zzar(zzz zzzVar, @Nullable MediaFormat mediaFormat) throws zzin {
        throw null;
    }

    protected void zzau() throws zzin {
        throw null;
    }

    protected abstract boolean zzav(long j10, long j11, @Nullable zztf zztfVar, @Nullable ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, zzz zzzVar) throws zzin;

    protected boolean zzaw(zzz zzzVar) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final float zzax() {
        return this.zzr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int zzay(zzhs zzhsVar) {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long zzaz() {
        return this.zzaa;
    }

    @Override // com.google.android.gms.internal.ads.zzic, com.google.android.gms.internal.ads.zzmd
    public final int zze() {
        return 8;
    }

    @Override // com.google.android.gms.internal.ads.zzic, com.google.android.gms.internal.ads.zzma
    public final long zzf(long j10, long j11) {
        return zzac(j10, j11, this.zzI);
    }

    @Override // com.google.android.gms.internal.ads.zzic, com.google.android.gms.internal.ads.zzlv
    public void zzv(int i10, @Nullable Object obj) throws zzin {
        if (i10 == 11) {
            zzlz zzlzVar = (zzlz) obj;
            zzlzVar.getClass();
            this.zzo = zzlzVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzic
    public void zzy() {
        this.zzm = null;
        zzbb(zztn.zza);
        this.zzk.clear();
        if (this.zzP) {
            zzaf();
        } else {
            zzbe();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzic
    public void zzz(boolean z10, boolean z11) throws zzin {
        this.zza = new zzid();
    }

    protected void zzat() {
    }

    protected void zzaL(zzhs zzhsVar) throws zzin {
    }
}
