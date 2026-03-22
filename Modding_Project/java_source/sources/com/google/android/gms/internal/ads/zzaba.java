package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.PriorityQueue;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaba extends zztp implements zzabr {
    private static final int[] zzb = {1920, 1600, 1440, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER, 960, 854, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK, 540, 480};
    private static boolean zzc;
    private static boolean zzd;
    private int zzA;
    private int zzB;
    @Nullable
    private zzmh zzC;
    private boolean zzD;
    private long zzE;
    private int zzF;
    private long zzG;
    private zzcd zzH;
    @Nullable
    private zzcd zzI;
    private int zzJ;
    private int zzK;
    @Nullable
    private zzabp zzL;
    private long zzM;
    private long zzN;
    private boolean zzO;
    private final Context zze;
    private final boolean zzf;
    private final zzaci zzg;
    private final boolean zzh;
    private final zzabs zzi;
    private final zzabq zzj;
    private final PriorityQueue zzk;
    private zzaaz zzl;
    private boolean zzm;
    private boolean zzn;
    private zzaco zzo;
    private boolean zzp;
    private int zzq;
    private List zzr;
    @Nullable
    private Surface zzs;
    @Nullable
    private zzabd zzt;
    private zzeo zzu;
    private boolean zzv;
    private int zzw;
    private int zzx;
    private long zzy;
    private int zzz;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzaba(com.google.android.gms.internal.ads.zzaay r7) {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.zztd r2 = com.google.android.gms.internal.ads.zzaay.zzc(r7)
            com.google.android.gms.internal.ads.zztr r3 = com.google.android.gms.internal.ads.zzaay.zzd(r7)
            r4 = 0
            r5 = 1106247680(0x41f00000, float:30.0)
            r1 = 2
            r0 = r6
            r0.<init>(r1, r2, r3, r4, r5)
            android.content.Context r0 = com.google.android.gms.internal.ads.zzaay.zza(r7)
            android.content.Context r0 = r0.getApplicationContext()
            r6.zze = r0
            r1 = 0
            r6.zzo = r1
            com.google.android.gms.internal.ads.zzaci r2 = new com.google.android.gms.internal.ads.zzaci
            android.os.Handler r3 = com.google.android.gms.internal.ads.zzaay.zzb(r7)
            com.google.android.gms.internal.ads.zzacj r7 = com.google.android.gms.internal.ads.zzaay.zzi(r7)
            r2.<init>(r3, r7)
            r6.zzg = r2
            com.google.android.gms.internal.ads.zzaco r7 = r6.zzo
            r2 = 1
            r3 = 0
            if (r7 != 0) goto L34
            r7 = r2
            goto L35
        L34:
            r7 = r3
        L35:
            r6.zzf = r7
            com.google.android.gms.internal.ads.zzabs r7 = new com.google.android.gms.internal.ads.zzabs
            r4 = 0
            r7.<init>(r0, r6, r4)
            r6.zzi = r7
            com.google.android.gms.internal.ads.zzabq r7 = new com.google.android.gms.internal.ads.zzabq
            r7.<init>()
            r6.zzj = r7
            java.lang.String r7 = "NVIDIA"
            java.lang.String r0 = android.os.Build.MANUFACTURER
            boolean r7 = r7.equals(r0)
            r6.zzh = r7
            com.google.android.gms.internal.ads.zzeo r7 = com.google.android.gms.internal.ads.zzeo.zza
            r6.zzu = r7
            r6.zzw = r2
            r6.zzx = r3
            com.google.android.gms.internal.ads.zzcd r7 = com.google.android.gms.internal.ads.zzcd.zza
            r6.zzH = r7
            r6.zzK = r3
            r6.zzI = r1
            r7 = -1000(0xfffffffffffffc18, float:NaN)
            r6.zzJ = r7
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6.zzM = r2
            r6.zzN = r2
            java.util.PriorityQueue r7 = new java.util.PriorityQueue
            r7.<init>()
            r6.zzk = r7
            r6.zzC = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaba.<init>(com.google.android.gms.internal.ads.zzaay):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x007e, code lost:
        if (r3.equals(com.unity3d.services.core.device.MimeTypes.VIDEO_AV1) != false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zzaf(com.google.android.gms.internal.ads.zzti r11, com.google.android.gms.internal.ads.zzz r12) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaba.zzaf(com.google.android.gms.internal.ads.zzti, com.google.android.gms.internal.ads.zzz):int");
    }

    protected static int zzag(zzti zztiVar, zzz zzzVar) {
        int i10 = zzzVar.zzp;
        if (i10 != -1) {
            List list = zzzVar.zzr;
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                i11 += ((byte[]) list.get(i12)).length;
            }
            return i10 + i11;
        }
        return zzaf(zztiVar, zzzVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x04c2, code lost:
        if (r0.equals("deb") != false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:514:0x079d, code lost:
        if (r13.equals("JSN-L21") == false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0080 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected static final boolean zzbe(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 2924
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaba.zzbe(java.lang.String):boolean");
    }

    protected static final boolean zzbf(zzti zztiVar) {
        if (Build.VERSION.SDK_INT >= 35 && zztiVar.zzh) {
            return true;
        }
        return false;
    }

    @Nullable
    private final Surface zzbg(zzti zztiVar) {
        zzaco zzacoVar = this.zzo;
        if (zzacoVar != null) {
            return zzacoVar.zzb();
        }
        Surface surface = this.zzs;
        if (surface != null) {
            return surface;
        }
        if (zzbf(zztiVar)) {
            return null;
        }
        zzdd.zzf(zzbd(zztiVar));
        zzabd zzabdVar = this.zzt;
        if (zzabdVar != null) {
            if (zzabdVar.zza != zztiVar.zzf) {
                zzbl();
            }
        }
        if (this.zzt == null) {
            this.zzt = zzabd.zza(this.zze, zztiVar.zzf);
        }
        return this.zzt;
    }

    private static List zzbh(Context context, zztr zztrVar, zzz zzzVar, boolean z10, boolean z11) throws zztw {
        String str = zzzVar.zzo;
        if (str == null) {
            return zzfyq.zzn();
        }
        if (Build.VERSION.SDK_INT >= 26 && "video/dolby-vision".equals(str) && !zzaax.zza(context)) {
            List zzc2 = zzuc.zzc(zztrVar, zzzVar, z10, z11);
            if (!zzc2.isEmpty()) {
                return zzc2;
            }
        }
        return zzuc.zze(zztrVar, zzzVar, z10, z11);
    }

    private final void zzbi() {
        zzcd zzcdVar = this.zzI;
        if (zzcdVar != null) {
            this.zzg.zzt(zzcdVar);
        }
    }

    private final void zzbj(long j10, long j11, zzz zzzVar) {
        zzabp zzabpVar = this.zzL;
        if (zzabpVar != null) {
            zzabpVar.zzcT(j10, j11, zzzVar, zzaC());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbk() {
        this.zzg.zzq(this.zzs);
        this.zzv = true;
    }

    private final void zzbl() {
        zzabd zzabdVar = this.zzt;
        if (zzabdVar != null) {
            zzabdVar.release();
            this.zzt = null;
        }
    }

    private final void zzbm(@Nullable Object obj) throws zzin {
        Surface surface;
        if (obj instanceof Surface) {
            surface = (Surface) obj;
        } else {
            surface = null;
        }
        if (this.zzs != surface) {
            this.zzs = surface;
            if (this.zzo == null) {
                this.zzi.zzk(surface);
            }
            this.zzv = false;
            int zzcU = zzcU();
            zztf zzaF = zzaF();
            if (zzaF != null && this.zzo == null) {
                zzti zzaH = zzaH();
                zzaH.getClass();
                if (zzbn(zzaH) && !this.zzm) {
                    Surface zzbg = zzbg(zzaH);
                    if (zzbg != null) {
                        zzaF.zzp(zzbg);
                    } else if (Build.VERSION.SDK_INT >= 35) {
                        zzaF.zzi();
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    zzaM();
                    zzaJ();
                }
            }
            if (surface != null) {
                zzbi();
            } else {
                this.zzI = null;
                zzaco zzacoVar = this.zzo;
                if (zzacoVar != null) {
                    zzacoVar.zzi();
                }
            }
            if (zzcU == 2) {
                zzaco zzacoVar2 = this.zzo;
                if (zzacoVar2 != null) {
                    zzacoVar2.zzk(true);
                } else {
                    this.zzi.zzc(true);
                }
            }
        } else if (surface != null) {
            zzbi();
            Surface surface2 = this.zzs;
            if (surface2 != null && this.zzv) {
                this.zzg.zzq(surface2);
            }
        }
    }

    private final boolean zzbn(zzti zztiVar) {
        if (this.zzo == null) {
            Surface surface = this.zzs;
            if ((surface == null || !surface.isValid()) && !zzbf(zztiVar) && !zzbd(zztiVar)) {
                return false;
            }
            return true;
        }
        return true;
    }

    private final boolean zzbo(zzhs zzhsVar) {
        if (zzhsVar.zze < zzcW()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zzic
    public final void zzA(long j10, boolean z10) throws zzin {
        zzaco zzacoVar = this.zzo;
        if (zzacoVar != null && !z10) {
            zzacoVar.zzj(true);
        }
        super.zzA(j10, z10);
        if (this.zzo == null) {
            this.zzi.zzg();
        }
        if (z10) {
            zzaco zzacoVar2 = this.zzo;
            if (zzacoVar2 != null) {
                zzacoVar2.zzk(false);
            } else {
                this.zzi.zzc(false);
            }
        }
        this.zzA = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzic
    protected final void zzB() {
        zzaco zzacoVar = this.zzo;
        if (zzacoVar != null && this.zzf) {
            zzacoVar.zzn();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zzic
    public final void zzD() {
        try {
            super.zzD();
        } finally {
            this.zzp = false;
            this.zzM = -9223372036854775807L;
            zzbl();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzic
    protected final void zzE() {
        this.zzz = 0;
        this.zzy = zzcX().zzb();
        this.zzE = 0L;
        this.zzF = 0;
        zzaco zzacoVar = this.zzo;
        if (zzacoVar != null) {
            zzacoVar.zzx();
        } else {
            this.zzi.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzic
    protected final void zzF() {
        if (this.zzz > 0) {
            long zzb2 = zzcX().zzb();
            this.zzg.zzn(this.zzz, zzb2 - this.zzy);
            this.zzz = 0;
            this.zzy = zzb2;
        }
        int i10 = this.zzF;
        if (i10 != 0) {
            this.zzg.zzr(this.zzE, i10);
            this.zzE = 0L;
            this.zzF = 0;
        }
        zzaco zzacoVar = this.zzo;
        if (zzacoVar != null) {
            zzacoVar.zzy();
        } else {
            this.zzi.zze();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zzic
    public final void zzG(zzz[] zzzVarArr, long j10, long j11, zzvh zzvhVar) throws zzin {
        super.zzG(zzzVarArr, j10, j11, zzvhVar);
        zzbl zzi = zzi();
        if (zzi.zzo()) {
            this.zzN = -9223372036854775807L;
        } else {
            this.zzN = zzi.zzn(zzvhVar.zza, new zzbj()).zzd;
        }
    }

    @Override // com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zzic, com.google.android.gms.internal.ads.zzma
    public final void zzN(float f10, float f11) throws zzin {
        super.zzN(f10, f11);
        zzaco zzacoVar = this.zzo;
        if (zzacoVar != null) {
            zzacoVar.zzt(f10);
        } else {
            this.zzi.zzl(f10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzma, com.google.android.gms.internal.ads.zzmd
    public final String zzV() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zzma
    @CallSuper
    public final void zzW(long j10, long j11) throws zzin {
        zzaco zzacoVar = this.zzo;
        if (zzacoVar != null) {
            try {
                zzacoVar.zzo(j10, j11);
            } catch (zzacn e10) {
                throw zzk(e10, e10.zza, false, AdError.SHOW_CALLED_BEFORE_LOAD_ERROR_CODE);
            }
        }
        super.zzW(j10, j11);
    }

    @Override // com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zzma
    public final boolean zzX() {
        if (!super.zzX()) {
            return false;
        }
        zzaco zzacoVar = this.zzo;
        if (zzacoVar != null && !zzacoVar.zzB()) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zzma
    public final boolean zzY() {
        boolean zzY = super.zzY();
        zzaco zzacoVar = this.zzo;
        if (zzacoVar != null) {
            return zzacoVar.zzD(zzY);
        }
        if (zzY && zzaF() == null) {
            return true;
        }
        return this.zzi.zzm(zzY);
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final zzth zzaG(Throwable th2, @Nullable zzti zztiVar) {
        return new zzaau(th2, zztiVar, this.zzs);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zztp
    @CallSuper
    public final void zzaK(long j10) {
        super.zzaK(j10);
        this.zzB--;
    }

    @Override // com.google.android.gms.internal.ads.zztp
    @CallSuper
    protected final void zzaL(zzhs zzhsVar) throws zzin {
        int zzay = zzay(zzhsVar);
        if (Build.VERSION.SDK_INT >= 34 && (zzay & 32) != 0) {
            return;
        }
        this.zzB++;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zztp
    @CallSuper
    public final void zzaN() {
        super.zzaN();
        this.zzk.clear();
        this.zzB = 0;
        this.zzD = false;
    }

    @Override // com.google.android.gms.internal.ads.zztp
    @CallSuper
    protected final boolean zzaT(zzz zzzVar) throws zzin {
        zzaco zzacoVar = this.zzo;
        if (zzacoVar != null && !zzacoVar.zzC()) {
            try {
                zzacoVar.zzA(zzzVar);
                return true;
            } catch (zzacn e10) {
                throw zzk(e10, zzzVar, false, 7000);
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final boolean zzaU(zzhs zzhsVar) {
        boolean z10 = false;
        if (!zzR() && !zzhsVar.zzh() && this.zzN != -9223372036854775807L) {
            if (this.zzN - (zzhsVar.zze - zzaA()) > 100000 && zzbo(zzhsVar)) {
                if (zzhsVar.zze()) {
                    return false;
                }
                if (zzhsVar.zzi()) {
                    zzhsVar.zzb();
                    z10 = true;
                }
                if (z10) {
                    ((zztp) this).zza.zzd++;
                }
            }
        }
        return z10;
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final boolean zzaV() {
        if (this.zzC != null && !this.zzD && !zzaQ() && zzaz() == -9223372036854775807L) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final boolean zzaW(zzti zztiVar) {
        return zzbn(zztiVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zztp
    public final boolean zzaX() {
        zzti zzaH = zzaH();
        if (this.zzo != null && zzaH != null) {
            String str = zzaH.zza;
            if (str.equals("c2.mtk.avc.decoder") || str.equals("c2.mtk.hevc.decoder")) {
                return true;
            }
        }
        return super.zzaX();
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final float zzaa(float f10, zzz zzzVar, zzz[] zzzVarArr) {
        float f11;
        zzti zzaH;
        float f12 = -1.0f;
        for (zzz zzzVar2 : zzzVarArr) {
            float f13 = zzzVar2.zzz;
            if (f13 != -1.0f) {
                f12 = Math.max(f12, f13);
            }
        }
        if (f12 == -1.0f) {
            f11 = -1.0f;
        } else {
            f11 = f12 * f10;
        }
        if (this.zzC != null && (zzaH = zzaH()) != null) {
            float zza = zzaH.zza(zzzVar.zzv, zzzVar.zzw);
            if (f11 != -1.0f) {
                return Math.max(f11, zza);
            }
            return zza;
        }
        return f11;
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final int zzab(zztr zztrVar, zzz zzzVar) throws zztw {
        boolean z10;
        boolean z11;
        int i10;
        int i11;
        int i12;
        String str = zzzVar.zzo;
        int i13 = 128;
        if (!zzay.zzj(str)) {
            return 128;
        }
        Context context = this.zze;
        int i14 = 0;
        if (zzzVar.zzs != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        List zzbh = zzbh(context, zztrVar, zzzVar, z10, false);
        if (z10 && zzbh.isEmpty()) {
            zzbh = zzbh(context, zztrVar, zzzVar, false, false);
        }
        if (zzbh.isEmpty()) {
            return 129;
        }
        if (!zztp.zzaY(zzzVar)) {
            return 130;
        }
        zzti zztiVar = (zzti) zzbh.get(0);
        boolean zzf = zztiVar.zzf(zzzVar);
        if (!zzf) {
            for (int i15 = 1; i15 < zzbh.size(); i15++) {
                zzti zztiVar2 = (zzti) zzbh.get(i15);
                if (zztiVar2.zzf(zzzVar)) {
                    zzf = true;
                    z11 = false;
                    zztiVar = zztiVar2;
                    break;
                }
            }
        }
        z11 = true;
        if (true != zzf) {
            i10 = 3;
        } else {
            i10 = 4;
        }
        if (true != zztiVar.zzg(zzzVar)) {
            i11 = 8;
        } else {
            i11 = 16;
        }
        if (true != zztiVar.zzg) {
            i12 = 0;
        } else {
            i12 = 64;
        }
        if (true != z11) {
            i13 = 0;
        }
        if (Build.VERSION.SDK_INT >= 26 && "video/dolby-vision".equals(str) && !zzaax.zza(context)) {
            i13 = 256;
        }
        if (zzf) {
            List zzbh2 = zzbh(context, zztrVar, zzzVar, z10, true);
            if (!zzbh2.isEmpty()) {
                zzti zztiVar3 = (zzti) zzuc.zzf(zzbh2, zzzVar).get(0);
                if (zztiVar3.zzf(zzzVar) && zztiVar3.zzg(zzzVar)) {
                    i14 = 32;
                }
            }
        }
        return i13 | i10 | i11 | i14 | i12;
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final zzie zzad(zzti zztiVar, zzz zzzVar, zzz zzzVar2) {
        int i10;
        int i11;
        zzie zzc2 = zztiVar.zzc(zzzVar, zzzVar2);
        int i12 = zzc2.zze;
        zzaaz zzaazVar = this.zzl;
        zzaazVar.getClass();
        if (zzzVar2.zzv > zzaazVar.zza || zzzVar2.zzw > zzaazVar.zzb) {
            i12 |= 256;
        }
        if (zzag(zztiVar, zzzVar2) > zzaazVar.zzc) {
            i12 |= 64;
        }
        String str = zztiVar.zza;
        if (i12 != 0) {
            i11 = i12;
            i10 = 0;
        } else {
            i10 = zzc2.zzd;
            i11 = 0;
        }
        return new zzie(str, zzzVar, zzzVar2, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zztp
    @Nullable
    public final zzie zzae(zzkv zzkvVar) throws zzin {
        zzie zzae = super.zzae(zzkvVar);
        zzz zzzVar = zzkvVar.zza;
        zzzVar.getClass();
        this.zzg.zzp(zzzVar, zzae);
        return zzae;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d4, code lost:
        r3 = null;
     */
    @Override // com.google.android.gms.internal.ads.zztp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.google.android.gms.internal.ads.zztc zzaj(com.google.android.gms.internal.ads.zzti r21, com.google.android.gms.internal.ads.zzz r22, @androidx.annotation.Nullable android.media.MediaCrypto r23, float r24) {
        /*
            Method dump skipped, instructions count: 559
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaba.zzaj(com.google.android.gms.internal.ads.zzti, com.google.android.gms.internal.ads.zzz, android.media.MediaCrypto, float):com.google.android.gms.internal.ads.zztc");
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final List zzak(zztr zztrVar, zzz zzzVar, boolean z10) throws zztw {
        return zzuc.zzf(zzbh(this.zze, zztrVar, zzzVar, false, false), zzzVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzam(zztf zztfVar, int i10, long j10, long j11) {
        Trace.beginSection("releaseOutputBuffer");
        zztfVar.zzn(i10, j11);
        Trace.endSection();
        ((zztp) this).zza.zze++;
        this.zzA = 0;
        if (this.zzo == null) {
            zzcd zzcdVar = this.zzH;
            if (!zzcdVar.equals(zzcd.zza) && !zzcdVar.equals(this.zzI)) {
                this.zzI = zzcdVar;
                this.zzg.zzt(zzcdVar);
            }
            if (this.zzi.zzn() && this.zzs != null) {
                zzbk();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zztp
    @TargetApi(29)
    protected final void zzan(zzhs zzhsVar) throws zzin {
        if (this.zzn) {
            ByteBuffer byteBuffer = zzhsVar.zzf;
            byteBuffer.getClass();
            if (byteBuffer.remaining() >= 7) {
                byte b10 = byteBuffer.get();
                short s10 = byteBuffer.getShort();
                short s11 = byteBuffer.getShort();
                byte b11 = byteBuffer.get();
                byte b12 = byteBuffer.get();
                byteBuffer.position(0);
                if (b10 == -75 && s10 == 60 && s11 == 1 && b11 == 4) {
                    if (b12 == 0 || b12 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        zztf zzaF = zzaF();
                        zzaF.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("hdr10-plus-info", bArr);
                        zzaF.zzq(bundle);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final void zzao(Exception exc) {
        zzea.zzd("MediaCodecVideoRenderer", "Video codec error", exc);
        this.zzg.zzs(exc);
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final void zzap(String str, zztc zztcVar, long j10, long j11) {
        this.zzg.zzk(str, j10, j11);
        this.zzm = zzbe(str);
        zzti zzaH = zzaH();
        zzaH.getClass();
        boolean z10 = false;
        if (Build.VERSION.SDK_INT >= 29 && MimeTypes.VIDEO_VP9.equals(zzaH.zzb)) {
            MediaCodecInfo.CodecProfileLevel[] zzi = zzaH.zzi();
            int length = zzi.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (zzi[i10].profile == 16384) {
                    z10 = true;
                    break;
                } else {
                    i10++;
                }
            }
        }
        this.zzn = z10;
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final void zzaq(String str) {
        this.zzg.zzl(str);
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final void zzar(zzz zzzVar, @Nullable MediaFormat mediaFormat) {
        boolean z10;
        int integer;
        int integer2;
        zztf zzaF = zzaF();
        if (zzaF != null) {
            zzaF.zzr(this.zzw);
        }
        mediaFormat.getClass();
        if (mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top")) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
        } else {
            integer = mediaFormat.getInteger("width");
        }
        if (z10) {
            integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
        } else {
            integer2 = mediaFormat.getInteger("height");
        }
        float f10 = zzzVar.zzB;
        int i10 = zzzVar.zzA;
        if (i10 == 90 || i10 == 270) {
            f10 = 1.0f / f10;
            int i11 = integer2;
            integer2 = integer;
            integer = i11;
        }
        this.zzH = new zzcd(integer, integer2, f10);
        zzaco zzacoVar = this.zzo;
        if (zzacoVar != null && this.zzO) {
            zzx zzb2 = zzzVar.zzb();
            zzb2.zzam(integer);
            zzb2.zzQ(integer2);
            zzb2.zzad(f10);
            zzz zzan = zzb2.zzan();
            int i12 = this.zzq;
            List list = this.zzr;
            if (list == null) {
                list = zzfyq.zzn();
            }
            zzacoVar.zzl(1, zzan, zzaB(), i12, list);
            this.zzq = 2;
        } else {
            this.zzi.zzj(zzzVar.zzz);
        }
        this.zzO = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzas(zztf zztfVar, int i10, long j10) {
        Trace.beginSection("skipVideoBuffer");
        zztfVar.zzo(i10, false);
        Trace.endSection();
        ((zztp) this).zza.zzf++;
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final void zzat() {
        zzaco zzacoVar = this.zzo;
        if (zzacoVar != null) {
            zzacoVar.zzw();
            long j10 = this.zzM;
            if (j10 == -9223372036854775807L) {
                j10 = zzaB();
                this.zzM = j10;
            }
            this.zzo.zzp(-j10);
        } else {
            this.zzi.zzf(2);
        }
        this.zzO = true;
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final void zzau() {
        zzaco zzacoVar = this.zzo;
        if (zzacoVar != null) {
            zzacoVar.zzw();
        }
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final boolean zzav(long j10, long j11, @Nullable zztf zztfVar, @Nullable ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, zzz zzzVar) throws zzin {
        zztfVar.getClass();
        long zzaA = j12 - zzaA();
        int i13 = 0;
        while (true) {
            PriorityQueue priorityQueue = this.zzk;
            Long l10 = (Long) priorityQueue.peek();
            if (l10 == null || l10.longValue() >= j12) {
                break;
            }
            priorityQueue.poll();
            i13++;
        }
        zzba(i13, 0);
        zzaco zzacoVar = this.zzo;
        if (zzacoVar != null) {
            if (z10 && !z11) {
                zzas(zztfVar, i10, zzaA);
                return true;
            }
            return zzacoVar.zzz(j12, new zzaaw(this, zztfVar, i10, zzaA));
        }
        zzabs zzabsVar = this.zzi;
        long zzaB = zzaB();
        zzabq zzabqVar = this.zzj;
        int zza = zzabsVar.zza(j12, j10, j11, zzaB, z10, z11, zzabqVar);
        if (zza != 0) {
            if (zza != 1) {
                if (zza != 2) {
                    if (zza != 3) {
                        return false;
                    }
                    zzas(zztfVar, i10, zzaA);
                    zzbb(zzabqVar.zzc());
                    return true;
                }
                Trace.beginSection("dropVideoBuffer");
                zztfVar.zzo(i10, false);
                Trace.endSection();
                zzba(0, 1);
                zzbb(zzabqVar.zzc());
                return true;
            }
            long zzd2 = zzabqVar.zzd();
            long zzc2 = zzabqVar.zzc();
            if (zzd2 == this.zzG) {
                zzas(zztfVar, i10, zzaA);
            } else {
                zzbj(zzaA, zzd2, zzzVar);
                zzam(zztfVar, i10, zzaA, zzd2);
            }
            zzbb(zzc2);
            this.zzG = zzd2;
            return true;
        }
        long zzc3 = zzcX().zzc();
        zzbj(zzaA, zzc3, zzzVar);
        zzam(zztfVar, i10, zzaA, zzc3);
        zzbb(zzabqVar.zzc());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zztp
    public final int zzay(zzhs zzhsVar) {
        if (Build.VERSION.SDK_INT >= 34 && this.zzC != null && zzbo(zzhsVar)) {
            return 32;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzba(int i10, int i11) {
        zzid zzidVar = ((zztp) this).zza;
        zzidVar.zzh += i10;
        int i12 = i10 + i11;
        zzidVar.zzg += i12;
        this.zzz += i12;
        int i13 = this.zzA + i12;
        this.zzA = i13;
        zzidVar.zzi = Math.max(i13, zzidVar.zzi);
    }

    protected final void zzbb(long j10) {
        zzid zzidVar = ((zztp) this).zza;
        zzidVar.zzk += j10;
        zzidVar.zzl++;
        this.zzE += j10;
        this.zzF++;
    }

    @Override // com.google.android.gms.internal.ads.zzabr
    public final boolean zzbc(long j10, long j11, long j12, boolean z10, boolean z11) throws zzin {
        int zzd2;
        if (this.zzo != null && this.zzf) {
            j11 -= -this.zzM;
        }
        if (j10 >= -500000 || z10 || (zzd2 = zzd(j11)) == 0) {
            return false;
        }
        if (z11) {
            zzid zzidVar = ((zztp) this).zza;
            int i10 = zzidVar.zzd + zzd2;
            zzidVar.zzd = i10;
            zzidVar.zzf += this.zzB;
            zzidVar.zzd = i10 + this.zzk.size();
        } else {
            ((zztp) this).zza.zzj++;
            zzba(zzd2 + this.zzk.size(), this.zzB);
        }
        zzaP();
        zzaco zzacoVar = this.zzo;
        if (zzacoVar != null) {
            zzacoVar.zzj(false);
        }
        return true;
    }

    protected final boolean zzbd(zzti zztiVar) {
        if (zzbe(zztiVar.zza)) {
            return false;
        }
        if (zztiVar.zzf && !zzabd.zzb(this.zze)) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzic, com.google.android.gms.internal.ads.zzma
    public final void zzu() {
        zzaco zzacoVar = this.zzo;
        if (zzacoVar != null) {
            int i10 = this.zzq;
            if (i10 != 0 && i10 != 1) {
                zzacoVar.zzh();
                return;
            } else {
                this.zzq = 0;
                return;
            }
        }
        this.zzi.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zzic, com.google.android.gms.internal.ads.zzlv
    public final void zzv(int i10, @Nullable Object obj) throws zzin {
        boolean z10;
        boolean z11 = true;
        if (i10 != 1) {
            if (i10 != 7) {
                if (i10 != 10) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 != 13) {
                                if (i10 != 14) {
                                    switch (i10) {
                                        case 16:
                                            obj.getClass();
                                            this.zzJ = ((Integer) obj).intValue();
                                            zztf zzaF = zzaF();
                                            if (zzaF != null && Build.VERSION.SDK_INT >= 35) {
                                                Bundle bundle = new Bundle();
                                                bundle.putInt("importance", Math.max(0, -this.zzJ));
                                                zzaF.zzq(bundle);
                                                return;
                                            }
                                            return;
                                        case 17:
                                            Surface surface = this.zzs;
                                            zzbm(null);
                                            obj.getClass();
                                            ((zzaba) obj).zzv(1, surface);
                                            return;
                                        case 18:
                                            if (this.zzC == null) {
                                                z10 = false;
                                            } else {
                                                z10 = true;
                                            }
                                            zzmh zzmhVar = (zzmh) obj;
                                            this.zzC = zzmhVar;
                                            if (zzmhVar == null) {
                                                z11 = false;
                                            }
                                            if (z10 != z11) {
                                                zzaZ();
                                                return;
                                            }
                                            return;
                                        default:
                                            super.zzv(i10, obj);
                                            return;
                                    }
                                }
                                obj.getClass();
                                zzeo zzeoVar = (zzeo) obj;
                                if (zzeoVar.zzb() != 0 && zzeoVar.zza() != 0) {
                                    this.zzu = zzeoVar;
                                    zzaco zzacoVar = this.zzo;
                                    if (zzacoVar != null) {
                                        Surface surface2 = this.zzs;
                                        zzdd.zzb(surface2);
                                        zzacoVar.zzs(surface2, zzeoVar);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            obj.getClass();
                            List list = (List) obj;
                            if (list.equals(zzbz.zza)) {
                                zzaco zzacoVar2 = this.zzo;
                                if (zzacoVar2 != null && zzacoVar2.zzC()) {
                                    zzacoVar2.zzm();
                                    return;
                                }
                                return;
                            }
                            this.zzr = list;
                            zzaco zzacoVar3 = this.zzo;
                            if (zzacoVar3 != null) {
                                zzacoVar3.zzu(list);
                                return;
                            }
                            return;
                        }
                        obj.getClass();
                        int intValue = ((Integer) obj).intValue();
                        this.zzx = intValue;
                        zzaco zzacoVar4 = this.zzo;
                        if (zzacoVar4 != null) {
                            zzacoVar4.zzq(intValue);
                            return;
                        } else {
                            this.zzi.zzh(intValue);
                            return;
                        }
                    }
                    obj.getClass();
                    int intValue2 = ((Integer) obj).intValue();
                    this.zzw = intValue2;
                    zztf zzaF2 = zzaF();
                    if (zzaF2 != null) {
                        zzaF2.zzr(intValue2);
                        return;
                    }
                    return;
                }
                obj.getClass();
                int intValue3 = ((Integer) obj).intValue();
                if (this.zzK != intValue3) {
                    this.zzK = intValue3;
                    return;
                }
                return;
            }
            obj.getClass();
            zzabp zzabpVar = (zzabp) obj;
            this.zzL = zzabpVar;
            zzaco zzacoVar5 = this.zzo;
            if (zzacoVar5 != null) {
                zzacoVar5.zzv(zzabpVar);
                return;
            }
            return;
        }
        zzbm(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zzic
    public final void zzy() {
        this.zzI = null;
        this.zzN = -9223372036854775807L;
        this.zzv = false;
        this.zzD = true;
        try {
            super.zzy();
        } finally {
            zzaci zzaciVar = this.zzg;
            zzaciVar.zzm(((zztp) this).zza);
            zzaciVar.zzt(zzcd.zza);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zzic
    public final void zzz(boolean z10, boolean z11) throws zzin {
        super.zzz(z10, z11);
        zzo();
        this.zzg.zzo(((zztp) this).zza);
        if (!this.zzp) {
            if (this.zzr != null && this.zzo == null) {
                zzabh zzabhVar = new zzabh(this.zze, this.zzi);
                zzabhVar.zze(true);
                zzabhVar.zzd(zzcX());
                zzabo zzf = zzabhVar.zzf();
                zzf.zzt(1);
                this.zzo = zzf.zze(0);
            }
            this.zzp = true;
        }
        int i10 = !z11 ? 1 : 0;
        zzaco zzacoVar = this.zzo;
        if (zzacoVar != null) {
            zzacoVar.zzr(new zzaav(this), zzgef.zzc());
            zzabp zzabpVar = this.zzL;
            if (zzabpVar != null) {
                this.zzo.zzv(zzabpVar);
            }
            if (this.zzs != null && !this.zzu.equals(zzeo.zza)) {
                this.zzo.zzs(this.zzs, this.zzu);
            }
            this.zzo.zzq(this.zzx);
            this.zzo.zzt(zzax());
            List list = this.zzr;
            if (list != null) {
                this.zzo.zzu(list);
            }
            this.zzq = i10;
            zzaI();
            return;
        }
        zzabs zzabsVar = this.zzi;
        zzabsVar.zzi(zzcX());
        zzabsVar.zzf(i10);
    }
}
