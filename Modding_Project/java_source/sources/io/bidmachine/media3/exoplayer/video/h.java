package io.bidmachine.media3.exoplayer.video;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Pair;
import android.view.Display;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import cn.d0;
import cn.m0;
import com.facebook.ads.AdError;
import com.google.common.collect.ImmutableList;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.services.core.device.MimeTypes;
import gn.c0;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.ExoPlaybackException;
import io.bidmachine.media3.exoplayer.h2;
import io.bidmachine.media3.exoplayer.i2;
import io.bidmachine.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer;
import io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil;
import io.bidmachine.media3.exoplayer.mediacodec.h;
import io.bidmachine.media3.exoplayer.source.r;
import io.bidmachine.media3.exoplayer.video.VideoSink;
import io.bidmachine.media3.exoplayer.video.i;
import io.bidmachine.media3.exoplayer.video.n;
import io.bidmachine.media3.exoplayer.video.p;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.PriorityQueue;
import zm.a0;
import zm.i0;
import zm.u;
/* compiled from: MediaCodecVideoRenderer.java */
/* loaded from: classes8.dex */
public class h extends MediaCodecRenderer implements n.b {

    /* renamed from: u1  reason: collision with root package name */
    private static final int[] f57187u1 = {1920, 1600, 1440, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER, 960, 854, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK, 540, 480};

    /* renamed from: v1  reason: collision with root package name */
    private static boolean f57188v1;

    /* renamed from: w1  reason: collision with root package name */
    private static boolean f57189w1;
    private final Context F0;
    private final boolean G0;
    private final p.a H0;
    private final int I0;
    private final boolean J0;
    private final n K0;
    private final n.a L0;
    @Nullable
    private final io.bidmachine.media3.exoplayer.video.a M0;
    private final long N0;
    private final PriorityQueue<Long> O0;
    private e P0;
    private boolean Q0;
    private boolean R0;
    private VideoSink S0;
    private boolean T0;
    private List<Object> U0;
    @Nullable
    private Surface V0;
    @Nullable
    private PlaceholderSurface W0;
    private d0 X0;
    private boolean Y0;
    private int Z0;

    /* renamed from: a1  reason: collision with root package name */
    private int f57190a1;

    /* renamed from: b1  reason: collision with root package name */
    private long f57191b1;

    /* renamed from: c1  reason: collision with root package name */
    private int f57192c1;

    /* renamed from: d1  reason: collision with root package name */
    private int f57193d1;

    /* renamed from: e1  reason: collision with root package name */
    private int f57194e1;

    /* renamed from: f1  reason: collision with root package name */
    private long f57195f1;

    /* renamed from: g1  reason: collision with root package name */
    private int f57196g1;

    /* renamed from: h1  reason: collision with root package name */
    private long f57197h1;

    /* renamed from: i1  reason: collision with root package name */
    private i0 f57198i1;
    @Nullable

    /* renamed from: j1  reason: collision with root package name */
    private i0 f57199j1;

    /* renamed from: k1  reason: collision with root package name */
    private int f57200k1;

    /* renamed from: l1  reason: collision with root package name */
    private boolean f57201l1;

    /* renamed from: m1  reason: collision with root package name */
    private int f57202m1;
    @Nullable

    /* renamed from: n1  reason: collision with root package name */
    f f57203n1;
    @Nullable

    /* renamed from: o1  reason: collision with root package name */
    private yn.f f57204o1;

    /* renamed from: p1  reason: collision with root package name */
    private long f57205p1;

    /* renamed from: q1  reason: collision with root package name */
    private long f57206q1;

    /* renamed from: r1  reason: collision with root package name */
    private boolean f57207r1;

    /* renamed from: s1  reason: collision with root package name */
    private boolean f57208s1;

    /* renamed from: t1  reason: collision with root package name */
    private int f57209t1;

    /* compiled from: MediaCodecVideoRenderer.java */
    /* loaded from: classes8.dex */
    class b implements VideoSink.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.bidmachine.media3.exoplayer.mediacodec.h f57211a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f57212b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ long f57213c;

        b(io.bidmachine.media3.exoplayer.mediacodec.h hVar, int i10, long j10) {
            this.f57211a = hVar;
            this.f57212b = i10;
            this.f57213c = j10;
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink.b
        public void a() {
            h.this.I2(this.f57211a, this.f57212b, this.f57213c);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink.b
        public void b(long j10) {
            h.this.v2(this.f57211a, this.f57212b, this.f57213c, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaCodecVideoRenderer.java */
    @RequiresApi(26)
    /* loaded from: classes8.dex */
    public static final class c {
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

    /* compiled from: MediaCodecVideoRenderer.java */
    /* loaded from: classes8.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final Context f57215a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f57216b;

        /* renamed from: d  reason: collision with root package name */
        private h.b f57218d;

        /* renamed from: e  reason: collision with root package name */
        private long f57219e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f57220f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private Handler f57221g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private p f57222h;

        /* renamed from: i  reason: collision with root package name */
        private int f57223i;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private VideoSink f57225k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f57226l;

        /* renamed from: c  reason: collision with root package name */
        private io.bidmachine.media3.exoplayer.mediacodec.l f57217c = io.bidmachine.media3.exoplayer.mediacodec.l.f56588a;

        /* renamed from: j  reason: collision with root package name */
        private float f57224j = 30.0f;

        /* renamed from: m  reason: collision with root package name */
        private long f57227m = -9223372036854775807L;

        public d(Context context) {
            this.f57215a = context;
            this.f57218d = h.b.a(context);
        }

        public h m() {
            boolean z10;
            cn.a.g(!this.f57216b);
            Handler handler = this.f57221g;
            if ((handler == null && this.f57222h == null) || (handler != null && this.f57222h != null)) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.g(z10);
            this.f57216b = true;
            return new h(this);
        }

        public d n(long j10) {
            this.f57227m = j10;
            return this;
        }

        public d o(boolean z10) {
            this.f57226l = z10;
            return this;
        }

        public d p(long j10) {
            this.f57219e = j10;
            return this;
        }

        public d q(h.b bVar) {
            this.f57218d = bVar;
            return this;
        }

        public d r(boolean z10) {
            this.f57220f = z10;
            return this;
        }

        public d s(@Nullable Handler handler) {
            this.f57221g = handler;
            return this;
        }

        public d t(@Nullable p pVar) {
            this.f57222h = pVar;
            return this;
        }

        public d u(int i10) {
            this.f57223i = i10;
            return this;
        }

        public d v(io.bidmachine.media3.exoplayer.mediacodec.l lVar) {
            this.f57217c = lVar;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: MediaCodecVideoRenderer.java */
    /* loaded from: classes8.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final int f57228a;

        /* renamed from: b  reason: collision with root package name */
        public final int f57229b;

        /* renamed from: c  reason: collision with root package name */
        public final int f57230c;

        public e(int i10, int i11, int i12) {
            this.f57228a = i10;
            this.f57229b = i11;
            this.f57230c = i12;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaCodecVideoRenderer.java */
    @RequiresApi(23)
    /* loaded from: classes8.dex */
    public final class f implements h.d, Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f57231a;

        public f(io.bidmachine.media3.exoplayer.mediacodec.h hVar) {
            Handler B = m0.B(this);
            this.f57231a = B;
            hVar.o(this, B);
        }

        private void b(long j10) {
            h hVar = h.this;
            if (this == hVar.f57203n1 && hVar.w0() != null) {
                if (j10 == Long.MAX_VALUE) {
                    h.this.s2();
                    return;
                }
                try {
                    h.this.r2(j10);
                } catch (ExoPlaybackException e10) {
                    h.this.v1(e10);
                }
            }
        }

        @Override // io.bidmachine.media3.exoplayer.mediacodec.h.d
        public void a(io.bidmachine.media3.exoplayer.mediacodec.h hVar, long j10, long j11) {
            if (m0.f3614a < 30) {
                this.f57231a.sendMessageAtFrontOfQueue(Message.obtain(this.f57231a, 0, (int) (j10 >> 32), (int) j10));
                return;
            }
            b(j10);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            b(m0.s1(message.arg1, message.arg2));
            return true;
        }
    }

    protected h(d dVar) {
        super(2, dVar.f57218d, dVar.f57217c, dVar.f57220f, dVar.f57224j);
        boolean z10;
        Context applicationContext = dVar.f57215a.getApplicationContext();
        this.F0 = applicationContext;
        this.I0 = dVar.f57223i;
        this.S0 = dVar.f57225k;
        this.H0 = new p.a(dVar.f57221g, dVar.f57222h);
        if (this.S0 == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.G0 = z10;
        this.K0 = new n(applicationContext, this, dVar.f57219e);
        this.L0 = new n.a();
        this.J0 = R1();
        this.X0 = d0.f3574c;
        this.Z0 = 1;
        this.f57190a1 = 0;
        this.f57198i1 = i0.f71955e;
        this.f57202m1 = 0;
        this.f57199j1 = null;
        this.f57200k1 = -1000;
        this.f57205p1 = -9223372036854775807L;
        this.f57206q1 = -9223372036854775807L;
        this.M0 = dVar.f57226l ? new io.bidmachine.media3.exoplayer.video.a() : null;
        this.O0 = new PriorityQueue<>();
        this.N0 = dVar.f57227m != -9223372036854775807L ? -dVar.f57227m : -9223372036854775807L;
    }

    private static int J2(Context context, io.bidmachine.media3.exoplayer.mediacodec.l lVar, io.bidmachine.media3.common.a aVar) throws MediaCodecUtil.DecoderQueryException {
        boolean z10;
        boolean z11;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14 = 0;
        if (!u.t(aVar.f55174o)) {
            return i2.k(0);
        }
        if (aVar.f55178s != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        List<io.bidmachine.media3.exoplayer.mediacodec.j> Y1 = Y1(context, lVar, aVar, z10, false);
        if (z10 && Y1.isEmpty()) {
            Y1 = Y1(context, lVar, aVar, false, false);
        }
        if (Y1.isEmpty()) {
            return i2.k(1);
        }
        if (!MediaCodecRenderer.E1(aVar)) {
            return i2.k(2);
        }
        io.bidmachine.media3.exoplayer.mediacodec.j jVar = Y1.get(0);
        boolean o10 = jVar.o(aVar);
        if (!o10) {
            for (int i15 = 1; i15 < Y1.size(); i15++) {
                io.bidmachine.media3.exoplayer.mediacodec.j jVar2 = Y1.get(i15);
                if (jVar2.o(aVar)) {
                    z11 = false;
                    o10 = true;
                    jVar = jVar2;
                    break;
                }
            }
        }
        z11 = true;
        if (o10) {
            i10 = 4;
        } else {
            i10 = 3;
        }
        if (jVar.r(aVar)) {
            i11 = 16;
        } else {
            i11 = 8;
        }
        if (jVar.f56582h) {
            i12 = 64;
        } else {
            i12 = 0;
        }
        if (z11) {
            i13 = 128;
        } else {
            i13 = 0;
        }
        if (m0.f3614a >= 26 && "video/dolby-vision".equals(aVar.f55174o) && !c.a(context)) {
            i13 = 256;
        }
        if (o10) {
            List<io.bidmachine.media3.exoplayer.mediacodec.j> Y12 = Y1(context, lVar, aVar, z10, true);
            if (!Y12.isEmpty()) {
                io.bidmachine.media3.exoplayer.mediacodec.j jVar3 = MediaCodecUtil.n(Y12, aVar).get(0);
                if (jVar3.o(aVar) && jVar3.r(aVar)) {
                    i14 = 32;
                }
            }
        }
        return i2.i(i10, i11, i14, i12, i13);
    }

    private void K2() {
        io.bidmachine.media3.exoplayer.mediacodec.h w02 = w0();
        if (w02 != null && m0.f3614a >= 35) {
            Bundle bundle = new Bundle();
            bundle.putInt("importance", Math.max(0, -this.f57200k1));
            w02.a(bundle);
        }
    }

    private void M2(long j10) {
        int i10 = 0;
        while (true) {
            Long peek = this.O0.peek();
            if (peek == null || peek.longValue() >= j10) {
                break;
            }
            i10++;
            this.O0.poll();
        }
        L2(i10, 0);
    }

    private void N2(r.b bVar) {
        a0 L = L();
        if (L.q()) {
            this.f57206q1 = -9223372036854775807L;
        } else {
            this.f57206q1 = L.h(((r.b) cn.a.e(bVar)).f56990a, new a0.b()).j();
        }
    }

    private static boolean R1() {
        return "NVIDIA".equals(Build.MANUFACTURER);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:543:0x073c, code lost:
        if (r11.equals("A10-70L") == false) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean T1() {
        /*
            Method dump skipped, instructions count: 3180
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.video.h.T1():boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0087, code lost:
        if (r9.equals(com.unity3d.services.core.device.MimeTypes.VIDEO_AV1) == false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int V1(io.bidmachine.media3.exoplayer.mediacodec.j r11, io.bidmachine.media3.common.a r12) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.video.h.V1(io.bidmachine.media3.exoplayer.mediacodec.j, io.bidmachine.media3.common.a):int");
    }

    @Nullable
    private static Point W1(io.bidmachine.media3.exoplayer.mediacodec.j jVar, io.bidmachine.media3.common.a aVar) {
        boolean z10;
        int i10;
        int[] iArr;
        int i11;
        int i12 = aVar.f55182w;
        int i13 = aVar.f55181v;
        if (i12 > i13) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            i10 = i12;
        } else {
            i10 = i13;
        }
        if (z10) {
            i12 = i13;
        }
        float f10 = i12 / i10;
        for (int i14 : f57187u1) {
            int i15 = (int) (i14 * f10);
            if (i14 <= i10 || i15 <= i12) {
                break;
            }
            if (z10) {
                i11 = i15;
            } else {
                i11 = i14;
            }
            if (!z10) {
                i14 = i15;
            }
            Point c10 = jVar.c(i11, i14);
            float f11 = aVar.f55183x;
            if (c10 != null && jVar.u(c10.x, c10.y, f11)) {
                return c10;
            }
        }
        return null;
    }

    private static List<io.bidmachine.media3.exoplayer.mediacodec.j> Y1(Context context, io.bidmachine.media3.exoplayer.mediacodec.l lVar, io.bidmachine.media3.common.a aVar, boolean z10, boolean z11) throws MediaCodecUtil.DecoderQueryException {
        String str = aVar.f55174o;
        if (str == null) {
            return ImmutableList.A();
        }
        if (m0.f3614a >= 26 && "video/dolby-vision".equals(str) && !c.a(context)) {
            List<io.bidmachine.media3.exoplayer.mediacodec.j> g10 = MediaCodecUtil.g(lVar, aVar, z10, z11);
            if (!g10.isEmpty()) {
                return g10;
            }
        }
        return MediaCodecUtil.m(lVar, aVar, z10, z11);
    }

    protected static int Z1(io.bidmachine.media3.exoplayer.mediacodec.j jVar, io.bidmachine.media3.common.a aVar) {
        if (aVar.f55175p != -1) {
            int size = aVar.f55177r.size();
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                i10 += aVar.f55177r.get(i11).length;
            }
            return aVar.f55175p + i10;
        }
        return V1(jVar, aVar);
    }

    private static int a2(int i10, int i11) {
        return (i10 * 3) / (i11 * 2);
    }

    @Nullable
    private Surface c2(io.bidmachine.media3.exoplayer.mediacodec.j jVar) {
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            return videoSink.a();
        }
        Surface surface = this.V0;
        if (surface != null) {
            return surface;
        }
        if (G2(jVar)) {
            return null;
        }
        cn.a.g(H2(jVar));
        PlaceholderSurface placeholderSurface = this.W0;
        if (placeholderSurface != null && placeholderSurface.f57142a != jVar.f56581g) {
            u2();
        }
        if (this.W0 == null) {
            this.W0 = PlaceholderSurface.c(this.F0, jVar.f56581g);
        }
        return this.W0;
    }

    private boolean d2(io.bidmachine.media3.exoplayer.mediacodec.j jVar) {
        Surface surface;
        if (this.S0 == null && (((surface = this.V0) == null || !surface.isValid()) && !G2(jVar) && !H2(jVar))) {
            return false;
        }
        return true;
    }

    private boolean e2(DecoderInputBuffer decoderInputBuffer) {
        if (decoderInputBuffer.f55347f < H()) {
            return true;
        }
        return false;
    }

    private boolean f2(DecoderInputBuffer decoderInputBuffer) {
        if (hasReadStreamToEnd() || decoderInputBuffer.i() || this.f57206q1 == -9223372036854775807L) {
            return true;
        }
        if (this.f57206q1 - (decoderInputBuffer.f55347f - G0()) <= 100000) {
            return true;
        }
        return false;
    }

    private void h2() {
        if (this.f57192c1 > 0) {
            long elapsedRealtime = D().elapsedRealtime();
            this.H0.n(this.f57192c1, elapsedRealtime - this.f57191b1);
            this.f57192c1 = 0;
            this.f57191b1 = elapsedRealtime;
        }
    }

    private void i2() {
        if (this.K0.i() && this.V0 != null) {
            q2();
        }
    }

    private void j2() {
        int i10 = this.f57196g1;
        if (i10 != 0) {
            this.H0.B(this.f57195f1, i10);
            this.f57195f1 = 0L;
            this.f57196g1 = 0;
        }
    }

    private void k2(i0 i0Var) {
        if (!i0Var.equals(i0.f71955e) && !i0Var.equals(this.f57199j1)) {
            this.f57199j1 = i0Var;
            this.H0.D(i0Var);
        }
    }

    private void l2() {
        Surface surface = this.V0;
        if (surface != null && this.Y0) {
            this.H0.A(surface);
        }
    }

    private void m2() {
        i0 i0Var = this.f57199j1;
        if (i0Var != null) {
            this.H0.D(i0Var);
        }
    }

    private void n2(MediaFormat mediaFormat) {
        if (this.S0 != null && !m0.H0(this.F0)) {
            mediaFormat.setInteger("allow-frame-drop", 0);
        }
    }

    private void o2() {
        int i10;
        io.bidmachine.media3.exoplayer.mediacodec.h w02;
        if (!this.f57201l1 || (i10 = m0.f3614a) < 23 || (w02 = w0()) == null) {
            return;
        }
        this.f57203n1 = new f(w02);
        if (i10 >= 33) {
            Bundle bundle = new Bundle();
            bundle.putInt("tunnel-peek", 1);
            w02.a(bundle);
        }
    }

    private void p2(long j10, long j11, io.bidmachine.media3.common.a aVar) {
        yn.f fVar = this.f57204o1;
        if (fVar != null) {
            fVar.c(j10, j11, aVar, B0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q2() {
        this.H0.A(this.V0);
        this.Y0 = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s2() {
        u1();
    }

    private void t2(io.bidmachine.media3.exoplayer.mediacodec.h hVar, int i10, long j10, io.bidmachine.media3.common.a aVar) {
        long g10 = this.L0.g();
        long f10 = this.L0.f();
        if (F2() && g10 == this.f57197h1) {
            I2(hVar, i10, j10);
        } else {
            p2(j10, g10, aVar);
            w2(hVar, i10, j10, g10);
        }
        O2(f10);
        this.f57197h1 = g10;
    }

    private void u2() {
        PlaceholderSurface placeholderSurface = this.W0;
        if (placeholderSurface != null) {
            placeholderSurface.release();
            this.W0 = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v2(io.bidmachine.media3.exoplayer.mediacodec.h hVar, int i10, long j10, long j11) {
        w2(hVar, i10, j10, j11);
    }

    @RequiresApi(29)
    private static void x2(io.bidmachine.media3.exoplayer.mediacodec.h hVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        hVar.a(bundle);
    }

    private void y2(@Nullable Object obj) throws ExoPlaybackException {
        Surface surface;
        if (obj instanceof Surface) {
            surface = (Surface) obj;
        } else {
            surface = null;
        }
        if (this.V0 != surface) {
            this.V0 = surface;
            if (this.S0 == null) {
                this.K0.q(surface);
            }
            this.Y0 = false;
            int state = getState();
            io.bidmachine.media3.exoplayer.mediacodec.h w02 = w0();
            if (w02 != null && this.S0 == null) {
                io.bidmachine.media3.exoplayer.mediacodec.j jVar = (io.bidmachine.media3.exoplayer.mediacodec.j) cn.a.e(y0());
                boolean d22 = d2(jVar);
                if (m0.f3614a >= 23 && d22 && !this.Q0) {
                    z2(w02, c2(jVar));
                } else {
                    m1();
                    U0();
                }
            }
            if (surface != null) {
                m2();
            } else {
                this.f57199j1 = null;
                VideoSink videoSink = this.S0;
                if (videoSink != null) {
                    videoSink.v();
                }
            }
            if (state == 2) {
                VideoSink videoSink2 = this.S0;
                if (videoSink2 != null) {
                    videoSink2.y(true);
                } else {
                    this.K0.e(true);
                }
            }
            o2();
        } else if (surface != null) {
            m2();
            l2();
        }
    }

    private void z2(io.bidmachine.media3.exoplayer.mediacodec.h hVar, @Nullable Surface surface) {
        int i10 = m0.f3614a;
        if (i10 >= 23 && surface != null) {
            A2(hVar, surface);
        } else if (i10 >= 35) {
            Q1(hVar);
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected float A0(float f10, io.bidmachine.media3.common.a aVar, io.bidmachine.media3.common.a[] aVarArr) {
        float f11 = -1.0f;
        for (io.bidmachine.media3.common.a aVar2 : aVarArr) {
            float f12 = aVar2.f55183x;
            if (f12 != -1.0f) {
                f11 = Math.max(f11, f12);
            }
        }
        if (f11 == -1.0f) {
            return -1.0f;
        }
        return f11 * f10;
    }

    @RequiresApi(23)
    protected void A2(io.bidmachine.media3.exoplayer.mediacodec.h hVar, Surface surface) {
        hVar.j(surface);
    }

    public void B2(List<Object> list) {
        this.U0 = list;
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.o(list);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected List<io.bidmachine.media3.exoplayer.mediacodec.j> C0(io.bidmachine.media3.exoplayer.mediacodec.l lVar, io.bidmachine.media3.common.a aVar, boolean z10) throws MediaCodecUtil.DecoderQueryException {
        return MediaCodecUtil.n(Y1(this.F0, lVar, aVar, z10, this.f57201l1), aVar);
    }

    protected boolean C2(long j10, long j11, boolean z10) {
        if (j10 < -500000 && !z10) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected int D1(io.bidmachine.media3.exoplayer.mediacodec.l lVar, io.bidmachine.media3.common.a aVar) throws MediaCodecUtil.DecoderQueryException {
        return J2(this.F0, lVar, aVar);
    }

    protected boolean D2(long j10, long j11, boolean z10) {
        if (j10 < -30000 && !z10) {
            return true;
        }
        return false;
    }

    protected boolean E2(long j10, long j11) {
        if (j10 < -30000 && j11 > 100000) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected h.a F0(io.bidmachine.media3.exoplayer.mediacodec.j jVar, io.bidmachine.media3.common.a aVar, @Nullable MediaCrypto mediaCrypto, float f10) {
        int i10;
        String str = jVar.f56577c;
        e X1 = X1(jVar, aVar, J());
        this.P0 = X1;
        boolean z10 = this.J0;
        if (this.f57201l1) {
            i10 = this.f57202m1;
        } else {
            i10 = 0;
        }
        MediaFormat b22 = b2(aVar, str, X1, f10, z10, i10);
        Surface c22 = c2(jVar);
        n2(b22);
        return h.a.b(jVar, b22, aVar, c22, mediaCrypto);
    }

    protected boolean F2() {
        return true;
    }

    protected boolean G2(io.bidmachine.media3.exoplayer.mediacodec.j jVar) {
        if (m0.f3614a >= 35 && jVar.f56585k) {
            return true;
        }
        return false;
    }

    protected boolean H2(io.bidmachine.media3.exoplayer.mediacodec.j jVar) {
        if (m0.f3614a >= 23 && !this.f57201l1 && !P1(jVar.f56575a) && (!jVar.f56581g || PlaceholderSurface.b(this.F0))) {
            return true;
        }
        return false;
    }

    protected void I2(io.bidmachine.media3.exoplayer.mediacodec.h hVar, int i10, long j10) {
        cn.i0.a("skipVideoBuffer");
        hVar.g(i10, false);
        cn.i0.b();
        this.f56499z0.f52426f++;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    @TargetApi(29)
    protected void K0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        if (!this.R0) {
            return;
        }
        ByteBuffer byteBuffer = (ByteBuffer) cn.a.e(decoderInputBuffer.f55348g);
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
                    x2((io.bidmachine.media3.exoplayer.mediacodec.h) cn.a.e(w0()), bArr);
                }
            }
        }
    }

    protected void L2(int i10, int i11) {
        gn.b bVar = this.f56499z0;
        bVar.f52428h += i10;
        int i12 = i10 + i11;
        bVar.f52427g += i12;
        this.f57192c1 += i12;
        int i13 = this.f57193d1 + i12;
        this.f57193d1 = i13;
        bVar.f52429i = Math.max(i13, bVar.f52429i);
        int i14 = this.I0;
        if (i14 > 0 && this.f57192c1 >= i14) {
            h2();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h
    public void N() {
        this.f57199j1 = null;
        this.f57206q1 = -9223372036854775807L;
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.u();
        } else {
            this.K0.g();
        }
        o2();
        this.Y0 = false;
        this.f57203n1 = null;
        try {
            super.N();
        } finally {
            this.H0.m(this.f56499z0);
            this.H0.D(i0.f71955e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h
    public void O(boolean z10, boolean z11) throws ExoPlaybackException {
        boolean z12;
        super.O(z10, z11);
        boolean z13 = E().f52458b;
        if (z13 && this.f57202m1 == 0) {
            z12 = false;
        } else {
            z12 = true;
        }
        cn.a.g(z12);
        if (this.f57201l1 != z13) {
            this.f57201l1 = z13;
            m1();
        }
        this.H0.o(this.f56499z0);
        if (!this.T0) {
            if (this.U0 != null && this.S0 == null) {
                i h10 = new i.b(this.F0, this.K0).i(D()).h();
                h10.P(1);
                this.S0 = h10.C(0);
            }
            this.T0 = true;
        }
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.w(new a(), com.google.common.util.concurrent.f.a());
            yn.f fVar = this.f57204o1;
            if (fVar != null) {
                this.S0.j(fVar);
            }
            if (this.V0 != null && !this.X0.equals(d0.f3574c)) {
                this.S0.x(this.V0, this.X0);
            }
            this.S0.k(this.f57190a1);
            this.S0.r(I0());
            List<Object> list = this.U0;
            if (list != null) {
                this.S0.o(list);
            }
            this.S0.g(z11);
            h2.a J0 = J0();
            if (J0 != null) {
                this.S0.l(J0);
                return;
            }
            return;
        }
        this.K0.o(D());
        this.K0.h(z11);
    }

    protected void O1(VideoSink videoSink, int i10, io.bidmachine.media3.common.a aVar) {
        List<Object> list = this.U0;
        if (list == null) {
            list = ImmutableList.A();
        }
        videoSink.f(i10, aVar, list);
    }

    protected void O2(long j10) {
        this.f56499z0.a(j10);
        this.f57195f1 += j10;
        this.f57196g1++;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.h
    public void P() {
        super.P();
    }

    protected boolean P1(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (h.class) {
            try {
                if (!f57188v1) {
                    f57189w1 = T1();
                    f57188v1 = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f57189w1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h
    public void Q(long j10, boolean z10) throws ExoPlaybackException {
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            if (!z10) {
                videoSink.b(true);
            }
            this.S0.m(H0(), U1());
            this.f57207r1 = true;
        }
        super.Q(j10, z10);
        if (this.S0 == null) {
            this.K0.m();
        }
        if (z10) {
            VideoSink videoSink2 = this.S0;
            if (videoSink2 != null) {
                videoSink2.y(false);
            } else {
                this.K0.e(false);
            }
        }
        o2();
        this.f57193d1 = 0;
    }

    @RequiresApi(35)
    protected void Q1(io.bidmachine.media3.exoplayer.mediacodec.h hVar) {
        hVar.n();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.h
    public void R() {
        super.R();
        VideoSink videoSink = this.S0;
        if (videoSink != null && this.G0) {
            videoSink.release();
        }
    }

    protected void S1(io.bidmachine.media3.exoplayer.mediacodec.h hVar, int i10, long j10) {
        cn.i0.a("dropVideoBuffer");
        hVar.g(i10, false);
        cn.i0.b();
        L2(0, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h
    public void T() {
        try {
            super.T();
        } finally {
            this.T0 = false;
            this.f57205p1 = -9223372036854775807L;
            u2();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h
    public void U() {
        super.U();
        this.f57192c1 = 0;
        this.f57191b1 = D().elapsedRealtime();
        this.f57195f1 = 0L;
        this.f57196g1 = 0;
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.s();
        } else {
            this.K0.k();
        }
    }

    protected long U1() {
        return -this.f57205p1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h
    public void V() {
        h2();
        j2();
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.e();
        } else {
            this.K0.l();
        }
        super.V();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h
    public void W(io.bidmachine.media3.common.a[] aVarArr, long j10, long j11, r.b bVar) throws ExoPlaybackException {
        super.W(aVarArr, j10, j11, bVar);
        if (this.f57205p1 == -9223372036854775807L) {
            this.f57205p1 = j10;
        }
        N2(bVar);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    @CallSuper
    protected boolean W0(io.bidmachine.media3.common.a aVar) throws ExoPlaybackException {
        VideoSink videoSink = this.S0;
        if (videoSink != null && !videoSink.isInitialized()) {
            try {
                return this.S0.i(aVar);
            } catch (VideoSink.VideoSinkException e10) {
                throw B(e10, aVar, 7000);
            }
        }
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void X0(Exception exc) {
        cn.r.d("MediaCodecVideoRenderer", "Video codec error", exc);
        this.H0.C(exc);
    }

    protected e X1(io.bidmachine.media3.exoplayer.mediacodec.j jVar, io.bidmachine.media3.common.a aVar, io.bidmachine.media3.common.a[] aVarArr) {
        boolean z10;
        int V1;
        int i10 = aVar.f55181v;
        int i11 = aVar.f55182w;
        int Z1 = Z1(jVar, aVar);
        if (aVarArr.length == 1) {
            if (Z1 != -1 && (V1 = V1(jVar, aVar)) != -1) {
                Z1 = Math.min((int) (Z1 * 1.5f), V1);
            }
            return new e(i10, i11, Z1);
        }
        int length = aVarArr.length;
        boolean z11 = false;
        for (int i12 = 0; i12 < length; i12++) {
            io.bidmachine.media3.common.a aVar2 = aVarArr[i12];
            if (aVar.C != null && aVar2.C == null) {
                aVar2 = aVar2.b().T(aVar.C).N();
            }
            if (jVar.e(aVar, aVar2).f52437d != 0) {
                int i13 = aVar2.f55181v;
                if (i13 != -1 && aVar2.f55182w != -1) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                z11 |= z10;
                i10 = Math.max(i10, i13);
                i11 = Math.max(i11, aVar2.f55182w);
                Z1 = Math.max(Z1, Z1(jVar, aVar2));
            }
        }
        if (z11) {
            cn.r.h("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + i10 + TextureRenderKeys.KEY_IS_X + i11);
            Point W1 = W1(jVar, aVar);
            if (W1 != null) {
                i10 = Math.max(i10, W1.x);
                i11 = Math.max(i11, W1.y);
                Z1 = Math.max(Z1, V1(jVar, aVar.b().B0(i10).d0(i11).N()));
                cn.r.h("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + i10 + TextureRenderKeys.KEY_IS_X + i11);
            }
        }
        return new e(i10, i11, Z1);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void Y0(String str, h.a aVar, long j10, long j11) {
        this.H0.k(str, j10, j11);
        this.Q0 = P1(str);
        this.R0 = ((io.bidmachine.media3.exoplayer.mediacodec.j) cn.a.e(y0())).p();
        o2();
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void Z0(String str) {
        this.H0.l(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    @Nullable
    public gn.c a1(c0 c0Var) throws ExoPlaybackException {
        gn.c a12 = super.a1(c0Var);
        this.H0.p((io.bidmachine.media3.common.a) cn.a.e(c0Var.f52440b), a12);
        return a12;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void b1(io.bidmachine.media3.common.a aVar, @Nullable MediaFormat mediaFormat) {
        boolean z10;
        int integer;
        int integer2;
        int i10;
        int i11;
        io.bidmachine.media3.exoplayer.mediacodec.h w02 = w0();
        if (w02 != null) {
            w02.setVideoScalingMode(this.Z0);
        }
        if (this.f57201l1) {
            i11 = aVar.f55181v;
            i10 = aVar.f55182w;
        } else {
            cn.a.e(mediaFormat);
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
            int i12 = integer;
            i10 = integer2;
            i11 = i12;
        }
        float f10 = aVar.f55185z;
        int i13 = aVar.f55184y;
        if (i13 == 90 || i13 == 270) {
            f10 = 1.0f / f10;
            int i14 = i10;
            i10 = i11;
            i11 = i14;
        }
        this.f57198i1 = new i0(i11, i10, f10);
        VideoSink videoSink = this.S0;
        if (videoSink != null && this.f57207r1) {
            O1(videoSink, 1, aVar.b().B0(i11).d0(i10).q0(f10).N());
        } else {
            this.K0.p(aVar.f55183x);
        }
        this.f57207r1 = false;
    }

    @SuppressLint({"InlinedApi"})
    protected MediaFormat b2(io.bidmachine.media3.common.a aVar, String str, e eVar, float f10, boolean z10, int i10) {
        Pair<Integer, Integer> i11;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", aVar.f55181v);
        mediaFormat.setInteger("height", aVar.f55182w);
        cn.u.e(mediaFormat, aVar.f55177r);
        cn.u.c(mediaFormat, com.ss.ttm.player.MediaFormat.KEY_FRAME_RATE, aVar.f55183x);
        cn.u.d(mediaFormat, "rotation-degrees", aVar.f55184y);
        cn.u.b(mediaFormat, aVar.C);
        if ("video/dolby-vision".equals(aVar.f55174o) && (i11 = MediaCodecUtil.i(aVar)) != null) {
            cn.u.d(mediaFormat, "profile", ((Integer) i11.first).intValue());
        }
        mediaFormat.setInteger("max-width", eVar.f57228a);
        mediaFormat.setInteger("max-height", eVar.f57229b);
        cn.u.d(mediaFormat, "max-input-size", eVar.f57230c);
        int i12 = m0.f3614a;
        if (i12 >= 23) {
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
            mediaFormat.setFeatureEnabled("tunneled-playback", true);
            mediaFormat.setInteger("audio-session-id", i10);
        }
        if (i12 >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.f57200k1));
        }
        return mediaFormat;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    @CallSuper
    public void d1(long j10) {
        super.d1(j10);
        if (!this.f57201l1) {
            this.f57194e1--;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected gn.c e0(io.bidmachine.media3.exoplayer.mediacodec.j jVar, io.bidmachine.media3.common.a aVar, io.bidmachine.media3.common.a aVar2) {
        int i10;
        gn.c e10 = jVar.e(aVar, aVar2);
        int i11 = e10.f52438e;
        e eVar = (e) cn.a.e(this.P0);
        if (aVar2.f55181v > eVar.f57228a || aVar2.f55182w > eVar.f57229b) {
            i11 |= 256;
        }
        if (Z1(jVar, aVar2) > eVar.f57230c) {
            i11 |= 64;
        }
        int i12 = i11;
        String str = jVar.f56575a;
        if (i12 != 0) {
            i10 = 0;
        } else {
            i10 = e10.f52437d;
        }
        return new gn.c(str, aVar, aVar2, i10, i12);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void e1() {
        super.e1();
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.d();
            this.S0.m(H0(), U1());
        } else {
            this.K0.j();
        }
        this.f57207r1 = true;
        o2();
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    @CallSuper
    protected void f1(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        ByteBuffer byteBuffer;
        if (this.M0 != null && ((io.bidmachine.media3.exoplayer.mediacodec.j) cn.a.e(y0())).f56576b.equals(MimeTypes.VIDEO_AV1) && (byteBuffer = decoderInputBuffer.f55345d) != null) {
            this.M0.b(byteBuffer);
        }
        this.f57209t1 = 0;
        boolean z10 = this.f57201l1;
        if (!z10) {
            this.f57194e1++;
        }
        if (m0.f3614a < 23 && z10) {
            r2(decoderInputBuffer.f55347f);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void g1(h2.a aVar) {
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.l(aVar);
        }
    }

    protected boolean g2(long j10, boolean z10) throws ExoPlaybackException {
        int a02 = a0(j10);
        if (a02 == 0) {
            return false;
        }
        if (z10) {
            gn.b bVar = this.f56499z0;
            int i10 = bVar.f52424d + a02;
            bVar.f52424d = i10;
            bVar.f52426f += this.f57194e1;
            bVar.f52424d = i10 + this.O0.size();
        } else {
            this.f56499z0.f52430j++;
            L2(a02 + this.O0.size(), this.f57194e1);
        }
        t0();
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.b(false);
        }
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.h2, io.bidmachine.media3.exoplayer.i2
    public String getName() {
        return "MediaCodecVideoRenderer";
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public void h() {
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.h();
        } else {
            this.K0.a();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h, io.bidmachine.media3.exoplayer.f2.b
    public void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException {
        if (i10 != 1) {
            if (i10 != 7) {
                if (i10 != 10) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 != 13) {
                                if (i10 != 14) {
                                    if (i10 != 16) {
                                        if (i10 != 17) {
                                            super.handleMessage(i10, obj);
                                            return;
                                        }
                                        Surface surface = this.V0;
                                        y2(null);
                                        ((h) cn.a.e(obj)).handleMessage(1, surface);
                                        return;
                                    }
                                    this.f57200k1 = ((Integer) cn.a.e(obj)).intValue();
                                    K2();
                                    return;
                                }
                                d0 d0Var = (d0) cn.a.e(obj);
                                if (d0Var.b() != 0 && d0Var.a() != 0) {
                                    this.X0 = d0Var;
                                    VideoSink videoSink = this.S0;
                                    if (videoSink != null) {
                                        videoSink.x((Surface) cn.a.i(this.V0), d0Var);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            B2((List) cn.a.e(obj));
                            return;
                        }
                        int intValue = ((Integer) cn.a.e(obj)).intValue();
                        this.f57190a1 = intValue;
                        VideoSink videoSink2 = this.S0;
                        if (videoSink2 != null) {
                            videoSink2.k(intValue);
                            return;
                        } else {
                            this.K0.n(intValue);
                            return;
                        }
                    }
                    this.Z0 = ((Integer) cn.a.e(obj)).intValue();
                    io.bidmachine.media3.exoplayer.mediacodec.h w02 = w0();
                    if (w02 != null) {
                        w02.setVideoScalingMode(this.Z0);
                        return;
                    }
                    return;
                }
                int intValue2 = ((Integer) cn.a.e(obj)).intValue();
                if (this.f57202m1 != intValue2) {
                    this.f57202m1 = intValue2;
                    if (this.f57201l1) {
                        m1();
                        return;
                    }
                    return;
                }
                return;
            }
            yn.f fVar = (yn.f) cn.a.e(obj);
            this.f57204o1 = fVar;
            VideoSink videoSink3 = this.S0;
            if (videoSink3 != null) {
                videoSink3.j(fVar);
                return;
            }
            return;
        }
        y2(obj);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean i1(long j10, long j11, @Nullable io.bidmachine.media3.exoplayer.mediacodec.h hVar, @Nullable ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, io.bidmachine.media3.common.a aVar) throws ExoPlaybackException {
        cn.a.e(hVar);
        long G0 = j12 - G0();
        M2(j12);
        if (this.S0 != null) {
            if (z10 && !z11) {
                I2(hVar, i10, G0);
                return true;
            }
            return this.S0.t(U1() + j12, z11, new b(hVar, i10, G0));
        }
        int c10 = this.K0.c(j12, j10, j11, H0(), z10, z11, this.L0);
        if (c10 != 0) {
            if (c10 != 1) {
                if (c10 != 2) {
                    if (c10 != 3) {
                        if (c10 != 4 && c10 != 5) {
                            throw new IllegalStateException(String.valueOf(c10));
                        }
                        return false;
                    }
                    I2(hVar, i10, G0);
                    O2(this.L0.f());
                    return true;
                }
                S1(hVar, i10, G0);
                O2(this.L0.f());
                return true;
            }
            t2((io.bidmachine.media3.exoplayer.mediacodec.h) cn.a.i(hVar), i10, G0, aVar);
            return true;
        }
        long nanoTime = D().nanoTime();
        p2(G0, nanoTime, aVar);
        v2(hVar, i10, G0, nanoTime);
        O2(this.L0.f());
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h2
    public boolean isEnded() {
        VideoSink videoSink;
        if (super.isEnded() && ((videoSink = this.S0) == null || videoSink.isEnded())) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h2
    public boolean isReady() {
        boolean isReady = super.isReady();
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            return videoSink.p(isReady);
        }
        if (isReady && (w0() == null || this.f57201l1)) {
            return true;
        }
        return this.K0.d(isReady);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected MediaCodecDecoderException k0(Throwable th2, @Nullable io.bidmachine.media3.exoplayer.mediacodec.j jVar) {
        return new MediaCodecVideoDecoderException(th2, jVar, this.V0);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h2
    public void l(float f10, float f11) throws ExoPlaybackException {
        super.l(f10, f11);
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.r(f10);
        } else {
            this.K0.r(f10);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void n1() {
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    @CallSuper
    public void o1() {
        super.o1();
        this.O0.clear();
        this.f57208s1 = false;
        this.f57194e1 = 0;
        this.f57209t1 = 0;
        io.bidmachine.media3.exoplayer.video.a aVar = this.M0;
        if (aVar != null) {
            aVar.c();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.video.n.b
    public boolean p(long j10, long j11) {
        return E2(j10, j11);
    }

    protected void r2(long j10) throws ExoPlaybackException {
        H1(j10);
        k2(this.f57198i1);
        this.f56499z0.f52425e++;
        i2();
        d1(j10);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h2
    @CallSuper
    public void render(long j10, long j11) throws ExoPlaybackException {
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            try {
                videoSink.render(j10, j11);
            } catch (VideoSink.VideoSinkException e10) {
                throw B(e10, e10.f57167a, AdError.SHOW_CALLED_BEFORE_LOAD_ERROR_CODE);
            }
        }
        super.render(j10, j11);
    }

    @Override // io.bidmachine.media3.exoplayer.video.n.b
    public boolean s(long j10, long j11, boolean z10) {
        return D2(j10, j11, z10);
    }

    protected void w2(io.bidmachine.media3.exoplayer.mediacodec.h hVar, int i10, long j10, long j11) {
        cn.i0.a("releaseOutputBuffer");
        hVar.e(i10, j11);
        cn.i0.b();
        this.f56499z0.f52425e++;
        this.f57193d1 = 0;
        if (this.S0 == null) {
            k2(this.f57198i1);
            i2();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected int x0(DecoderInputBuffer decoderInputBuffer) {
        if (m0.f3614a >= 34 && this.f57201l1 && e2(decoderInputBuffer)) {
            return 32;
        }
        return 0;
    }

    @Override // io.bidmachine.media3.exoplayer.video.n.b
    public boolean y(long j10, long j11, long j12, boolean z10, boolean z11) throws ExoPlaybackException {
        boolean z12;
        if (this.N0 != -9223372036854775807L) {
            if (j11 > H() + 200000 && j10 < this.N0) {
                z12 = true;
            } else {
                z12 = false;
            }
            this.f57208s1 = z12;
        }
        if (!C2(j10, j12, z10) || !g2(j11, z11)) {
            return false;
        }
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean y1(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        boolean z10;
        boolean z11;
        if (f2(decoderInputBuffer) || decoderInputBuffer.o()) {
            return false;
        }
        boolean e22 = e2(decoderInputBuffer);
        if ((!e22 && !this.f57208s1) || decoderInputBuffer.e()) {
            return false;
        }
        if (decoderInputBuffer.j()) {
            decoderInputBuffer.b();
            if (e22) {
                this.f56499z0.f52424d++;
            } else if (this.f57208s1) {
                this.O0.add(Long.valueOf(decoderInputBuffer.f55347f));
                this.f57209t1++;
            }
            return true;
        }
        if (this.M0 != null && ((io.bidmachine.media3.exoplayer.mediacodec.j) cn.a.e(y0())).f56576b.equals(MimeTypes.VIDEO_AV1) && (byteBuffer = decoderInputBuffer.f55345d) != null) {
            if (!e22 && this.f57209t1 > 0) {
                z10 = false;
            } else {
                z10 = true;
            }
            ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            asReadOnlyBuffer.flip();
            int d10 = this.M0.d(asReadOnlyBuffer, z10);
            if (((e) cn.a.e(this.P0)).f57230c + d10 < asReadOnlyBuffer.capacity()) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (d10 != asReadOnlyBuffer.limit() && z11) {
                ((ByteBuffer) cn.a.e(decoderInputBuffer.f55345d)).position(d10);
                if (e22) {
                    this.f56499z0.f52424d++;
                } else if (this.f57208s1) {
                    this.O0.add(Long.valueOf(decoderInputBuffer.f55347f));
                    this.f57209t1++;
                }
                return true;
            }
        }
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean z0() {
        if (this.f57201l1 && m0.f3614a < 23) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean z1(io.bidmachine.media3.exoplayer.mediacodec.j jVar) {
        return d2(jVar);
    }

    /* compiled from: MediaCodecVideoRenderer.java */
    /* loaded from: classes8.dex */
    class a implements VideoSink.a {
        a() {
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink.a
        public void b(VideoSink videoSink) {
            if (h.this.V0 != null) {
                h.this.L2(0, 1);
            }
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink.a
        public void c(VideoSink videoSink) {
            if (h.this.V0 != null) {
                h.this.q2();
            }
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink.a
        public void a(VideoSink videoSink, i0 i0Var) {
        }
    }
}
