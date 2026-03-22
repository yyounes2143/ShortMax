package c7;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Display;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.p0;
import b7.s0;
import c7.x;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.mediacodec.j;
import com.google.android.exoplayer2.v0;
import com.google.android.exoplayer2.video.MediaCodecVideoDecoderException;
import com.google.android.exoplayer2.video.PlaceholderSurface;
import com.google.common.collect.ImmutableList;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.services.core.di.ServiceProvider;
import java.nio.ByteBuffer;
import java.util.List;
import o5.b0;
import o5.o0;
/* compiled from: MediaCodecVideoRenderer.java */
/* loaded from: classes4.dex */
public class h extends MediaCodecRenderer {

    /* renamed from: p1  reason: collision with root package name */
    private static final int[] f3251p1 = {1920, 1600, 1440, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER, 960, 854, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK, 540, 480};

    /* renamed from: q1  reason: collision with root package name */
    private static boolean f3252q1;

    /* renamed from: r1  reason: collision with root package name */
    private static boolean f3253r1;
    private final Context G0;
    private final m H0;
    private final x.a I0;
    private final long J0;
    private final int K0;
    private final boolean L0;
    private b M0;
    private boolean N0;
    private boolean O0;
    @Nullable
    private Surface P0;
    @Nullable
    private PlaceholderSurface Q0;
    private boolean R0;
    private int S0;
    private boolean T0;
    private boolean U0;
    private boolean V0;
    private long W0;
    private long X0;
    private long Y0;
    private int Z0;

    /* renamed from: a1  reason: collision with root package name */
    private int f3254a1;

    /* renamed from: b1  reason: collision with root package name */
    private int f3255b1;

    /* renamed from: c1  reason: collision with root package name */
    private long f3256c1;

    /* renamed from: d1  reason: collision with root package name */
    private long f3257d1;

    /* renamed from: e1  reason: collision with root package name */
    private long f3258e1;

    /* renamed from: f1  reason: collision with root package name */
    private int f3259f1;

    /* renamed from: g1  reason: collision with root package name */
    private int f3260g1;

    /* renamed from: h1  reason: collision with root package name */
    private int f3261h1;

    /* renamed from: i1  reason: collision with root package name */
    private int f3262i1;

    /* renamed from: j1  reason: collision with root package name */
    private float f3263j1;
    @Nullable

    /* renamed from: k1  reason: collision with root package name */
    private z f3264k1;

    /* renamed from: l1  reason: collision with root package name */
    private boolean f3265l1;

    /* renamed from: m1  reason: collision with root package name */
    private int f3266m1;
    @Nullable

    /* renamed from: n1  reason: collision with root package name */
    c f3267n1;
    @Nullable

    /* renamed from: o1  reason: collision with root package name */
    private j f3268o1;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaCodecVideoRenderer.java */
    @RequiresApi(26)
    /* loaded from: classes4.dex */
    public static final class a {
        @DoNotInline
        public static boolean a(Context context) {
            Display display;
            boolean isHdr;
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager != null) {
                display = displayManager.getDisplay(0);
            } else {
                display = null;
            }
            if (display != null) {
                isHdr = display.isHdr();
                if (!isHdr) {
                    return false;
                }
                for (int i10 : display.getHdrCapabilities().getSupportedHdrTypes()) {
                    if (i10 == 1) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: MediaCodecVideoRenderer.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f3269a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3270b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3271c;

        public b(int i10, int i11, int i12) {
            this.f3269a = i10;
            this.f3270b = i11;
            this.f3271c = i12;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaCodecVideoRenderer.java */
    @RequiresApi(23)
    /* loaded from: classes4.dex */
    public final class c implements j.c, Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f3272a;

        public c(com.google.android.exoplayer2.mediacodec.j jVar) {
            Handler v10 = s0.v(this);
            this.f3272a = v10;
            jVar.n(this, v10);
        }

        private void b(long j10) {
            h hVar = h.this;
            if (this != hVar.f3267n1) {
                return;
            }
            if (j10 == Long.MAX_VALUE) {
                hVar.I1();
                return;
            }
            try {
                hVar.H1(j10);
            } catch (ExoPlaybackException e10) {
                h.this.W0(e10);
            }
        }

        @Override // com.google.android.exoplayer2.mediacodec.j.c
        public void a(com.google.android.exoplayer2.mediacodec.j jVar, long j10, long j11) {
            if (s0.f2506a < 30) {
                this.f3272a.sendMessageAtFrontOfQueue(Message.obtain(this.f3272a, 0, (int) (j10 >> 32), (int) j10));
                return;
            }
            b(j10);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            b(s0.N0(message.arg1, message.arg2));
            return true;
        }
    }

    public h(Context context, j.b bVar, com.google.android.exoplayer2.mediacodec.l lVar, long j10, boolean z10, @Nullable Handler handler, @Nullable x xVar, int i10) {
        this(context, bVar, lVar, j10, z10, handler, xVar, i10, 30.0f);
    }

    private void A1() {
        if (this.Z0 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.I0.n(this.Z0, elapsedRealtime - this.Y0);
            this.Z0 = 0;
            this.Y0 = elapsedRealtime;
        }
    }

    private void C1() {
        int i10 = this.f3259f1;
        if (i10 != 0) {
            this.I0.B(this.f3258e1, i10);
            this.f3258e1 = 0L;
            this.f3259f1 = 0;
        }
    }

    private void D1() {
        int i10 = this.f3260g1;
        if (i10 != -1 || this.f3261h1 != -1) {
            z zVar = this.f3264k1;
            if (zVar == null || zVar.f3331a != i10 || zVar.f3332b != this.f3261h1 || zVar.f3333c != this.f3262i1 || zVar.f3334d != this.f3263j1) {
                z zVar2 = new z(this.f3260g1, this.f3261h1, this.f3262i1, this.f3263j1);
                this.f3264k1 = zVar2;
                this.I0.D(zVar2);
            }
        }
    }

    private void E1() {
        if (this.R0) {
            this.I0.A(this.P0);
        }
    }

    private void F1() {
        z zVar = this.f3264k1;
        if (zVar != null) {
            this.I0.D(zVar);
        }
    }

    private void G1(long j10, long j11, v0 v0Var) {
        j jVar = this.f3268o1;
        if (jVar != null) {
            jVar.c(j10, j11, v0Var, j0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I1() {
        V0();
    }

    @RequiresApi(17)
    private void J1() {
        Surface surface = this.P0;
        PlaceholderSurface placeholderSurface = this.Q0;
        if (surface == placeholderSurface) {
            this.P0 = null;
        }
        placeholderSurface.release();
        this.Q0 = null;
    }

    @RequiresApi(29)
    private static void M1(com.google.android.exoplayer2.mediacodec.j jVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        jVar.a(bundle);
    }

    private void N1() {
        long j10;
        if (this.J0 > 0) {
            j10 = SystemClock.elapsedRealtime() + this.J0;
        } else {
            j10 = -9223372036854775807L;
        }
        this.X0 = j10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [c7.h, com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f] */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.view.Surface] */
    private void O1(@Nullable Object obj) throws ExoPlaybackException {
        PlaceholderSurface placeholderSurface;
        if (obj instanceof Surface) {
            placeholderSurface = (Surface) obj;
        } else {
            placeholderSurface = null;
        }
        if (placeholderSurface == null) {
            PlaceholderSurface placeholderSurface2 = this.Q0;
            if (placeholderSurface2 != null) {
                placeholderSurface = placeholderSurface2;
            } else {
                com.google.android.exoplayer2.mediacodec.k g02 = g0();
                if (g02 != null && T1(g02)) {
                    placeholderSurface = PlaceholderSurface.c(this.G0, g02.f17979g);
                    this.Q0 = placeholderSurface;
                }
            }
        }
        if (this.P0 != placeholderSurface) {
            this.P0 = placeholderSurface;
            this.H0.m(placeholderSurface);
            this.R0 = false;
            int state = getState();
            com.google.android.exoplayer2.mediacodec.j f02 = f0();
            if (f02 != null) {
                if (s0.f2506a >= 23 && placeholderSurface != null && !this.N0) {
                    P1(f02, placeholderSurface);
                } else {
                    N0();
                    x0();
                }
            }
            if (placeholderSurface != null && placeholderSurface != this.Q0) {
                F1();
                j1();
                if (state == 2) {
                    N1();
                    return;
                }
                return;
            }
            k1();
            j1();
        } else if (placeholderSurface != null && placeholderSurface != this.Q0) {
            F1();
            E1();
        }
    }

    private boolean T1(com.google.android.exoplayer2.mediacodec.k kVar) {
        if (s0.f2506a >= 23 && !this.f3265l1 && !l1(kVar.f17973a) && (!kVar.f17979g || PlaceholderSurface.b(this.G0))) {
            return true;
        }
        return false;
    }

    private void j1() {
        com.google.android.exoplayer2.mediacodec.j f02;
        this.T0 = false;
        if (s0.f2506a >= 23 && this.f3265l1 && (f02 = f0()) != null) {
            this.f3267n1 = new c(f02);
        }
    }

    private void k1() {
        this.f3264k1 = null;
    }

    @RequiresApi(21)
    private static void m1(MediaFormat mediaFormat, int i10) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i10);
    }

    private static boolean n1() {
        return "NVIDIA".equals(s0.f2508c);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:543:0x073c, code lost:
        if (r11.equals("A10-70L") == false) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean p1() {
        /*
            Method dump skipped, instructions count: 3180
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c7.h.p1():boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007a, code lost:
        if (r8.equals(com.unity3d.services.core.device.MimeTypes.VIDEO_AV1) == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int q1(com.google.android.exoplayer2.mediacodec.k r10, com.google.android.exoplayer2.v0 r11) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c7.h.q1(com.google.android.exoplayer2.mediacodec.k, com.google.android.exoplayer2.v0):int");
    }

    @Nullable
    private static Point r1(com.google.android.exoplayer2.mediacodec.k kVar, v0 v0Var) {
        boolean z10;
        int i10;
        int[] iArr;
        int i11;
        int i12;
        int i13 = v0Var.f19163r;
        int i14 = v0Var.f19162q;
        if (i13 > i14) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            i10 = i13;
        } else {
            i10 = i14;
        }
        if (z10) {
            i13 = i14;
        }
        float f10 = i13 / i10;
        for (int i15 : f3251p1) {
            int i16 = (int) (i15 * f10);
            if (i15 <= i10 || i16 <= i13) {
                break;
            }
            if (s0.f2506a >= 21) {
                if (z10) {
                    i12 = i16;
                } else {
                    i12 = i15;
                }
                if (!z10) {
                    i15 = i16;
                }
                Point b10 = kVar.b(i12, i15);
                if (kVar.u(b10.x, b10.y, v0Var.f19164s)) {
                    return b10;
                }
            } else {
                try {
                    int l10 = s0.l(i15, 16) * 16;
                    int l11 = s0.l(i16, 16) * 16;
                    if (l10 * l11 <= MediaCodecUtil.N()) {
                        if (z10) {
                            i11 = l11;
                        } else {
                            i11 = l10;
                        }
                        if (!z10) {
                            l10 = l11;
                        }
                        return new Point(i11, l10);
                    }
                } catch (MediaCodecUtil.DecoderQueryException unused) {
                }
            }
        }
        return null;
    }

    private static List<com.google.android.exoplayer2.mediacodec.k> t1(Context context, com.google.android.exoplayer2.mediacodec.l lVar, v0 v0Var, boolean z10, boolean z11) throws MediaCodecUtil.DecoderQueryException {
        String str = v0Var.f19157l;
        if (str == null) {
            return ImmutableList.A();
        }
        List<com.google.android.exoplayer2.mediacodec.k> a10 = lVar.a(str, z10, z11);
        String m10 = MediaCodecUtil.m(v0Var);
        if (m10 == null) {
            return ImmutableList.u(a10);
        }
        List<com.google.android.exoplayer2.mediacodec.k> a11 = lVar.a(m10, z10, z11);
        if (s0.f2506a >= 26 && "video/dolby-vision".equals(v0Var.f19157l) && !a11.isEmpty() && !a.a(context)) {
            return ImmutableList.u(a11);
        }
        return ImmutableList.r().j(a10).j(a11).k();
    }

    protected static int u1(com.google.android.exoplayer2.mediacodec.k kVar, v0 v0Var) {
        if (v0Var.f19158m != -1) {
            int size = v0Var.f19159n.size();
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                i10 += v0Var.f19159n.get(i11).length;
            }
            return v0Var.f19158m + i10;
        }
        return q1(kVar, v0Var);
    }

    private static int v1(int i10, int i11) {
        return (i10 * 3) / (i11 * 2);
    }

    private static boolean x1(long j10) {
        if (j10 < -30000) {
            return true;
        }
        return false;
    }

    private static boolean y1(long j10) {
        if (j10 < -500000) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    @TargetApi(17)
    public void A() {
        try {
            super.A();
        } finally {
            if (this.Q0 != null) {
                J1();
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void A0(String str, j.a aVar, long j10, long j11) {
        this.I0.k(str, j10, j11);
        this.N0 = l1(str);
        this.O0 = ((com.google.android.exoplayer2.mediacodec.k) b7.a.e(g0())).n();
        if (s0.f2506a >= 23 && this.f3265l1) {
            this.f3267n1 = new c((com.google.android.exoplayer2.mediacodec.j) b7.a.e(f0()));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void B() {
        super.B();
        this.Z0 = 0;
        this.Y0 = SystemClock.elapsedRealtime();
        this.f3257d1 = SystemClock.elapsedRealtime() * 1000;
        this.f3258e1 = 0L;
        this.f3259f1 = 0;
        this.H0.k();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void B0(String str) {
        this.I0.l(str);
    }

    void B1() {
        this.V0 = true;
        if (!this.T0) {
            this.T0 = true;
            this.I0.A(this.P0);
            this.R0 = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void C() {
        this.X0 = -9223372036854775807L;
        A1();
        C1();
        this.H0.l();
        super.C();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @Nullable
    public r5.g C0(b0 b0Var) throws ExoPlaybackException {
        r5.g C0 = super.C0(b0Var);
        this.I0.p(b0Var.f63093b, C0);
        return C0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void D0(v0 v0Var, @Nullable MediaFormat mediaFormat) {
        boolean z10;
        int integer;
        int integer2;
        com.google.android.exoplayer2.mediacodec.j f02 = f0();
        if (f02 != null) {
            f02.setVideoScalingMode(this.S0);
        }
        if (this.f3265l1) {
            this.f3260g1 = v0Var.f19162q;
            this.f3261h1 = v0Var.f19163r;
        } else {
            b7.a.e(mediaFormat);
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
            this.f3260g1 = integer;
            if (z10) {
                integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
            } else {
                integer2 = mediaFormat.getInteger("height");
            }
            this.f3261h1 = integer2;
        }
        float f10 = v0Var.f19166u;
        this.f3263j1 = f10;
        if (s0.f2506a >= 21) {
            int i10 = v0Var.f19165t;
            if (i10 == 90 || i10 == 270) {
                int i11 = this.f3260g1;
                this.f3260g1 = this.f3261h1;
                this.f3261h1 = i11;
                this.f3263j1 = 1.0f / f10;
            }
        } else {
            this.f3262i1 = v0Var.f19165t;
        }
        this.H0.g(v0Var.f19164s);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @CallSuper
    public void F0(long j10) {
        super.F0(j10);
        if (!this.f3265l1) {
            this.f3255b1--;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void G0() {
        super.G0();
        j1();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @CallSuper
    protected void H0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        boolean z10 = this.f3265l1;
        if (!z10) {
            this.f3255b1++;
        }
        if (s0.f2506a < 23 && z10) {
            H1(decoderInputBuffer.f17475e);
        }
    }

    protected void H1(long j10) throws ExoPlaybackException {
        g1(j10);
        D1();
        this.B0.f65577e++;
        B1();
        F0(j10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected r5.g J(com.google.android.exoplayer2.mediacodec.k kVar, v0 v0Var, v0 v0Var2) {
        int i10;
        r5.g e10 = kVar.e(v0Var, v0Var2);
        int i11 = e10.f65591e;
        int i12 = v0Var2.f19162q;
        b bVar = this.M0;
        if (i12 > bVar.f3269a || v0Var2.f19163r > bVar.f3270b) {
            i11 |= 256;
        }
        if (u1(kVar, v0Var2) > this.M0.f3271c) {
            i11 |= 64;
        }
        int i13 = i11;
        String str = kVar.f17973a;
        if (i13 != 0) {
            i10 = 0;
        } else {
            i10 = e10.f65590d;
        }
        return new r5.g(str, v0Var, v0Var2, i10, i13);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean J0(long j10, long j11, @Nullable com.google.android.exoplayer2.mediacodec.j jVar, @Nullable ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, v0 v0Var) throws ExoPlaybackException {
        boolean z12;
        boolean z13;
        long j13;
        boolean z14;
        b7.a.e(jVar);
        if (this.W0 == -9223372036854775807L) {
            this.W0 = j10;
        }
        if (j12 != this.f3256c1) {
            this.H0.h(j12);
            this.f3256c1 = j12;
        }
        long n02 = n0();
        long j14 = j12 - n02;
        if (z10 && !z11) {
            U1(jVar, i10, j14);
            return true;
        }
        double o02 = o0();
        if (getState() == 2) {
            z12 = true;
        } else {
            z12 = false;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j15 = (long) ((j12 - j10) / o02);
        if (z12) {
            j15 -= elapsedRealtime - j11;
        }
        if (this.P0 == this.Q0) {
            if (!x1(j15)) {
                return false;
            }
            U1(jVar, i10, j14);
            W1(j15);
            return true;
        }
        long j16 = elapsedRealtime - this.f3257d1;
        if (this.V0 ? this.T0 : !z12 && !this.U0) {
            j13 = j16;
            z13 = false;
        } else {
            z13 = true;
            j13 = j16;
        }
        if (this.X0 == -9223372036854775807L && j10 >= n02 && (z13 || (z12 && S1(j15, j13)))) {
            long nanoTime = System.nanoTime();
            G1(j14, nanoTime, v0Var);
            if (s0.f2506a >= 21) {
                L1(jVar, i10, j14, nanoTime);
            } else {
                K1(jVar, i10, j14);
            }
            W1(j15);
            return true;
        }
        if (z12 && j10 != this.W0) {
            long nanoTime2 = System.nanoTime();
            long b10 = this.H0.b((j15 * 1000) + nanoTime2);
            long j17 = (b10 - nanoTime2) / 1000;
            if (this.X0 != -9223372036854775807L) {
                z14 = true;
            } else {
                z14 = false;
            }
            if (Q1(j17, j11, z11) && z1(j10, z14)) {
                return false;
            }
            if (R1(j17, j11, z11)) {
                if (z14) {
                    U1(jVar, i10, j14);
                } else {
                    o1(jVar, i10, j14);
                }
                W1(j17);
                return true;
            } else if (s0.f2506a >= 21) {
                if (j17 < ServiceProvider.SCAR_SIGNALS_FETCH_TIMEOUT) {
                    G1(j14, b10, v0Var);
                    L1(jVar, i10, j14, b10);
                    W1(j17);
                    return true;
                }
            } else if (j17 < 30000) {
                if (j17 > 11000) {
                    try {
                        Thread.sleep((j17 - 10000) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                G1(j14, b10, v0Var);
                K1(jVar, i10, j14);
                W1(j17);
                return true;
            }
        }
        return false;
    }

    protected void K1(com.google.android.exoplayer2.mediacodec.j jVar, int i10, long j10) {
        D1();
        p0.a("releaseOutputBuffer");
        jVar.g(i10, true);
        p0.c();
        this.f3257d1 = SystemClock.elapsedRealtime() * 1000;
        this.B0.f65577e++;
        this.f3254a1 = 0;
        B1();
    }

    @RequiresApi(21)
    protected void L1(com.google.android.exoplayer2.mediacodec.j jVar, int i10, long j10, long j11) {
        D1();
        p0.a("releaseOutputBuffer");
        jVar.e(i10, j11);
        p0.c();
        this.f3257d1 = SystemClock.elapsedRealtime() * 1000;
        this.B0.f65577e++;
        this.f3254a1 = 0;
        B1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @CallSuper
    public void P0() {
        super.P0();
        this.f3255b1 = 0;
    }

    @RequiresApi(23)
    protected void P1(com.google.android.exoplayer2.mediacodec.j jVar, Surface surface) {
        jVar.j(surface);
    }

    protected boolean Q1(long j10, long j11, boolean z10) {
        if (y1(j10) && !z10) {
            return true;
        }
        return false;
    }

    protected boolean R1(long j10, long j11, boolean z10) {
        if (x1(j10) && !z10) {
            return true;
        }
        return false;
    }

    protected boolean S1(long j10, long j11) {
        if (x1(j10) && j11 > 100000) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected MediaCodecDecoderException T(Throwable th2, @Nullable com.google.android.exoplayer2.mediacodec.k kVar) {
        return new MediaCodecVideoDecoderException(th2, kVar, this.P0);
    }

    protected void U1(com.google.android.exoplayer2.mediacodec.j jVar, int i10, long j10) {
        p0.a("skipVideoBuffer");
        jVar.g(i10, false);
        p0.c();
        this.B0.f65578f++;
    }

    protected void V1(int i10, int i11) {
        r5.e eVar = this.B0;
        eVar.f65580h += i10;
        int i12 = i10 + i11;
        eVar.f65579g += i12;
        this.Z0 += i12;
        int i13 = this.f3254a1 + i12;
        this.f3254a1 = i13;
        eVar.f65581i = Math.max(i13, eVar.f65581i);
        int i14 = this.K0;
        if (i14 > 0 && this.Z0 >= i14) {
            A1();
        }
    }

    protected void W1(long j10) {
        this.B0.a(j10);
        this.f3258e1 += j10;
        this.f3259f1++;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean Z0(com.google.android.exoplayer2.mediacodec.k kVar) {
        if (this.P0 == null && !T1(kVar)) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected int c1(com.google.android.exoplayer2.mediacodec.l lVar, v0 v0Var) throws MediaCodecUtil.DecoderQueryException {
        boolean z10;
        boolean z11;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14 = 0;
        if (!b7.u.o(v0Var.f19157l)) {
            return o0.k(0);
        }
        if (v0Var.f19160o != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        List<com.google.android.exoplayer2.mediacodec.k> t12 = t1(this.G0, lVar, v0Var, z10, false);
        if (z10 && t12.isEmpty()) {
            t12 = t1(this.G0, lVar, v0Var, false, false);
        }
        if (t12.isEmpty()) {
            return o0.k(1);
        }
        if (!MediaCodecRenderer.d1(v0Var)) {
            return o0.k(2);
        }
        com.google.android.exoplayer2.mediacodec.k kVar = t12.get(0);
        boolean m10 = kVar.m(v0Var);
        if (!m10) {
            for (int i15 = 1; i15 < t12.size(); i15++) {
                com.google.android.exoplayer2.mediacodec.k kVar2 = t12.get(i15);
                if (kVar2.m(v0Var)) {
                    z11 = false;
                    m10 = true;
                    kVar = kVar2;
                    break;
                }
            }
        }
        z11 = true;
        if (m10) {
            i10 = 4;
        } else {
            i10 = 3;
        }
        if (kVar.p(v0Var)) {
            i11 = 16;
        } else {
            i11 = 8;
        }
        if (kVar.f17980h) {
            i12 = 64;
        } else {
            i12 = 0;
        }
        if (z11) {
            i13 = 128;
        } else {
            i13 = 0;
        }
        if (s0.f2506a >= 26 && "video/dolby-vision".equals(v0Var.f19157l) && !a.a(this.G0)) {
            i13 = 256;
        }
        if (m10) {
            List<com.google.android.exoplayer2.mediacodec.k> t13 = t1(this.G0, lVar, v0Var, z10, true);
            if (!t13.isEmpty()) {
                com.google.android.exoplayer2.mediacodec.k kVar3 = MediaCodecUtil.u(t13, v0Var).get(0);
                if (kVar3.m(v0Var) && kVar3.p(v0Var)) {
                    i14 = 32;
                }
            }
        }
        return o0.i(i10, i11, i14, i12, i13);
    }

    @Override // com.google.android.exoplayer2.p1, o5.o0
    public String getName() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean h0() {
        if (this.f3265l1 && s0.f2506a < 23) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.m1.b
    public void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException {
        if (i10 != 1) {
            if (i10 != 7) {
                if (i10 != 10) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            super.handleMessage(i10, obj);
                            return;
                        } else {
                            this.H0.o(((Integer) obj).intValue());
                            return;
                        }
                    }
                    this.S0 = ((Integer) obj).intValue();
                    com.google.android.exoplayer2.mediacodec.j f02 = f0();
                    if (f02 != null) {
                        f02.setVideoScalingMode(this.S0);
                        return;
                    }
                    return;
                }
                int intValue = ((Integer) obj).intValue();
                if (this.f3266m1 != intValue) {
                    this.f3266m1 = intValue;
                    if (this.f3265l1) {
                        N0();
                        return;
                    }
                    return;
                }
                return;
            }
            this.f3268o1 = (j) obj;
            return;
        }
        O1(obj);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected float i0(float f10, v0 v0Var, v0[] v0VarArr) {
        float f11 = -1.0f;
        for (v0 v0Var2 : v0VarArr) {
            float f12 = v0Var2.f19164s;
            if (f12 != -1.0f) {
                f11 = Math.max(f11, f12);
            }
        }
        if (f11 == -1.0f) {
            return -1.0f;
        }
        return f11 * f10;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.p1
    public boolean isReady() {
        PlaceholderSurface placeholderSurface;
        if (super.isReady() && (this.T0 || (((placeholderSurface = this.Q0) != null && this.P0 == placeholderSurface) || f0() == null || this.f3265l1))) {
            this.X0 = -9223372036854775807L;
            return true;
        } else if (this.X0 == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.X0) {
                return true;
            }
            this.X0 = -9223372036854775807L;
            return false;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected List<com.google.android.exoplayer2.mediacodec.k> k0(com.google.android.exoplayer2.mediacodec.l lVar, v0 v0Var, boolean z10) throws MediaCodecUtil.DecoderQueryException {
        return MediaCodecUtil.u(t1(this.G0, lVar, v0Var, z10, this.f3265l1), v0Var);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.p1
    public void l(float f10, float f11) throws ExoPlaybackException {
        super.l(f10, f11);
        this.H0.i(f10);
    }

    protected boolean l1(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (h.class) {
            try {
                if (!f3252q1) {
                    f3253r1 = p1();
                    f3252q1 = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f3253r1;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @TargetApi(17)
    protected j.a m0(com.google.android.exoplayer2.mediacodec.k kVar, v0 v0Var, @Nullable MediaCrypto mediaCrypto, float f10) {
        int i10;
        PlaceholderSurface placeholderSurface = this.Q0;
        if (placeholderSurface != null && placeholderSurface.f19211a != kVar.f17979g) {
            J1();
        }
        String str = kVar.f17975c;
        b s12 = s1(kVar, v0Var, v());
        this.M0 = s12;
        boolean z10 = this.L0;
        if (this.f3265l1) {
            i10 = this.f3266m1;
        } else {
            i10 = 0;
        }
        MediaFormat w12 = w1(v0Var, str, s12, f10, z10, i10);
        if (this.P0 == null) {
            if (T1(kVar)) {
                if (this.Q0 == null) {
                    this.Q0 = PlaceholderSurface.c(this.G0, kVar.f17979g);
                }
                this.P0 = this.Q0;
            } else {
                throw new IllegalStateException();
            }
        }
        return j.a.b(kVar, w12, v0Var, this.P0, mediaCrypto);
    }

    protected void o1(com.google.android.exoplayer2.mediacodec.j jVar, int i10, long j10) {
        p0.a("dropVideoBuffer");
        jVar.g(i10, false);
        p0.c();
        V1(0, 1);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @TargetApi(29)
    protected void p0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        if (!this.O0) {
            return;
        }
        ByteBuffer byteBuffer = (ByteBuffer) b7.a.e(decoderInputBuffer.f17476f);
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
                    M1(f0(), bArr);
                }
            }
        }
    }

    protected b s1(com.google.android.exoplayer2.mediacodec.k kVar, v0 v0Var, v0[] v0VarArr) {
        boolean z10;
        int q12;
        int i10 = v0Var.f19162q;
        int i11 = v0Var.f19163r;
        int u12 = u1(kVar, v0Var);
        if (v0VarArr.length == 1) {
            if (u12 != -1 && (q12 = q1(kVar, v0Var)) != -1) {
                u12 = Math.min((int) (u12 * 1.5f), q12);
            }
            return new b(i10, i11, u12);
        }
        int length = v0VarArr.length;
        boolean z11 = false;
        for (int i12 = 0; i12 < length; i12++) {
            v0 v0Var2 = v0VarArr[i12];
            if (v0Var.f19169x != null && v0Var2.f19169x == null) {
                v0Var2 = v0Var2.b().J(v0Var.f19169x).E();
            }
            if (kVar.e(v0Var, v0Var2).f65590d != 0) {
                int i13 = v0Var2.f19162q;
                if (i13 != -1 && v0Var2.f19163r != -1) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                z11 |= z10;
                i10 = Math.max(i10, i13);
                i11 = Math.max(i11, v0Var2.f19163r);
                u12 = Math.max(u12, u1(kVar, v0Var2));
            }
        }
        if (z11) {
            b7.q.i("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + i10 + TextureRenderKeys.KEY_IS_X + i11);
            Point r12 = r1(kVar, v0Var);
            if (r12 != null) {
                i10 = Math.max(i10, r12.x);
                i11 = Math.max(i11, r12.y);
                u12 = Math.max(u12, q1(kVar, v0Var.b().j0(i10).Q(i11).E()));
                b7.q.i("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + i10 + TextureRenderKeys.KEY_IS_X + i11);
            }
        }
        return new b(i10, i11, u12);
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(21)
    protected MediaFormat w1(v0 v0Var, String str, b bVar, float f10, boolean z10, int i10) {
        Pair<Integer, Integer> q10;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", v0Var.f19162q);
        mediaFormat.setInteger("height", v0Var.f19163r);
        b7.t.e(mediaFormat, v0Var.f19159n);
        b7.t.c(mediaFormat, com.ss.ttm.player.MediaFormat.KEY_FRAME_RATE, v0Var.f19164s);
        b7.t.d(mediaFormat, "rotation-degrees", v0Var.f19165t);
        b7.t.b(mediaFormat, v0Var.f19169x);
        if ("video/dolby-vision".equals(v0Var.f19157l) && (q10 = MediaCodecUtil.q(v0Var)) != null) {
            b7.t.d(mediaFormat, "profile", ((Integer) q10.first).intValue());
        }
        mediaFormat.setInteger("max-width", bVar.f3269a);
        mediaFormat.setInteger("max-height", bVar.f3270b);
        b7.t.d(mediaFormat, "max-input-size", bVar.f3271c);
        if (s0.f2506a >= 23) {
            mediaFormat.setInteger(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, 0);
            if (f10 != -1.0f) {
                mediaFormat.setFloat("operating-rate", f10);
            }
        }
        if (z10) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i10 != 0) {
            m1(mediaFormat, i10);
        }
        return mediaFormat;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void x() {
        k1();
        j1();
        this.R0 = false;
        this.f3267n1 = null;
        try {
            super.x();
        } finally {
            this.I0.m(this.B0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void y(boolean z10, boolean z11) throws ExoPlaybackException {
        boolean z12;
        super.y(z10, z11);
        boolean z13 = r().f63122a;
        if (z13 && this.f3266m1 == 0) {
            z12 = false;
        } else {
            z12 = true;
        }
        b7.a.g(z12);
        if (this.f3265l1 != z13) {
            this.f3265l1 = z13;
            N0();
        }
        this.I0.o(this.B0);
        this.U0 = z11;
        this.V0 = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void z(long j10, boolean z10) throws ExoPlaybackException {
        super.z(j10, z10);
        j1();
        this.H0.j();
        this.f3256c1 = -9223372036854775807L;
        this.W0 = -9223372036854775807L;
        this.f3254a1 = 0;
        if (z10) {
            N1();
        } else {
            this.X0 = -9223372036854775807L;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void z0(Exception exc) {
        b7.q.d("MediaCodecVideoRenderer", "Video codec error", exc);
        this.I0.C(exc);
    }

    protected boolean z1(long j10, boolean z10) throws ExoPlaybackException {
        int G = G(j10);
        if (G == 0) {
            return false;
        }
        if (z10) {
            r5.e eVar = this.B0;
            eVar.f65576d += G;
            eVar.f65578f += this.f3255b1;
        } else {
            this.B0.f65582j++;
            V1(G, this.f3255b1);
        }
        c0();
        return true;
    }

    public h(Context context, j.b bVar, com.google.android.exoplayer2.mediacodec.l lVar, long j10, boolean z10, @Nullable Handler handler, @Nullable x xVar, int i10, float f10) {
        super(2, bVar, lVar, z10, f10);
        this.J0 = j10;
        this.K0 = i10;
        Context applicationContext = context.getApplicationContext();
        this.G0 = applicationContext;
        this.H0 = new m(applicationContext);
        this.I0 = new x.a(handler, xVar);
        this.L0 = n1();
        this.X0 = -9223372036854775807L;
        this.f3260g1 = -1;
        this.f3261h1 = -1;
        this.f3263j1 = -1.0f;
        this.S0 = 1;
        this.f3266m1 = 0;
        k1();
    }
}
