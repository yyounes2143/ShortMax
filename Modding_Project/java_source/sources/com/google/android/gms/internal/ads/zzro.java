package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.work.PeriodicWorkRequest;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzro implements zzqo {
    private static final Object zza = new Object();
    @Nullable
    @GuardedBy("releaseExecutorLock")
    private static ScheduledExecutorService zzb;
    @GuardedBy("releaseExecutorLock")
    private static int zzc;
    private zzrf zzA;
    private zzbb zzB;
    private boolean zzC;
    private long zzD;
    private long zzE;
    private long zzF;
    private long zzG;
    private int zzH;
    private boolean zzI;
    private boolean zzJ;
    private long zzK;
    private float zzL;
    @Nullable
    private ByteBuffer zzM;
    private int zzN;
    @Nullable
    private ByteBuffer zzO;
    private boolean zzP;
    private boolean zzQ;
    private boolean zzR;
    private boolean zzS;
    private int zzT;
    private zzf zzU;
    @Nullable
    private zzpp zzV;
    private long zzW;
    private boolean zzX;
    private boolean zzY;
    @Nullable
    private Looper zzZ;
    private long zzaa;
    private long zzab;
    private Handler zzac;
    @Nullable
    private Context zzad;
    private boolean zzae;
    private final zzre zzaf;
    private final zzqu zzag;
    @Nullable
    private final Context zzd;
    private final zzqt zze;
    private final zzry zzf;
    private final zzcr zzg;
    private final zzrx zzh;
    private final zzfyq zzi;
    private final zzqs zzj;
    private final ArrayDeque zzk;
    private zzrm zzl;
    private final zzri zzm;
    private final zzri zzn;
    private final int zzo;
    @Nullable
    private zzph zzp;
    @Nullable
    private zzql zzq;
    @Nullable
    private zzrd zzr;
    private zzrd zzs;
    private zzck zzt;
    @Nullable
    private AudioTrack zzu;
    private zzpj zzv;
    private zzpo zzw;
    @Nullable
    private zzrh zzx;
    private zze zzy;
    @Nullable
    private zzrf zzz;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00a7, code lost:
        r10 = com.google.android.gms.internal.ads.zzrc.zza(r10).getDeviceId();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ zzro(com.google.android.gms.internal.ads.zzrc r10, com.google.android.gms.internal.ads.zzrn r11) {
        /*
            r9 = this;
            r9.<init>()
            android.content.Context r11 = com.google.android.gms.internal.ads.zzrc.zza(r10)
            r0 = 0
            if (r11 != 0) goto Lc
            r11 = r0
            goto L14
        Lc:
            android.content.Context r11 = com.google.android.gms.internal.ads.zzrc.zza(r10)
            android.content.Context r11 = r11.getApplicationContext()
        L14:
            r9.zzd = r11
            com.google.android.gms.internal.ads.zze r1 = com.google.android.gms.internal.ads.zze.zza
            r9.zzy = r1
            if (r11 == 0) goto L1e
            r11 = r0
            goto L22
        L1e:
            com.google.android.gms.internal.ads.zzpj r11 = com.google.android.gms.internal.ads.zzrc.zzb(r10)
        L22:
            r9.zzv = r11
            com.google.android.gms.internal.ads.zzre r11 = com.google.android.gms.internal.ads.zzrc.zzd(r10)
            r9.zzaf = r11
            com.google.android.gms.internal.ads.zzqu r11 = com.google.android.gms.internal.ads.zzrc.zze(r10)
            r11.getClass()
            r9.zzag = r11
            com.google.android.gms.internal.ads.zzqs r11 = new com.google.android.gms.internal.ads.zzqs
            com.google.android.gms.internal.ads.zzrj r1 = new com.google.android.gms.internal.ads.zzrj
            r1.<init>(r9, r0)
            r11.<init>(r1)
            r9.zzj = r11
            com.google.android.gms.internal.ads.zzqt r11 = new com.google.android.gms.internal.ads.zzqt
            r11.<init>()
            r9.zze = r11
            com.google.android.gms.internal.ads.zzry r0 = new com.google.android.gms.internal.ads.zzry
            r0.<init>()
            r9.zzf = r0
            com.google.android.gms.internal.ads.zzcr r1 = new com.google.android.gms.internal.ads.zzcr
            r1.<init>()
            r9.zzg = r1
            com.google.android.gms.internal.ads.zzrx r1 = new com.google.android.gms.internal.ads.zzrx
            r1.<init>()
            r9.zzh = r1
            com.google.android.gms.internal.ads.zzfyq r11 = com.google.android.gms.internal.ads.zzfyq.zzp(r0, r11)
            r9.zzi = r11
            r11 = 1065353216(0x3f800000, float:1.0)
            r9.zzL = r11
            r11 = 0
            r9.zzT = r11
            com.google.android.gms.internal.ads.zzf r0 = new com.google.android.gms.internal.ads.zzf
            r1 = 0
            r0.<init>(r11, r1)
            r9.zzU = r0
            com.google.android.gms.internal.ads.zzrf r0 = new com.google.android.gms.internal.ads.zzrf
            com.google.android.gms.internal.ads.zzbb r1 = com.google.android.gms.internal.ads.zzbb.zza
            r6 = 0
            r8 = 0
            r4 = 0
            r2 = r0
            r3 = r1
            r2.<init>(r3, r4, r6, r8)
            r9.zzA = r0
            r9.zzB = r1
            r9.zzC = r11
            java.util.ArrayDeque r11 = new java.util.ArrayDeque
            r11.<init>()
            r9.zzk = r11
            com.google.android.gms.internal.ads.zzri r11 = new com.google.android.gms.internal.ads.zzri
            r11.<init>()
            r9.zzm = r11
            com.google.android.gms.internal.ads.zzri r11 = new com.google.android.gms.internal.ads.zzri
            r11.<init>()
            r9.zzn = r11
            int r11 = android.os.Build.VERSION.SDK_INT
            r0 = 34
            r1 = -1
            if (r11 < r0) goto Lb5
            android.content.Context r11 = com.google.android.gms.internal.ads.zzrc.zza(r10)
            if (r11 != 0) goto La7
            goto Lb5
        La7:
            android.content.Context r10 = com.google.android.gms.internal.ads.zzrc.zza(r10)
            int r10 = com.google.android.gms.internal.ads.d0.a(r10)
            if (r10 == 0) goto Lb5
            if (r10 != r1) goto Lb4
            goto Lb5
        Lb4:
            r1 = r10
        Lb5:
            r9.zzo = r1
            r10 = 1
            r9.zzae = r10
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzro.<init>(com.google.android.gms.internal.ads.zzrc, com.google.android.gms.internal.ads.zzrn):void");
    }

    public static /* synthetic */ void zzH(zzro zzroVar) {
        if (zzroVar.zzab >= PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
            zzru.zzal(((zzrs) zzroVar.zzq).zza, true);
            zzroVar.zzab = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzJ(AudioTrack audioTrack, final zzql zzqlVar, Handler handler, final zzqi zzqiVar) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (zzqlVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqx
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzqg zzqgVar;
                        zzqgVar = ((zzrs) zzql.this).zza.zzc;
                        zzqgVar.zzr(zzqiVar);
                    }
                });
            }
            synchronized (zza) {
                try {
                    int i10 = zzc - 1;
                    zzc = i10;
                    if (i10 == 0) {
                        zzb.shutdown();
                        zzb = null;
                    }
                } finally {
                }
            }
        } catch (Throwable th2) {
            if (zzqlVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqx
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzqg zzqgVar;
                        zzqgVar = ((zzrs) zzql.this).zza.zzc;
                        zzqgVar.zzr(zzqiVar);
                    }
                });
            }
            synchronized (zza) {
                try {
                    int i11 = zzc - 1;
                    zzc = i11;
                    if (i11 == 0) {
                        zzb.shutdown();
                        zzb = null;
                    }
                    throw th2;
                } finally {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ boolean zzM() {
        boolean z10;
        synchronized (zza) {
            if (zzc > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzN() {
        zzrd zzrdVar = this.zzs;
        if (zzrdVar.zzc == 0) {
            return this.zzD / zzrdVar.zzb;
        }
        return this.zzE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzO() {
        zzrd zzrdVar = this.zzs;
        if (zzrdVar.zzc == 0) {
            long j10 = this.zzF;
            long j11 = zzrdVar.zzd;
            String str = zzex.zza;
            return ((j10 + j11) - 1) / j11;
        }
        return this.zzG;
    }

    private final AudioTrack zzP(zzrd zzrdVar) throws zzqk {
        Context context;
        Context createDeviceContext;
        try {
            int i10 = this.zzT;
            int i11 = this.zzo;
            Context context2 = null;
            if (i11 != -1 && (context = this.zzd) != null && Build.VERSION.SDK_INT >= 34) {
                if (this.zzad == null) {
                    createDeviceContext = context.createDeviceContext(i11);
                    this.zzad = createDeviceContext;
                }
                context2 = this.zzad;
                i10 = 0;
            }
            return zzae(zzrdVar.zza(), this.zzy, i10, zzrdVar.zza, context2);
        } catch (zzqk e10) {
            zzql zzqlVar = this.zzq;
            if (zzqlVar != null) {
                zzqlVar.zza(e10);
            }
            throw e10;
        }
    }

    private final void zzQ(long j10) {
        zzbb zzbbVar;
        boolean z10;
        if (zzad()) {
            zzre zzreVar = this.zzaf;
            zzbbVar = this.zzB;
            zzreVar.zzc(zzbbVar);
        } else {
            zzbbVar = zzbb.zza;
        }
        zzbb zzbbVar2 = zzbbVar;
        this.zzB = zzbbVar2;
        if (zzad()) {
            zzre zzreVar2 = this.zzaf;
            z10 = this.zzC;
            zzreVar2.zzd(z10);
        } else {
            z10 = false;
        }
        this.zzC = z10;
        this.zzk.add(new zzrf(zzbbVar2, Math.max(0L, j10), zzex.zzt(zzO(), this.zzs.zze), null));
        zzZ();
        zzql zzqlVar = this.zzq;
        if (zzqlVar != null) {
            zzru.zzah(((zzrs) zzqlVar).zza).zzy(this.zzC);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzR(long r8) throws com.google.android.gms.internal.ads.zzqn {
        /*
            r7 = this;
            java.nio.ByteBuffer r8 = r7.zzO
            if (r8 != 0) goto L6
            goto Lb6
        L6:
            com.google.android.gms.internal.ads.zzri r8 = r7.zzn
            boolean r9 = r8.zzc()
            if (r9 != 0) goto Lb6
            java.nio.ByteBuffer r9 = r7.zzO
            int r9 = r9.remaining()
            android.media.AudioTrack r0 = r7.zzu
            java.nio.ByteBuffer r1 = r7.zzO
            r2 = 1
            int r0 = r0.write(r1, r9, r2)
            long r3 = android.os.SystemClock.elapsedRealtime()
            r7.zzW = r3
            r3 = 0
            r1 = 0
            if (r0 >= 0) goto L6d
            r9 = -6
            if (r0 == r9) goto L32
            r9 = -32
            if (r0 != r9) goto L30
            goto L32
        L30:
            r2 = r1
            goto L46
        L32:
            long r5 = r7.zzO()
            int r9 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r9 <= 0) goto L3b
            goto L46
        L3b:
            android.media.AudioTrack r9 = r7.zzu
            boolean r9 = zzac(r9)
            if (r9 == 0) goto L30
            r7.zzS()
        L46:
            com.google.android.gms.internal.ads.zzqn r9 = new com.google.android.gms.internal.ads.zzqn
            com.google.android.gms.internal.ads.zzrd r1 = r7.zzs
            com.google.android.gms.internal.ads.zzz r1 = r1.zza
            r9.<init>(r0, r1, r2)
            com.google.android.gms.internal.ads.zzql r0 = r7.zzq
            if (r0 == 0) goto L56
            r0.zza(r9)
        L56:
            boolean r0 = r9.zzb
            if (r0 == 0) goto L69
            android.content.Context r0 = r7.zzd
            if (r0 != 0) goto L5f
            goto L69
        L5f:
            com.google.android.gms.internal.ads.zzpj r8 = com.google.android.gms.internal.ads.zzpj.zza
            r7.zzv = r8
            com.google.android.gms.internal.ads.zzpo r0 = r7.zzw
            r0.zzg(r8)
            throw r9
        L69:
            r8.zzb(r9)
            return
        L6d:
            r8.zza()
            android.media.AudioTrack r8 = r7.zzu
            boolean r8 = zzac(r8)
            if (r8 == 0) goto L8c
            long r5 = r7.zzG
            int r8 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r8 <= 0) goto L80
            r7.zzY = r1
        L80:
            boolean r8 = r7.zzS
            if (r8 == 0) goto L8c
            com.google.android.gms.internal.ads.zzql r8 = r7.zzq
            if (r8 == 0) goto L8c
            if (r0 >= r9) goto L8c
            com.google.android.gms.internal.ads.zzrs r8 = (com.google.android.gms.internal.ads.zzrs) r8
        L8c:
            com.google.android.gms.internal.ads.zzrd r8 = r7.zzs
            int r8 = r8.zzc
            if (r8 != 0) goto L98
            long r3 = r7.zzF
            long r5 = (long) r0
            long r3 = r3 + r5
            r7.zzF = r3
        L98:
            if (r0 != r9) goto Lb6
            if (r8 == 0) goto Lb3
            java.nio.ByteBuffer r8 = r7.zzO
            java.nio.ByteBuffer r9 = r7.zzM
            if (r8 != r9) goto La3
            goto La4
        La3:
            r2 = r1
        La4:
            com.google.android.gms.internal.ads.zzdd.zzf(r2)
            long r8 = r7.zzG
            int r0 = r7.zzH
            long r0 = (long) r0
            int r2 = r7.zzN
            long r2 = (long) r2
            long r0 = r0 * r2
            long r8 = r8 + r0
            r7.zzG = r8
        Lb3:
            r8 = 0
            r7.zzO = r8
        Lb6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzro.zzR(long):void");
    }

    private final void zzS() {
        if (this.zzs.zzc == 1) {
            this.zzX = true;
        }
    }

    private final void zzT() {
        Context context;
        if (this.zzw == null && (context = this.zzd) != null) {
            this.zzZ = Looper.myLooper();
            zzpo zzpoVar = new zzpo(context, new zzqy(this), this.zzy, this.zzV);
            this.zzw = zzpoVar;
            this.zzv = zzpoVar.zzc();
        }
        this.zzv.getClass();
    }

    private final void zzU() {
        if (!this.zzQ) {
            this.zzQ = true;
            this.zzj.zzb(zzO());
            if (zzac(this.zzu)) {
                this.zzR = false;
            }
            this.zzu.stop();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
        r0 = r2.zzM;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
        if (r0 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0037, code lost:
        if (r0.hasRemaining() == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
        r2.zzt.zze(r2.zzM);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzV(long r3) throws com.google.android.gms.internal.ads.zzqn {
        /*
            r2 = this;
            r2.zzR(r3)
            java.nio.ByteBuffer r0 = r2.zzO
            if (r0 == 0) goto L8
            goto L4b
        L8:
            com.google.android.gms.internal.ads.zzck r0 = r2.zzt
            boolean r0 = r0.zzh()
            if (r0 == 0) goto L41
        L10:
            com.google.android.gms.internal.ads.zzck r0 = r2.zzt
            boolean r0 = r0.zzg()
            if (r0 != 0) goto L4b
        L18:
            com.google.android.gms.internal.ads.zzck r0 = r2.zzt
            java.nio.ByteBuffer r0 = r0.zzb()
            boolean r1 = r0.hasRemaining()
            if (r1 == 0) goto L2f
            r2.zzX(r0)
            r2.zzR(r3)
            java.nio.ByteBuffer r0 = r2.zzO
            if (r0 == 0) goto L18
            goto L4b
        L2f:
            java.nio.ByteBuffer r0 = r2.zzM
            if (r0 == 0) goto L4b
            boolean r0 = r0.hasRemaining()
            if (r0 == 0) goto L4b
            com.google.android.gms.internal.ads.zzck r0 = r2.zzt
            java.nio.ByteBuffer r1 = r2.zzM
            r0.zze(r1)
            goto L10
        L41:
            java.nio.ByteBuffer r0 = r2.zzM
            if (r0 == 0) goto L4b
            r2.zzX(r0)
            r2.zzR(r3)
        L4b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzro.zzV(long):void");
    }

    private final void zzW(zzbb zzbbVar) {
        zzrf zzrfVar = new zzrf(zzbbVar, -9223372036854775807L, -9223372036854775807L, null);
        if (zzab()) {
            this.zzz = zzrfVar;
        } else {
            this.zzA = zzrfVar;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01ed A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x004b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzX(java.nio.ByteBuffer r17) {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzro.zzX(java.nio.ByteBuffer):void");
    }

    private final void zzY() {
        if (zzab()) {
            this.zzu.setVolume(this.zzL);
        }
    }

    private final void zzZ() {
        zzck zzckVar = this.zzs.zzi;
        this.zzt = zzckVar;
        zzckVar.zzc();
    }

    private final boolean zzaa() throws zzqn {
        if (!this.zzt.zzh()) {
            zzR(Long.MIN_VALUE);
            if (this.zzO != null) {
                return false;
            }
            return true;
        }
        this.zzt.zzd();
        zzV(Long.MIN_VALUE);
        if (!this.zzt.zzg()) {
            return false;
        }
        ByteBuffer byteBuffer = this.zzO;
        if (byteBuffer != null && byteBuffer.hasRemaining()) {
            return false;
        }
        return true;
    }

    private final boolean zzab() {
        if (this.zzu != null) {
            return true;
        }
        return false;
    }

    private static boolean zzac(AudioTrack audioTrack) {
        boolean isOffloadedPlayback;
        if (Build.VERSION.SDK_INT >= 29) {
            isOffloadedPlayback = audioTrack.isOffloadedPlayback();
            if (isOffloadedPlayback) {
                return true;
            }
            return false;
        }
        return false;
    }

    private final boolean zzad() {
        zzrd zzrdVar = this.zzs;
        if (zzrdVar.zzc == 0) {
            int i10 = zzrdVar.zza.zzI;
            return true;
        }
        return false;
    }

    private static final AudioTrack zzae(zzqi zzqiVar, zze zzeVar, int i10, zzz zzzVar, @Nullable Context context) throws zzqk {
        try {
            AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(zzeVar.zza().zza).setAudioFormat(zzex.zzx(zzqiVar.zzb, zzqiVar.zzc, zzqiVar.zza)).setTransferMode(1).setBufferSizeInBytes(zzqiVar.zze).setSessionId(i10);
            int i11 = Build.VERSION.SDK_INT;
            if (i11 >= 29) {
                sessionId.setOffloadedPlayback(zzqiVar.zzd);
            }
            if (i11 >= 34 && context != null) {
                sessionId.setContext(context);
            }
            AudioTrack build = sessionId.build();
            int state = build.getState();
            if (state == 1) {
                return build;
            }
            try {
                build.release();
            } catch (Exception unused) {
            }
            throw new zzqk(state, zzqiVar.zzb, zzqiVar.zzc, zzqiVar.zza, zzqiVar.zze, zzzVar, zzqiVar.zzd, null);
        } catch (IllegalArgumentException e10) {
            e = e10;
            throw new zzqk(0, zzqiVar.zzb, zzqiVar.zzc, zzqiVar.zza, zzqiVar.zze, zzzVar, zzqiVar.zzd, e);
        } catch (UnsupportedOperationException e11) {
            e = e11;
            throw new zzqk(0, zzqiVar.zzb, zzqiVar.zzc, zzqiVar.zza, zzqiVar.zze, zzzVar, zzqiVar.zzd, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final boolean zzA() {
        if (!zzab()) {
            return true;
        }
        if (this.zzP && !zzz()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final boolean zzB(zzz zzzVar) {
        if (zza(zzzVar) != 0) {
            return true;
        }
        return false;
    }

    public final void zzK(zzpj zzpjVar) {
        String name;
        Looper myLooper = Looper.myLooper();
        Looper looper = this.zzZ;
        if (looper != myLooper) {
            String str = "null";
            if (looper == null) {
                name = "null";
            } else {
                name = looper.getThread().getName();
            }
            if (myLooper != null) {
                str = myLooper.getThread().getName();
            }
            throw new IllegalStateException("Current looper (" + str + ") is not the playback looper (" + name + ")");
        }
        zzpj zzpjVar2 = this.zzv;
        if (zzpjVar2 != null && !zzpjVar.equals(zzpjVar2)) {
            this.zzv = zzpjVar;
            zzql zzqlVar = this.zzq;
            if (zzqlVar != null) {
                zzru.zzam(((zzrs) zzqlVar).zza);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final int zza(zzz zzzVar) {
        zzT();
        if (MimeTypes.AUDIO_RAW.equals(zzzVar.zzo)) {
            int i10 = zzzVar.zzI;
            if (!zzex.zzK(i10)) {
                zzea.zzf("DefaultAudioSink", "Invalid PCM encoding: " + i10);
                return 0;
            } else if (i10 == 2) {
                return 2;
            } else {
                return 1;
            }
        } else if (this.zzv.zzb(zzzVar, this.zzy) == null) {
            return 0;
        } else {
            return 2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final long zzb() {
        boolean z10;
        if (!zzab()) {
            return -9223372036854775807L;
        }
        AudioTrack audioTrack = this.zzu;
        zzrd zzrdVar = this.zzs;
        if (zzrdVar.zzc == 0) {
            return zzex.zzt(audioTrack.getBufferSizeInFrames(), zzrdVar.zze);
        }
        long bufferSizeInFrames = audioTrack.getBufferSizeInFrames();
        int zza2 = zzadz.zza(zzrdVar.zzg);
        if (zza2 != -2147483647) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzf(z10);
        return zzex.zzu(bufferSizeInFrames, 1000000L, zza2, RoundingMode.DOWN);
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final long zzc(boolean z10) {
        ArrayDeque arrayDeque;
        long j10;
        if (zzab() && !this.zzJ) {
            long min = Math.min(this.zzj.zza(), zzex.zzt(zzO(), this.zzs.zze));
            while (true) {
                arrayDeque = this.zzk;
                if (arrayDeque.isEmpty() || min < ((zzrf) arrayDeque.getFirst()).zzc) {
                    break;
                }
                this.zzA = (zzrf) arrayDeque.remove();
            }
            zzrf zzrfVar = this.zzA;
            long j11 = min - zzrfVar.zzc;
            long zzq = zzex.zzq(j11, zzrfVar.zza.zzb);
            if (arrayDeque.isEmpty()) {
                long zza2 = this.zzaf.zza(j11);
                zzrf zzrfVar2 = this.zzA;
                j10 = zzrfVar2.zzb + zza2;
                zzrfVar2.zzd = zza2 - zzq;
            } else {
                zzrf zzrfVar3 = this.zzA;
                j10 = zzrfVar3.zzb + zzq + zzrfVar3.zzd;
            }
            long zzb2 = this.zzaf.zzb();
            long zzt = j10 + zzex.zzt(zzb2, this.zzs.zze);
            long j12 = this.zzaa;
            if (zzb2 > j12) {
                long zzt2 = zzex.zzt(zzb2 - j12, this.zzs.zze);
                this.zzaa = zzb2;
                this.zzab += zzt2;
                if (this.zzac == null) {
                    this.zzac = new Handler(Looper.myLooper());
                }
                this.zzac.removeCallbacksAndMessages(null);
                this.zzac.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqw
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzro.zzH(zzro.this);
                    }
                }, 100L);
            }
            return zzt;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final zzbb zzd() {
        return this.zzB;
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final zzps zze(zzz zzzVar) {
        if (this.zzX) {
            return zzps.zza;
        }
        return this.zzag.zza(zzzVar, this.zzy);
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final void zzf(zzz zzzVar, int i10, @Nullable int[] iArr) throws zzqj {
        zzck zzckVar;
        int i11;
        int i12;
        int intValue;
        int i13;
        int i14;
        int i15;
        int minBufferSize;
        boolean z10;
        int i16;
        zzT();
        if (MimeTypes.AUDIO_RAW.equals(zzzVar.zzo)) {
            int i17 = zzzVar.zzI;
            zzdd.zzd(zzex.zzK(i17));
            int i18 = zzzVar.zzG;
            i15 = zzex.zzk(i17) * i18;
            zzfyn zzfynVar = new zzfyn();
            zzfynVar.zzh(this.zzi);
            zzfynVar.zzf(this.zzg);
            zzfynVar.zzg(this.zzaf.zze());
            zzck zzckVar2 = new zzck(zzfynVar.zzi());
            if (zzckVar2.equals(this.zzt)) {
                zzckVar2 = this.zzt;
            }
            this.zzf.zzq(zzzVar.zzJ, zzzVar.zzK);
            this.zze.zzo(iArr);
            try {
                zzcl zza2 = zzckVar2.zza(new zzcl(zzzVar.zzH, i18, i17));
                int i19 = zza2.zzd;
                int i20 = zza2.zzb;
                int i21 = zza2.zzc;
                i13 = i19;
                i12 = i20;
                zzckVar = zzckVar2;
                intValue = zzex.zzi(i21);
                i11 = zzex.zzk(i19) * i21;
                i14 = 0;
            } catch (zzcm e10) {
                throw new zzqj(e10, zzzVar);
            }
        } else {
            zzck zzckVar3 = new zzck(zzfyq.zzn());
            int i22 = zzzVar.zzH;
            zzps zzpsVar = zzps.zza;
            Pair zzb2 = this.zzv.zzb(zzzVar, this.zzy);
            if (zzb2 != null) {
                int intValue2 = ((Integer) zzb2.first).intValue();
                zzckVar = zzckVar3;
                i11 = -1;
                i12 = i22;
                intValue = ((Integer) zzb2.second).intValue();
                i13 = intValue2;
                i14 = 2;
                i15 = -1;
            } else {
                throw new zzqj("Unable to configure passthrough for: ".concat(String.valueOf(zzzVar)), zzzVar);
            }
        }
        if (i13 != 0) {
            if (intValue != 0) {
                int i23 = zzzVar.zzj;
                if (MimeTypes.AUDIO_DTS_EXPRESS.equals(zzzVar.zzo) && i23 == -1) {
                    i23 = 768000;
                }
                int i24 = i23;
                if (AudioTrack.getMinBufferSize(i12, intValue, i13) != -2) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                zzdd.zzf(z10);
                if (i11 != -1) {
                    i16 = i11;
                } else {
                    i16 = 1;
                }
                this.zzX = false;
                zzrd zzrdVar = new zzrd(zzzVar, i15, i14, i11, i12, intValue, i13, (((Math.max(minBufferSize, zzrq.zzb(minBufferSize, i13, i14, i16, i12, i24)) + i16) - 1) / i16) * i16, zzckVar, false, false, false);
                if (zzab()) {
                    this.zzr = zzrdVar;
                    return;
                } else {
                    this.zzs = zzrdVar;
                    return;
                }
            }
            throw new zzqj("Invalid output channel config (mode=" + i14 + ") for: " + String.valueOf(zzzVar), zzzVar);
        }
        throw new zzqj("Invalid output encoding (mode=" + i14 + ") for: " + String.valueOf(zzzVar), zzzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final void zzg() {
        if (zzab()) {
            this.zzD = 0L;
            this.zzE = 0L;
            this.zzF = 0L;
            this.zzG = 0L;
            this.zzY = false;
            this.zzH = 0;
            this.zzA = new zzrf(this.zzB, 0L, 0L, null);
            this.zzK = 0L;
            this.zzz = null;
            this.zzk.clear();
            this.zzM = null;
            this.zzN = 0;
            this.zzO = null;
            this.zzQ = false;
            this.zzP = false;
            this.zzR = false;
            this.zzf.zzp();
            zzZ();
            zzqs zzqsVar = this.zzj;
            if (zzqsVar.zzh()) {
                this.zzu.pause();
            }
            if (zzac(this.zzu)) {
                zzrm zzrmVar = this.zzl;
                zzrmVar.getClass();
                zzrmVar.zzb(this.zzu);
            }
            final zzqi zza2 = this.zzs.zza();
            zzrd zzrdVar = this.zzr;
            if (zzrdVar != null) {
                this.zzs = zzrdVar;
                this.zzr = null;
            }
            zzqsVar.zzc();
            zzrh zzrhVar = this.zzx;
            if (zzrhVar != null) {
                zzrhVar.zzb();
                this.zzx = null;
            }
            final AudioTrack audioTrack = this.zzu;
            final zzql zzqlVar = this.zzq;
            final Handler handler = new Handler(Looper.myLooper());
            synchronized (zza) {
                try {
                    if (zzb == null) {
                        String str = zzex.zza;
                        zzb = Executors.newSingleThreadScheduledExecutor(new ThreadFactory("ExoPlayer:AudioTrackReleaseThread") { // from class: com.google.android.gms.internal.ads.zzew
                            public final /* synthetic */ String zza = "ExoPlayer:AudioTrackReleaseThread";

                            @Override // java.util.concurrent.ThreadFactory
                            public final Thread newThread(Runnable runnable) {
                                String str2 = zzex.zza;
                                return new Thread(runnable, this.zza);
                            }
                        });
                    }
                    zzc++;
                    zzb.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqv
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzro.zzJ(audioTrack, zzqlVar, handler, zza2);
                        }
                    }, 20L, TimeUnit.MILLISECONDS);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.zzu = null;
        }
        this.zzn.zza();
        this.zzm.zza();
        this.zzaa = 0L;
        this.zzab = 0L;
        Handler handler2 = this.zzac;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final void zzh() {
        this.zzI = true;
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final void zzi() {
        this.zzS = false;
        if (zzab()) {
            if (this.zzj.zzk() || zzac(this.zzu)) {
                this.zzu.pause();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final void zzj() {
        this.zzS = true;
        if (zzab()) {
            this.zzj.zzf();
            this.zzu.play();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final void zzk() throws zzqn {
        if (!this.zzP && zzab() && zzaa()) {
            zzU();
            this.zzP = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final void zzl() {
        zzpo zzpoVar = this.zzw;
        if (zzpoVar != null) {
            zzpoVar.zzj();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final void zzm() {
        zzg();
        zzfyq zzfyqVar = this.zzi;
        int size = zzfyqVar.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((zzcn) zzfyqVar.get(i10)).zzf();
        }
        this.zzg.zzf();
        this.zzh.zzf();
        zzck zzckVar = this.zzt;
        if (zzckVar != null) {
            zzckVar.zzf();
        }
        this.zzS = false;
        this.zzX = false;
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final void zzn(zze zzeVar) {
        if (this.zzy.equals(zzeVar)) {
            return;
        }
        this.zzy = zzeVar;
        zzpo zzpoVar = this.zzw;
        if (zzpoVar != null) {
            zzpoVar.zzh(zzeVar);
        }
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final void zzo(int i10) {
        if (this.zzT != i10) {
            this.zzT = i10;
            zzg();
            zzql zzqlVar = this.zzq;
            if (zzqlVar != null) {
                if (Build.VERSION.SDK_INT >= 35) {
                    zzru zzruVar = ((zzrs) zzqlVar).zza;
                    if (zzru.zzai(zzruVar) != null) {
                        zzru.zzai(zzruVar).zzd(i10);
                    }
                }
                zzru.zzah(((zzrs) zzqlVar).zza).zzo(i10);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final void zzp(zzf zzfVar) {
        if (this.zzU.equals(zzfVar)) {
            return;
        }
        if (this.zzu != null) {
            int i10 = this.zzU.zza;
        }
        this.zzU = zzfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final void zzq(zzdj zzdjVar) {
        this.zzj.zze(zzdjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final void zzr(zzql zzqlVar) {
        this.zzq = zzqlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    @RequiresApi(29)
    public final void zzs(int i10, int i11) {
        AudioTrack audioTrack = this.zzu;
        if (audioTrack != null) {
            zzac(audioTrack);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final void zzt(zzbb zzbbVar) {
        float f10 = zzbbVar.zzb;
        String str = zzex.zza;
        this.zzB = new zzbb(Math.max(0.1f, Math.min(f10, 8.0f)), Math.max(0.1f, Math.min(zzbbVar.zzc, 8.0f)));
        zzW(zzbbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final void zzu(@Nullable zzph zzphVar) {
        this.zzp = zzphVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    @RequiresApi(23)
    public final void zzv(@Nullable AudioDeviceInfo audioDeviceInfo) {
        zzpp zzppVar;
        if (audioDeviceInfo == null) {
            zzppVar = null;
        } else {
            zzppVar = new zzpp(audioDeviceInfo);
        }
        this.zzV = zzppVar;
        zzpo zzpoVar = this.zzw;
        if (zzpoVar != null) {
            zzpoVar.zzi(audioDeviceInfo);
        }
        AudioTrack audioTrack = this.zzu;
        if (audioTrack != null) {
            zzqz.zza(audioTrack, this.zzV);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final void zzw(boolean z10) {
        this.zzC = z10;
        zzW(this.zzB);
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final void zzx(float f10) {
        if (this.zzL != f10) {
            this.zzL = f10;
            zzY();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0264  */
    @Override // com.google.android.gms.internal.ads.zzqo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzy(java.nio.ByteBuffer r28, long r29, int r31) throws com.google.android.gms.internal.ads.zzqk, com.google.android.gms.internal.ads.zzqn {
        /*
            Method dump skipped, instructions count: 1010
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzro.zzy(java.nio.ByteBuffer, long, int):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzqo
    public final boolean zzz() {
        boolean isOffloadedPlayback;
        if (zzab()) {
            if (Build.VERSION.SDK_INT >= 29) {
                isOffloadedPlayback = this.zzu.isOffloadedPlayback();
                if (isOffloadedPlayback && this.zzR) {
                    return false;
                }
            }
            if (this.zzj.zzg(zzO())) {
                return true;
            }
            return false;
        }
        return false;
    }
}
