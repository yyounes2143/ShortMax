package io.bidmachine.media3.exoplayer.mediacodec;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.CallSuper;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import ao.h0;
import cn.g0;
import cn.i0;
import cn.m0;
import com.huawei.hms.support.api.entity.auth.AuthCode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import gn.c0;
import hn.b2;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.ExoPlaybackException;
import io.bidmachine.media3.exoplayer.drm.DrmSession;
import io.bidmachine.media3.exoplayer.h2;
import io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil;
import io.bidmachine.media3.exoplayer.mediacodec.h;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
/* loaded from: classes8.dex */
public abstract class MediaCodecRenderer extends io.bidmachine.media3.exoplayer.h {
    private static final byte[] E0 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private final ArrayDeque<d> A;
    private d A0;
    private final in.q B;
    private long B0;
    @Nullable
    private io.bidmachine.media3.common.a C;
    private boolean C0;
    private io.bidmachine.media3.common.a D;
    private boolean D0;
    @Nullable
    private DrmSession E;
    @Nullable
    private DrmSession F;
    private h2.a G;
    @Nullable
    private MediaCrypto H;
    private long I;
    private float J;
    private float K;
    @Nullable
    private h L;
    @Nullable
    private io.bidmachine.media3.common.a M;
    @Nullable
    private MediaFormat N;
    private boolean O;
    private float P;
    @Nullable
    private ArrayDeque<j> Q;
    @Nullable
    private DecoderInitializationException R;
    @Nullable
    private j S;
    private int T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private boolean Z;

    /* renamed from: a0  reason: collision with root package name */
    private long f56465a0;

    /* renamed from: b0  reason: collision with root package name */
    private boolean f56466b0;

    /* renamed from: c0  reason: collision with root package name */
    private long f56467c0;

    /* renamed from: d0  reason: collision with root package name */
    private int f56468d0;

    /* renamed from: e0  reason: collision with root package name */
    private int f56469e0;
    @Nullable

    /* renamed from: f0  reason: collision with root package name */
    private ByteBuffer f56470f0;

    /* renamed from: g0  reason: collision with root package name */
    private boolean f56471g0;

    /* renamed from: h0  reason: collision with root package name */
    private boolean f56472h0;

    /* renamed from: i0  reason: collision with root package name */
    private boolean f56473i0;

    /* renamed from: j0  reason: collision with root package name */
    private boolean f56474j0;

    /* renamed from: k0  reason: collision with root package name */
    private boolean f56475k0;

    /* renamed from: l0  reason: collision with root package name */
    private boolean f56476l0;

    /* renamed from: m0  reason: collision with root package name */
    private int f56477m0;

    /* renamed from: n0  reason: collision with root package name */
    private int f56478n0;

    /* renamed from: o0  reason: collision with root package name */
    private int f56479o0;

    /* renamed from: p0  reason: collision with root package name */
    private boolean f56480p0;

    /* renamed from: q0  reason: collision with root package name */
    private boolean f56481q0;

    /* renamed from: r  reason: collision with root package name */
    private final h.b f56482r;

    /* renamed from: r0  reason: collision with root package name */
    private boolean f56483r0;

    /* renamed from: s  reason: collision with root package name */
    private final l f56484s;

    /* renamed from: s0  reason: collision with root package name */
    private long f56485s0;

    /* renamed from: t  reason: collision with root package name */
    private final boolean f56486t;

    /* renamed from: t0  reason: collision with root package name */
    private long f56487t0;

    /* renamed from: u  reason: collision with root package name */
    private final float f56488u;

    /* renamed from: u0  reason: collision with root package name */
    private boolean f56489u0;

    /* renamed from: v  reason: collision with root package name */
    private final DecoderInputBuffer f56490v;

    /* renamed from: v0  reason: collision with root package name */
    private boolean f56491v0;

    /* renamed from: w  reason: collision with root package name */
    private final DecoderInputBuffer f56492w;

    /* renamed from: w0  reason: collision with root package name */
    private boolean f56493w0;

    /* renamed from: x  reason: collision with root package name */
    private final DecoderInputBuffer f56494x;

    /* renamed from: x0  reason: collision with root package name */
    private boolean f56495x0;

    /* renamed from: y  reason: collision with root package name */
    private final f f56496y;
    @Nullable

    /* renamed from: y0  reason: collision with root package name */
    private ExoPlaybackException f56497y0;

    /* renamed from: z  reason: collision with root package name */
    private final MediaCodec.BufferInfo f56498z;

    /* renamed from: z0  reason: collision with root package name */
    protected gn.b f56499z0;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(31)
    /* loaded from: classes8.dex */
    public static final class b {
        public static void a(h.a aVar, b2 b2Var) {
            LogSessionId logSessionId;
            boolean equals;
            String stringId;
            LogSessionId a10 = b2Var.a();
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            equals = a10.equals(logSessionId);
            if (!equals) {
                MediaFormat mediaFormat = aVar.f56569b;
                stringId = a10.getStringId();
                mediaFormat.setString("log-session-id", stringId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public final class c implements h.c {
        private c() {
        }

        @Override // io.bidmachine.media3.exoplayer.mediacodec.h.c
        public void a() {
            if (MediaCodecRenderer.this.G != null) {
                MediaCodecRenderer.this.G.b();
            }
        }

        @Override // io.bidmachine.media3.exoplayer.mediacodec.h.c
        public void b() {
            if (MediaCodecRenderer.this.G != null) {
                MediaCodecRenderer.this.G.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class d {

        /* renamed from: e  reason: collision with root package name */
        public static final d f56506e = new d(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L);

        /* renamed from: a  reason: collision with root package name */
        public final long f56507a;

        /* renamed from: b  reason: collision with root package name */
        public final long f56508b;

        /* renamed from: c  reason: collision with root package name */
        public final long f56509c;

        /* renamed from: d  reason: collision with root package name */
        public final g0<io.bidmachine.media3.common.a> f56510d = new g0<>();

        public d(long j10, long j11, long j12) {
            this.f56507a = j10;
            this.f56508b = j11;
            this.f56509c = j12;
        }
    }

    public MediaCodecRenderer(int i10, h.b bVar, l lVar, boolean z10, float f10) {
        super(i10);
        this.f56482r = bVar;
        this.f56484s = (l) cn.a.e(lVar);
        this.f56486t = z10;
        this.f56488u = f10;
        this.f56490v = DecoderInputBuffer.p();
        this.f56492w = new DecoderInputBuffer(0);
        this.f56494x = new DecoderInputBuffer(2);
        f fVar = new f();
        this.f56496y = fVar;
        this.f56498z = new MediaCodec.BufferInfo();
        this.J = 1.0f;
        this.K = 1.0f;
        this.I = -9223372036854775807L;
        this.A = new ArrayDeque<>();
        this.A0 = d.f56506e;
        fVar.m(0);
        fVar.f55345d.order(ByteOrder.nativeOrder());
        this.B = new in.q();
        this.P = -1.0f;
        this.T = 0;
        this.f56477m0 = 0;
        this.f56468d0 = -1;
        this.f56469e0 = -1;
        this.f56467c0 = -9223372036854775807L;
        this.f56485s0 = -9223372036854775807L;
        this.f56487t0 = -9223372036854775807L;
        this.B0 = -9223372036854775807L;
        this.f56465a0 = -9223372036854775807L;
        this.f56478n0 = 0;
        this.f56479o0 = 0;
        this.f56499z0 = new gn.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean E1(io.bidmachine.media3.common.a aVar) {
        int i10 = aVar.N;
        if (i10 != 0 && i10 != 2) {
            return false;
        }
        return true;
    }

    private boolean F1(@Nullable io.bidmachine.media3.common.a aVar) throws ExoPlaybackException {
        if (m0.f3614a >= 23 && this.L != null && this.f56479o0 != 3 && getState() != 0) {
            float A0 = A0(this.K, (io.bidmachine.media3.common.a) cn.a.e(aVar), J());
            float f10 = this.P;
            if (f10 == A0) {
                return true;
            }
            if (A0 == -1.0f) {
                n0();
                return false;
            } else if (f10 == -1.0f && A0 <= this.f56488u) {
                return true;
            } else {
                Bundle bundle = new Bundle();
                bundle.putFloat("operating-rate", A0);
                ((h) cn.a.e(this.L)).a(bundle);
                this.P = A0;
            }
        }
        return true;
    }

    @RequiresApi(23)
    private void G1() throws ExoPlaybackException {
        fn.b b10 = ((DrmSession) cn.a.e(this.F)).b();
        if (b10 instanceof ln.l) {
            try {
                ((MediaCrypto) cn.a.e(this.H)).setMediaDrmSession(((ln.l) b10).f62285b);
            } catch (MediaCryptoException e10) {
                throw B(e10, this.C, AuthCode.StatusCode.PERMISSION_EXPIRED);
            }
        }
        s1(this.F);
        this.f56478n0 = 0;
        this.f56479o0 = 0;
    }

    private boolean L0() {
        if (this.f56469e0 >= 0) {
            return true;
        }
        return false;
    }

    private boolean M0() {
        if (!this.f56496y.w()) {
            return true;
        }
        long H = H();
        if (S0(H, this.f56496y.u()) == S0(H, this.f56494x.f55347f)) {
            return true;
        }
        return false;
    }

    private void N0(io.bidmachine.media3.common.a aVar) {
        l0();
        String str = aVar.f55174o;
        if (!MimeTypes.AUDIO_AAC.equals(str) && !MimeTypes.AUDIO_MPEG.equals(str) && !MimeTypes.AUDIO_OPUS.equals(str)) {
            this.f56496y.x(1);
        } else {
            this.f56496y.x(32);
        }
        this.f56473i0 = true;
    }

    private void O0(j jVar, @Nullable MediaCrypto mediaCrypto) throws Exception {
        float A0;
        boolean z10;
        io.bidmachine.media3.common.a aVar = (io.bidmachine.media3.common.a) cn.a.e(this.C);
        String str = jVar.f56575a;
        int i10 = m0.f3614a;
        float f10 = -1.0f;
        if (i10 < 23) {
            A0 = -1.0f;
        } else {
            A0 = A0(this.K, aVar, J());
        }
        if (A0 > this.f56488u) {
            f10 = A0;
        }
        long elapsedRealtime = D().elapsedRealtime();
        h.a F0 = F0(jVar, aVar, mediaCrypto, f10);
        if (i10 >= 31) {
            b.a(F0, I());
        }
        try {
            i0.a("createCodec:" + str);
            h b10 = this.f56482r.b(F0);
            this.L = b10;
            this.f56466b0 = b10.m(new c());
            i0.b();
            long elapsedRealtime2 = D().elapsedRealtime();
            if (!jVar.o(aVar)) {
                cn.r.h("MediaCodecRenderer", m0.G("Format exceeds selected codec's capabilities [%s, %s]", io.bidmachine.media3.common.a.i(aVar), str));
            }
            this.S = jVar;
            this.P = f10;
            this.M = aVar;
            this.T = f0(str);
            this.U = j0(str);
            this.V = g0(str);
            this.W = h0(str);
            boolean z11 = false;
            if (!i0(jVar) && !z0()) {
                z10 = false;
            } else {
                z10 = true;
            }
            this.Z = z10;
            if (((h) cn.a.e(this.L)).d()) {
                this.f56476l0 = true;
                this.f56477m0 = 1;
                if (this.T != 0) {
                    z11 = true;
                }
                this.X = z11;
            }
            if (getState() == 2) {
                this.f56467c0 = D().elapsedRealtime() + 1000;
            }
            this.f56499z0.f52421a++;
            Y0(str, F0, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
        } catch (Throwable th2) {
            i0.b();
            throw th2;
        }
    }

    private boolean P0() throws ExoPlaybackException {
        boolean z10;
        if (this.H == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        DrmSession drmSession = this.E;
        fn.b b10 = drmSession.b();
        if (ln.l.f62283d && (b10 instanceof ln.l)) {
            int state = drmSession.getState();
            if (state != 1) {
                if (state != 4) {
                    return false;
                }
            } else {
                DrmSession.DrmSessionException drmSessionException = (DrmSession.DrmSessionException) cn.a.e(drmSession.getError());
                throw B(drmSessionException, this.C, drmSessionException.f55845a);
            }
        }
        if (b10 == null) {
            if (drmSession.getError() == null) {
                return false;
            }
            return true;
        }
        if (b10 instanceof ln.l) {
            ln.l lVar = (ln.l) b10;
            try {
                this.H = new MediaCrypto(lVar.f62284a, lVar.f62285b);
            } catch (MediaCryptoException e10) {
                throw B(e10, this.C, AuthCode.StatusCode.PERMISSION_EXPIRED);
            }
        }
        return true;
    }

    private boolean S0(long j10, long j11) {
        io.bidmachine.media3.common.a aVar;
        if (j11 < j10 && ((aVar = this.D) == null || !Objects.equals(aVar.f55174o, MimeTypes.AUDIO_OPUS) || !h0.g(j10, j11))) {
            return true;
        }
        return false;
    }

    private static boolean T0(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return true;
        }
        StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
        if (stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec")) {
            return true;
        }
        return false;
    }

    private void V0(@Nullable MediaCrypto mediaCrypto, boolean z10) throws DecoderInitializationException, ExoPlaybackException {
        io.bidmachine.media3.common.a aVar = (io.bidmachine.media3.common.a) cn.a.e(this.C);
        if (this.Q == null) {
            try {
                List<j> v02 = v0(z10);
                ArrayDeque<j> arrayDeque = new ArrayDeque<>();
                this.Q = arrayDeque;
                if (this.f56486t) {
                    arrayDeque.addAll(v02);
                } else if (!v02.isEmpty()) {
                    this.Q.add(v02.get(0));
                }
                this.R = null;
            } catch (MediaCodecUtil.DecoderQueryException e10) {
                throw new DecoderInitializationException(aVar, e10, z10, -49998);
            }
        }
        if (!this.Q.isEmpty()) {
            ArrayDeque arrayDeque2 = (ArrayDeque) cn.a.e(this.Q);
            while (this.L == null) {
                j jVar = (j) cn.a.e((j) arrayDeque2.peekFirst());
                if (!W0(aVar) || !z1(jVar)) {
                    return;
                }
                try {
                    O0(jVar, mediaCrypto);
                } catch (Exception e11) {
                    cn.r.i("MediaCodecRenderer", "Failed to initialize decoder: " + jVar, e11);
                    arrayDeque2.removeFirst();
                    DecoderInitializationException decoderInitializationException = new DecoderInitializationException(aVar, e11, z10, jVar);
                    X0(decoderInitializationException);
                    if (this.R == null) {
                        this.R = decoderInitializationException;
                    } else {
                        this.R = this.R.e(decoderInitializationException);
                    }
                    if (arrayDeque2.isEmpty()) {
                        throw this.R;
                    }
                }
            }
            this.Q = null;
            return;
        }
        throw new DecoderInitializationException(aVar, (Throwable) null, z10, -49999);
    }

    private void c0() throws ExoPlaybackException {
        cn.a.g(!this.f56489u0);
        c0 F = F();
        this.f56494x.b();
        do {
            this.f56494x.b();
            int Y = Y(F, this.f56494x, 0);
            if (Y != -5) {
                if (Y != -4) {
                    if (Y == -3) {
                        if (hasReadStreamToEnd()) {
                            this.f56487t0 = this.f56485s0;
                            return;
                        }
                        return;
                    }
                    throw new IllegalStateException();
                } else if (this.f56494x.f()) {
                    this.f56489u0 = true;
                    this.f56487t0 = this.f56485s0;
                    return;
                } else {
                    this.f56485s0 = Math.max(this.f56485s0, this.f56494x.f55347f);
                    if (hasReadStreamToEnd() || this.f56492w.i()) {
                        this.f56487t0 = this.f56485s0;
                    }
                    if (this.f56493w0) {
                        io.bidmachine.media3.common.a aVar = (io.bidmachine.media3.common.a) cn.a.e(this.C);
                        this.D = aVar;
                        if (Objects.equals(aVar.f55174o, MimeTypes.AUDIO_OPUS) && !this.D.f55177r.isEmpty()) {
                            this.D = this.D.b().Z(h0.f(this.D.f55177r.get(0))).N();
                        }
                        b1(this.D, null);
                        this.f56493w0 = false;
                    }
                    this.f56494x.n();
                    io.bidmachine.media3.common.a aVar2 = this.D;
                    if (aVar2 != null && Objects.equals(aVar2.f55174o, MimeTypes.AUDIO_OPUS)) {
                        if (this.f56494x.e()) {
                            DecoderInputBuffer decoderInputBuffer = this.f56494x;
                            decoderInputBuffer.f55343b = this.D;
                            K0(decoderInputBuffer);
                        }
                        if (h0.g(H(), this.f56494x.f55347f)) {
                            this.B.a(this.f56494x, this.D.f55177r);
                        }
                    }
                    if (!M0()) {
                        break;
                    }
                }
            } else {
                a1(F);
                return;
            }
        } while (this.f56496y.r(this.f56494x));
        this.f56474j0 = true;
    }

    private boolean d0(long j10, long j11) throws ExoPlaybackException {
        boolean z10;
        cn.a.g(!this.f56491v0);
        if (this.f56496y.w()) {
            f fVar = this.f56496y;
            if (i1(j10, j11, null, fVar.f55345d, this.f56469e0, 0, fVar.v(), this.f56496y.t(), S0(H(), this.f56496y.u()), this.f56496y.f(), (io.bidmachine.media3.common.a) cn.a.e(this.D))) {
                d1(this.f56496y.u());
                this.f56496y.b();
                z10 = false;
            } else {
                return false;
            }
        } else {
            z10 = false;
        }
        if (this.f56489u0) {
            this.f56491v0 = true;
            return z10;
        }
        if (this.f56474j0) {
            cn.a.g(this.f56496y.r(this.f56494x));
            this.f56474j0 = z10;
        }
        if (this.f56475k0) {
            if (this.f56496y.w()) {
                return true;
            }
            l0();
            this.f56475k0 = z10;
            U0();
            if (!this.f56473i0) {
                return z10;
            }
        }
        c0();
        if (this.f56496y.w()) {
            this.f56496y.n();
        }
        if (this.f56496y.w() || this.f56489u0 || this.f56475k0) {
            return true;
        }
        return z10;
    }

    private int f0(String str) {
        int i10 = m0.f3614a;
        if (i10 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = Build.MODEL;
            if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                return 2;
            }
        }
        if (i10 < 24) {
            if ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) {
                String str3 = Build.DEVICE;
                if ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) {
                    return 1;
                }
                return 0;
            }
            return 0;
        }
        return 0;
    }

    private static boolean g0(String str) {
        if (m0.f3614a <= 23 && "OMX.google.vorbis.decoder".equals(str)) {
            return true;
        }
        return false;
    }

    private static boolean h0(String str) {
        if (m0.f3614a == 21 && "OMX.google.aac.decoder".equals(str)) {
            return true;
        }
        return false;
    }

    @TargetApi(23)
    private void h1() throws ExoPlaybackException {
        int i10 = this.f56479o0;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    this.f56491v0 = true;
                    n1();
                    return;
                }
                l1();
                return;
            }
            s0();
            G1();
            return;
        }
        s0();
    }

    private static boolean i0(j jVar) {
        String str = jVar.f56575a;
        int i10 = m0.f3614a;
        if ((i10 <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || ((i10 <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str) || "OMX.bcm.vdec.avc.tunnel".equals(str) || "OMX.bcm.vdec.avc.tunnel.secure".equals(str) || "OMX.bcm.vdec.hevc.tunnel".equals(str) || "OMX.bcm.vdec.hevc.tunnel.secure".equals(str))) || ("Amazon".equals(Build.MANUFACTURER) && "AFTS".equals(Build.MODEL) && jVar.f56581g))) {
            return true;
        }
        return false;
    }

    private static boolean j0(String str) {
        if (m0.f3614a == 29 && "c2.android.aac.decoder".equals(str)) {
            return true;
        }
        return false;
    }

    private void j1() {
        this.f56483r0 = true;
        MediaFormat h10 = ((h) cn.a.e(this.L)).h();
        if (this.T != 0 && h10.getInteger("width") == 32 && h10.getInteger("height") == 32) {
            this.Y = true;
            return;
        }
        this.N = h10;
        this.O = true;
    }

    private boolean k1(int i10) throws ExoPlaybackException {
        c0 F = F();
        this.f56490v.b();
        int Y = Y(F, this.f56490v, i10 | 4);
        if (Y == -5) {
            a1(F);
            return true;
        } else if (Y == -4 && this.f56490v.f()) {
            this.f56489u0 = true;
            h1();
            return false;
        } else {
            return false;
        }
    }

    private void l0() {
        this.f56475k0 = false;
        this.f56496y.b();
        this.f56494x.b();
        this.f56474j0 = false;
        this.f56473i0 = false;
        this.B.d();
    }

    private void l1() throws ExoPlaybackException {
        m1();
        U0();
    }

    private boolean m0() {
        if (this.f56480p0) {
            this.f56478n0 = 1;
            if (this.V) {
                this.f56479o0 = 3;
                return false;
            }
            this.f56479o0 = 1;
        }
        return true;
    }

    private void n0() throws ExoPlaybackException {
        if (this.f56480p0) {
            this.f56478n0 = 1;
            this.f56479o0 = 3;
            return;
        }
        l1();
    }

    @TargetApi(23)
    private boolean o0() throws ExoPlaybackException {
        if (this.f56480p0) {
            this.f56478n0 = 1;
            if (this.V) {
                this.f56479o0 = 3;
                return false;
            }
            this.f56479o0 = 2;
        } else {
            G1();
        }
        return true;
    }

    private boolean p0(long j10, long j11) throws ExoPlaybackException {
        boolean z10;
        boolean i12;
        boolean z11;
        ByteBuffer byteBuffer;
        int i10;
        MediaCodec.BufferInfo bufferInfo;
        int f10;
        boolean z12;
        boolean z13;
        h hVar = (h) cn.a.e(this.L);
        if (!L0()) {
            if (this.W && this.f56481q0) {
                try {
                    f10 = hVar.f(this.f56498z);
                } catch (IllegalStateException unused) {
                    h1();
                    if (this.f56491v0) {
                        m1();
                    }
                    return false;
                }
            } else {
                f10 = hVar.f(this.f56498z);
            }
            if (f10 < 0) {
                if (f10 == -2) {
                    j1();
                    return true;
                }
                if (this.Z && (this.f56489u0 || this.f56478n0 == 2)) {
                    h1();
                }
                long j12 = this.f56465a0;
                if (j12 != -9223372036854775807L && j12 + 100 < D().currentTimeMillis()) {
                    h1();
                }
                return false;
            } else if (this.Y) {
                this.Y = false;
                hVar.g(f10, false);
                return true;
            } else {
                MediaCodec.BufferInfo bufferInfo2 = this.f56498z;
                if (bufferInfo2.size == 0 && (bufferInfo2.flags & 4) != 0) {
                    h1();
                    return false;
                }
                this.f56469e0 = f10;
                ByteBuffer l10 = hVar.l(f10);
                this.f56470f0 = l10;
                if (l10 != null) {
                    l10.position(this.f56498z.offset);
                    ByteBuffer byteBuffer2 = this.f56470f0;
                    MediaCodec.BufferInfo bufferInfo3 = this.f56498z;
                    byteBuffer2.limit(bufferInfo3.offset + bufferInfo3.size);
                }
                if (this.f56498z.presentationTimeUs < H()) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                this.f56471g0 = z12;
                long j13 = this.f56487t0;
                if (j13 != -9223372036854775807L && j13 <= this.f56498z.presentationTimeUs) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                this.f56472h0 = z13;
                H1(this.f56498z.presentationTimeUs);
            }
        }
        if (this.W && this.f56481q0) {
            try {
                byteBuffer = this.f56470f0;
                i10 = this.f56469e0;
                bufferInfo = this.f56498z;
                z10 = false;
            } catch (IllegalStateException unused2) {
                z10 = false;
            }
            try {
                i12 = i1(j10, j11, hVar, byteBuffer, i10, bufferInfo.flags, 1, bufferInfo.presentationTimeUs, this.f56471g0, this.f56472h0, (io.bidmachine.media3.common.a) cn.a.e(this.D));
            } catch (IllegalStateException unused3) {
                h1();
                if (this.f56491v0) {
                    m1();
                }
                return z10;
            }
        } else {
            z10 = false;
            ByteBuffer byteBuffer3 = this.f56470f0;
            int i11 = this.f56469e0;
            MediaCodec.BufferInfo bufferInfo4 = this.f56498z;
            i12 = i1(j10, j11, hVar, byteBuffer3, i11, bufferInfo4.flags, 1, bufferInfo4.presentationTimeUs, this.f56471g0, this.f56472h0, (io.bidmachine.media3.common.a) cn.a.e(this.D));
        }
        if (i12) {
            d1(this.f56498z.presentationTimeUs);
            if ((this.f56498z.flags & 4) != 0) {
                z11 = true;
            } else {
                z11 = z10;
            }
            if (!z11 && this.f56481q0 && this.f56472h0) {
                this.f56465a0 = D().currentTimeMillis();
            }
            r1();
            if (!z11) {
                return true;
            }
            h1();
        }
        return z10;
    }

    private boolean q0(j jVar, io.bidmachine.media3.common.a aVar, @Nullable DrmSession drmSession, @Nullable DrmSession drmSession2) throws ExoPlaybackException {
        fn.b b10;
        fn.b b11;
        if (drmSession == drmSession2) {
            return false;
        }
        if (drmSession2 != null && drmSession != null && (b10 = drmSession2.b()) != null && (b11 = drmSession.b()) != null && b10.getClass().equals(b11.getClass())) {
            if (!(b10 instanceof ln.l)) {
                return false;
            }
            if (!drmSession2.c().equals(drmSession.c()) || m0.f3614a < 23) {
                return true;
            }
            UUID uuid = zm.f.f71932e;
            if (!uuid.equals(drmSession.c()) && !uuid.equals(drmSession2.c())) {
                if (jVar.f56581g) {
                    return false;
                }
                if (drmSession2.getState() != 2 && ((drmSession2.getState() != 3 && drmSession2.getState() != 4) || !drmSession2.d((String) cn.a.e(aVar.f55174o)))) {
                    return false;
                }
                return true;
            }
        }
        return true;
    }

    private void q1() {
        this.f56468d0 = -1;
        this.f56492w.f55345d = null;
    }

    private boolean r0() throws ExoPlaybackException {
        int i10;
        if (this.L == null || (i10 = this.f56478n0) == 2 || this.f56489u0) {
            return false;
        }
        if (i10 == 0 && A1()) {
            n0();
        }
        h hVar = (h) cn.a.e(this.L);
        if (this.f56468d0 < 0) {
            int k10 = hVar.k();
            this.f56468d0 = k10;
            if (k10 < 0) {
                return false;
            }
            this.f56492w.f55345d = hVar.i(k10);
            this.f56492w.b();
        }
        if (this.f56478n0 == 1) {
            if (!this.Z) {
                this.f56481q0 = true;
                hVar.b(this.f56468d0, 0, 0, 0L, 4);
                q1();
            }
            this.f56478n0 = 2;
            return false;
        } else if (this.X) {
            this.X = false;
            byte[] bArr = E0;
            ((ByteBuffer) cn.a.e(this.f56492w.f55345d)).put(bArr);
            hVar.b(this.f56468d0, 0, bArr.length, 0L, 0);
            q1();
            this.f56480p0 = true;
            return true;
        } else {
            if (this.f56477m0 == 1) {
                for (int i11 = 0; i11 < ((io.bidmachine.media3.common.a) cn.a.e(this.M)).f55177r.size(); i11++) {
                    ((ByteBuffer) cn.a.e(this.f56492w.f55345d)).put(this.M.f55177r.get(i11));
                }
                this.f56477m0 = 2;
            }
            int position = ((ByteBuffer) cn.a.e(this.f56492w.f55345d)).position();
            c0 F = F();
            try {
                int Y = Y(F, this.f56492w, 0);
                if (Y == -3) {
                    if (hasReadStreamToEnd()) {
                        this.f56487t0 = this.f56485s0;
                    }
                    return false;
                } else if (Y == -5) {
                    if (this.f56477m0 == 2) {
                        this.f56492w.b();
                        this.f56477m0 = 1;
                    }
                    a1(F);
                    return true;
                } else if (this.f56492w.f()) {
                    this.f56487t0 = this.f56485s0;
                    if (this.f56477m0 == 2) {
                        this.f56492w.b();
                        this.f56477m0 = 1;
                    }
                    this.f56489u0 = true;
                    if (!this.f56480p0) {
                        h1();
                        return false;
                    }
                    if (!this.Z) {
                        this.f56481q0 = true;
                        hVar.b(this.f56468d0, 0, 0, 0L, 4);
                        q1();
                    }
                    return false;
                } else if (!this.f56480p0 && !this.f56492w.h()) {
                    this.f56492w.b();
                    if (this.f56477m0 == 2) {
                        this.f56477m0 = 1;
                    }
                    return true;
                } else if (y1(this.f56492w)) {
                    return true;
                } else {
                    boolean o10 = this.f56492w.o();
                    if (o10) {
                        this.f56492w.f55344c.b(position);
                    }
                    long j10 = this.f56492w.f55347f;
                    if (this.f56493w0) {
                        if (!this.A.isEmpty()) {
                            this.A.peekLast().f56510d.a(j10, (io.bidmachine.media3.common.a) cn.a.e(this.C));
                        } else {
                            this.A0.f56510d.a(j10, (io.bidmachine.media3.common.a) cn.a.e(this.C));
                        }
                        this.f56493w0 = false;
                    }
                    this.f56485s0 = Math.max(this.f56485s0, j10);
                    if (hasReadStreamToEnd() || this.f56492w.i()) {
                        this.f56487t0 = this.f56485s0;
                    }
                    this.f56492w.n();
                    if (this.f56492w.e()) {
                        K0(this.f56492w);
                    }
                    f1(this.f56492w);
                    int x02 = x0(this.f56492w);
                    if (o10) {
                        ((h) cn.a.e(hVar)).c(this.f56468d0, 0, this.f56492w.f55344c, j10, x02);
                    } else {
                        ((h) cn.a.e(hVar)).b(this.f56468d0, 0, ((ByteBuffer) cn.a.e(this.f56492w.f55345d)).limit(), j10, x02);
                    }
                    q1();
                    this.f56480p0 = true;
                    this.f56477m0 = 0;
                    this.f56499z0.f52423c++;
                    return true;
                }
            } catch (DecoderInputBuffer.InsufficientCapacityException e10) {
                X0(e10);
                k1(0);
                s0();
                return true;
            }
        }
    }

    private void r1() {
        this.f56469e0 = -1;
        this.f56470f0 = null;
    }

    private void s0() {
        try {
            ((h) cn.a.i(this.L)).flush();
        } finally {
            o1();
        }
    }

    private void s1(@Nullable DrmSession drmSession) {
        DrmSession.e(this.E, drmSession);
        this.E = drmSession;
    }

    private void t1(d dVar) {
        this.A0 = dVar;
        long j10 = dVar.f56509c;
        if (j10 != -9223372036854775807L) {
            this.C0 = true;
            c1(j10);
        }
    }

    private List<j> v0(boolean z10) throws MediaCodecUtil.DecoderQueryException {
        io.bidmachine.media3.common.a aVar = (io.bidmachine.media3.common.a) cn.a.e(this.C);
        List<j> C0 = C0(this.f56484s, aVar, z10);
        if (C0.isEmpty() && z10) {
            C0 = C0(this.f56484s, aVar, false);
            if (!C0.isEmpty()) {
                cn.r.h("MediaCodecRenderer", "Drm session requires secure decoder for " + aVar.f55174o + ", but no secure decoder available. Trying to proceed with " + C0 + ".");
            }
        }
        return C0;
    }

    private void w1(@Nullable DrmSession drmSession) {
        DrmSession.e(this.F, drmSession);
        this.F = drmSession;
    }

    private boolean x1(long j10) {
        if (this.I != -9223372036854775807L && D().elapsedRealtime() - j10 >= this.I) {
            return false;
        }
        return true;
    }

    protected abstract float A0(float f10, io.bidmachine.media3.common.a aVar, io.bidmachine.media3.common.a[] aVarArr);

    protected boolean A1() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final MediaFormat B0() {
        return this.N;
    }

    protected boolean B1(DecoderInputBuffer decoderInputBuffer) {
        return false;
    }

    protected abstract List<j> C0(l lVar, io.bidmachine.media3.common.a aVar, boolean z10) throws MediaCodecUtil.DecoderQueryException;

    protected boolean C1(io.bidmachine.media3.common.a aVar) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long D0(long j10, long j11, boolean z10) {
        return super.z(j10, j11);
    }

    protected abstract int D1(l lVar, io.bidmachine.media3.common.a aVar) throws MediaCodecUtil.DecoderQueryException;

    /* JADX INFO: Access modifiers changed from: protected */
    public long E0() {
        return this.f56487t0;
    }

    protected abstract h.a F0(j jVar, io.bidmachine.media3.common.a aVar, @Nullable MediaCrypto mediaCrypto, float f10);

    /* JADX INFO: Access modifiers changed from: protected */
    public final long G0() {
        return this.A0.f56509c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long H0() {
        return this.A0.f56508b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void H1(long j10) throws ExoPlaybackException {
        io.bidmachine.media3.common.a j11 = this.A0.f56510d.j(j10);
        if (j11 == null && this.C0 && this.N != null) {
            j11 = this.A0.f56510d.i();
        }
        if (j11 != null) {
            this.D = j11;
        } else if (!this.O || this.D == null) {
            return;
        }
        b1((io.bidmachine.media3.common.a) cn.a.e(this.D), this.N);
        this.O = false;
        this.C0 = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float I0() {
        return this.J;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final h2.a J0() {
        return this.G;
    }

    protected abstract void K0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.h
    public void N() {
        this.C = null;
        t1(d.f56506e);
        this.A.clear();
        u0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.h
    public void O(boolean z10, boolean z11) throws ExoPlaybackException {
        this.f56499z0 = new gn.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.h
    public void Q(long j10, boolean z10) throws ExoPlaybackException {
        this.f56489u0 = false;
        this.f56491v0 = false;
        this.f56495x0 = false;
        if (this.f56473i0) {
            this.f56496y.b();
            this.f56494x.b();
            this.f56474j0 = false;
            this.B.d();
        } else {
            t0();
        }
        if (this.A0.f56510d.l() > 0) {
            this.f56493w0 = true;
        }
        this.A0.f56510d.c();
        this.A.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean Q0() {
        return this.f56473i0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean R0(io.bidmachine.media3.common.a aVar) {
        if (this.F == null && C1(aVar)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.h
    public void T() {
        try {
            l0();
            m1();
        } finally {
            w1(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void U0() throws ExoPlaybackException {
        io.bidmachine.media3.common.a aVar;
        boolean z10;
        if (this.L == null && !this.f56473i0 && (aVar = this.C) != null) {
            if (R0(aVar)) {
                N0(aVar);
                return;
            }
            s1(this.F);
            if (this.E == null || P0()) {
                try {
                    DrmSession drmSession = this.E;
                    if (drmSession != null) {
                        if (drmSession.getState() != 3) {
                            if (this.E.getState() == 4) {
                            }
                        }
                        if (this.E.d((String) cn.a.i(aVar.f55174o))) {
                            z10 = true;
                            V0(this.H, z10);
                        }
                    }
                    z10 = false;
                    V0(this.H, z10);
                } catch (DecoderInitializationException e10) {
                    throw B(e10, aVar, 4001);
                }
            }
            MediaCrypto mediaCrypto = this.H;
            if (mediaCrypto != null && this.L == null) {
                mediaCrypto.release();
                this.H = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
        if (r5 >= r1) goto L17;
     */
    @Override // io.bidmachine.media3.exoplayer.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void W(io.bidmachine.media3.common.a[] r13, long r14, long r16, io.bidmachine.media3.exoplayer.source.r.b r18) throws io.bidmachine.media3.exoplayer.ExoPlaybackException {
        /*
            r12 = this;
            r0 = r12
            io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer$d r1 = r0.A0
            long r1 = r1.f56509c
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 != 0) goto L27
            io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer$d r1 = new io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer$d
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = r1
            r8 = r14
            r10 = r16
            r5.<init>(r6, r8, r10)
            r12.t1(r1)
            boolean r1 = r0.D0
            if (r1 == 0) goto L6c
            r12.e1()
            goto L6c
        L27:
            java.util.ArrayDeque<io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer$d> r1 = r0.A
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L5c
            long r1 = r0.f56485s0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L3f
            long r5 = r0.B0
            int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r7 == 0) goto L5c
            int r1 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r1 < 0) goto L5c
        L3f:
            io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer$d r1 = new io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer$d
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = r1
            r8 = r14
            r10 = r16
            r5.<init>(r6, r8, r10)
            r12.t1(r1)
            io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer$d r1 = r0.A0
            long r1 = r1.f56509c
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 == 0) goto L6c
            r12.e1()
            goto L6c
        L5c:
            java.util.ArrayDeque<io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer$d> r1 = r0.A
            io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer$d r9 = new io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer$d
            long r3 = r0.f56485s0
            r2 = r9
            r5 = r14
            r7 = r16
            r2.<init>(r3, r5, r7)
            r1.add(r9)
        L6c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer.W(io.bidmachine.media3.common.a[], long, long, io.bidmachine.media3.exoplayer.source.r$b):void");
    }

    protected boolean W0(io.bidmachine.media3.common.a aVar) throws ExoPlaybackException {
        return true;
    }

    protected abstract void X0(Exception exc);

    protected abstract void Y0(String str, h.a aVar, long j10, long j11);

    protected abstract void Z0(String str);

    @Override // io.bidmachine.media3.exoplayer.i2
    public final int a(io.bidmachine.media3.common.a aVar) throws ExoPlaybackException {
        try {
            return D1(this.f56484s, aVar);
        } catch (MediaCodecUtil.DecoderQueryException e10) {
            throw B(e10, aVar, 4002);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00a9, code lost:
        if (o0() == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ab, code lost:
        r9 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00dc, code lost:
        if (o0() == false) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0100  */
    @androidx.annotation.Nullable
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gn.c a1(gn.c0 r12) throws io.bidmachine.media3.exoplayer.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer.a1(gn.c0):gn.c");
    }

    protected abstract void b1(io.bidmachine.media3.common.a aVar, @Nullable MediaFormat mediaFormat) throws ExoPlaybackException;

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void d1(long j10) {
        this.B0 = j10;
        while (!this.A.isEmpty() && j10 >= this.A.peek().f56507a) {
            t1((d) cn.a.e(this.A.poll()));
            e1();
        }
    }

    protected abstract gn.c e0(j jVar, io.bidmachine.media3.common.a aVar, io.bidmachine.media3.common.a aVar2);

    @Override // io.bidmachine.media3.exoplayer.h, io.bidmachine.media3.exoplayer.f2.b
    public void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException {
        if (i10 == 11) {
            h2.a aVar = (h2.a) cn.a.e((h2.a) obj);
            this.G = aVar;
            g1(aVar);
            return;
        }
        super.handleMessage(i10, obj);
    }

    protected abstract boolean i1(long j10, long j11, @Nullable h hVar, @Nullable ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, io.bidmachine.media3.common.a aVar) throws ExoPlaybackException;

    @Override // io.bidmachine.media3.exoplayer.h2
    public boolean isEnded() {
        return this.f56491v0;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public boolean isReady() {
        if (this.C != null && (M() || L0() || (this.f56467c0 != -9223372036854775807L && D().elapsedRealtime() < this.f56467c0))) {
            return true;
        }
        return false;
    }

    protected MediaCodecDecoderException k0(Throwable th2, @Nullable j jVar) {
        return new MediaCodecDecoderException(th2, jVar);
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public void l(float f10, float f11) throws ExoPlaybackException {
        this.J = f10;
        this.K = f11;
        F1(this.M);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.media.MediaCrypto, io.bidmachine.media3.exoplayer.drm.DrmSession] */
    public void m1() {
        try {
            h hVar = this.L;
            if (hVar != null) {
                hVar.release();
                this.f56499z0.f52422b++;
                Z0(((j) cn.a.e(this.S)).f56575a);
            }
            this.L = null;
            try {
                MediaCrypto mediaCrypto = this.H;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th2) {
            this.L = null;
            try {
                MediaCrypto mediaCrypto2 = this.H;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th2;
            } finally {
            }
        }
    }

    protected abstract void n1() throws ExoPlaybackException;

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void o1() {
        q1();
        r1();
        this.f56467c0 = -9223372036854775807L;
        this.f56481q0 = false;
        this.f56465a0 = -9223372036854775807L;
        this.f56480p0 = false;
        this.X = false;
        this.Y = false;
        this.f56471g0 = false;
        this.f56472h0 = false;
        this.f56485s0 = -9223372036854775807L;
        this.f56487t0 = -9223372036854775807L;
        this.B0 = -9223372036854775807L;
        this.f56478n0 = 0;
        this.f56479o0 = 0;
        this.f56477m0 = this.f56476l0 ? 1 : 0;
    }

    @CallSuper
    protected void p1() {
        o1();
        this.f56497y0 = null;
        this.Q = null;
        this.S = null;
        this.M = null;
        this.N = null;
        this.O = false;
        this.f56483r0 = false;
        this.P = -1.0f;
        this.T = 0;
        this.U = false;
        this.V = false;
        this.W = false;
        this.Z = false;
        this.f56466b0 = false;
        this.f56476l0 = false;
        this.f56477m0 = 0;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public void render(long j10, long j11) throws ExoPlaybackException {
        int i10;
        boolean z10 = false;
        if (this.f56495x0) {
            this.f56495x0 = false;
            h1();
        }
        ExoPlaybackException exoPlaybackException = this.f56497y0;
        if (exoPlaybackException == null) {
            try {
                if (this.f56491v0) {
                    n1();
                    return;
                } else if (this.C == null && !k1(2)) {
                    return;
                } else {
                    U0();
                    if (this.f56473i0) {
                        i0.a("bypassRender");
                        while (d0(j10, j11)) {
                        }
                        i0.b();
                    } else if (this.L != null) {
                        long elapsedRealtime = D().elapsedRealtime();
                        i0.a("drainAndFeed");
                        while (p0(j10, j11) && x1(elapsedRealtime)) {
                        }
                        while (r0() && x1(elapsedRealtime)) {
                        }
                        i0.b();
                    } else {
                        this.f56499z0.f52424d += a0(j10);
                        k1(1);
                    }
                    this.f56499z0.c();
                    return;
                }
            } catch (MediaCodec.CryptoException e10) {
                throw B(e10, this.C, m0.b0(e10.getErrorCode()));
            } catch (IllegalStateException e11) {
                if (T0(e11)) {
                    X0(e11);
                    if ((e11 instanceof MediaCodec.CodecException) && ((MediaCodec.CodecException) e11).isRecoverable()) {
                        z10 = true;
                    }
                    if (z10) {
                        m1();
                    }
                    MediaCodecDecoderException k02 = k0(e11, y0());
                    if (k02.f56464c == 1101) {
                        i10 = 4006;
                    } else {
                        i10 = 4003;
                    }
                    throw C(k02, this.C, z10, i10);
                }
                throw e11;
            }
        }
        this.f56497y0 = null;
        throw exoPlaybackException;
    }

    @Override // io.bidmachine.media3.exoplayer.h, io.bidmachine.media3.exoplayer.i2
    public final int supportsMixedMimeTypeAdaptation() {
        return 8;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean t0() throws ExoPlaybackException {
        boolean u02 = u0();
        if (u02) {
            U0();
        }
        return u02;
    }

    protected boolean u0() {
        boolean z10;
        if (this.L == null) {
            return false;
        }
        int i10 = this.f56479o0;
        if (i10 != 3 && ((!this.U || this.f56483r0) && (!this.V || !this.f56481q0))) {
            if (i10 == 2) {
                int i11 = m0.f3614a;
                if (i11 >= 23) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                cn.a.g(z10);
                if (i11 >= 23) {
                    try {
                        G1();
                    } catch (ExoPlaybackException e10) {
                        cn.r.i("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e10);
                        m1();
                        return true;
                    }
                }
            }
            s0();
            return false;
        }
        m1();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void u1() {
        this.f56495x0 = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void v1(ExoPlaybackException exoPlaybackException) {
        this.f56497y0 = exoPlaybackException;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final h w0() {
        return this.L;
    }

    protected int x0(DecoderInputBuffer decoderInputBuffer) {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final j y0() {
        return this.S;
    }

    protected boolean y1(DecoderInputBuffer decoderInputBuffer) {
        if (B1(decoderInputBuffer)) {
            decoderInputBuffer.b();
            this.f56499z0.f52424d++;
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final long z(long j10, long j11) {
        return D0(j10, j11, this.f56466b0);
    }

    protected boolean z0() {
        return false;
    }

    protected boolean z1(j jVar) {
        return true;
    }

    /* loaded from: classes8.dex */
    public static class DecoderInitializationException extends Exception {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final String f56500a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f56501b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final j f56502c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final String f56503d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final DecoderInitializationException f56504e;

        public DecoderInitializationException(io.bidmachine.media3.common.a aVar, @Nullable Throwable th2, boolean z10, int i10) {
            this("Decoder init failed: [" + i10 + "], " + aVar, th2, aVar.f55174o, z10, null, d(i10), null);
        }

        private static String d(int i10) {
            String str;
            if (i10 < 0) {
                str = "neg_";
            } else {
                str = "";
            }
            return "io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer_" + str + Math.abs(i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @CheckResult
        public DecoderInitializationException e(DecoderInitializationException decoderInitializationException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.f56500a, this.f56501b, this.f56502c, this.f56503d, decoderInitializationException);
        }

        public DecoderInitializationException(io.bidmachine.media3.common.a aVar, @Nullable Throwable th2, boolean z10, j jVar) {
            this("Decoder init failed: " + jVar.f56575a + ", " + aVar, th2, aVar.f55174o, z10, jVar, th2 instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) th2).getDiagnosticInfo() : null, null);
        }

        private DecoderInitializationException(@Nullable String str, @Nullable Throwable th2, @Nullable String str2, boolean z10, @Nullable j jVar, @Nullable String str3, @Nullable DecoderInitializationException decoderInitializationException) {
            super(str, th2);
            this.f56500a = str2;
            this.f56501b = z10;
            this.f56502c = jVar;
            this.f56503d = str3;
            this.f56504e = decoderInitializationException;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.h
    public void U() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.h
    public void V() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e1() {
    }

    protected void c1(long j10) {
    }

    protected void f1(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
    }

    protected void g1(h2.a aVar) {
    }
}
