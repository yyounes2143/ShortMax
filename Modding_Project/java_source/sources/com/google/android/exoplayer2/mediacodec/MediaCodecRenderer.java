package com.google.android.exoplayer2.mediacodec;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.CallSuper;
import androidx.annotation.CheckResult;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.n0;
import b7.p0;
import b7.s0;
import b7.v;
import com.adjust.sdk.Constants;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.mediacodec.j;
import com.google.android.exoplayer2.v0;
import com.huawei.hms.support.api.entity.auth.AuthCode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import o5.b0;
import p5.t3;
/* loaded from: classes4.dex */
public abstract class MediaCodecRenderer extends com.google.android.exoplayer2.f {
    private static final byte[] F0 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private final long[] A;
    @Nullable
    private ExoPlaybackException A0;
    @Nullable
    private v0 B;
    protected r5.e B0;
    @Nullable
    private v0 C;
    private long C0;
    @Nullable
    private DrmSession D;
    private long D0;
    @Nullable
    private DrmSession E;
    private int E0;
    @Nullable
    private MediaCrypto F;
    private boolean G;
    private long H;
    private float I;
    private float J;
    @Nullable
    private j K;
    @Nullable
    private v0 L;
    @Nullable
    private MediaFormat M;
    private boolean N;
    private float O;
    @Nullable
    private ArrayDeque<k> P;
    @Nullable
    private DecoderInitializationException Q;
    @Nullable
    private k R;
    private int S;
    private boolean T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private boolean Z;

    /* renamed from: a0  reason: collision with root package name */
    private boolean f17862a0;

    /* renamed from: b0  reason: collision with root package name */
    private boolean f17863b0;

    /* renamed from: c0  reason: collision with root package name */
    private boolean f17864c0;
    @Nullable

    /* renamed from: d0  reason: collision with root package name */
    private g f17865d0;

    /* renamed from: e0  reason: collision with root package name */
    private long f17866e0;

    /* renamed from: f0  reason: collision with root package name */
    private int f17867f0;

    /* renamed from: g0  reason: collision with root package name */
    private int f17868g0;
    @Nullable

    /* renamed from: h0  reason: collision with root package name */
    private ByteBuffer f17869h0;

    /* renamed from: i0  reason: collision with root package name */
    private boolean f17870i0;

    /* renamed from: j0  reason: collision with root package name */
    private boolean f17871j0;

    /* renamed from: k0  reason: collision with root package name */
    private boolean f17872k0;

    /* renamed from: l0  reason: collision with root package name */
    private boolean f17873l0;

    /* renamed from: m0  reason: collision with root package name */
    private boolean f17874m0;

    /* renamed from: n  reason: collision with root package name */
    private final j.b f17875n;

    /* renamed from: n0  reason: collision with root package name */
    private boolean f17876n0;

    /* renamed from: o  reason: collision with root package name */
    private final l f17877o;

    /* renamed from: o0  reason: collision with root package name */
    private int f17878o0;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f17879p;

    /* renamed from: p0  reason: collision with root package name */
    private int f17880p0;

    /* renamed from: q  reason: collision with root package name */
    private final float f17881q;

    /* renamed from: q0  reason: collision with root package name */
    private int f17882q0;

    /* renamed from: r  reason: collision with root package name */
    private final DecoderInputBuffer f17883r;

    /* renamed from: r0  reason: collision with root package name */
    private boolean f17884r0;

    /* renamed from: s  reason: collision with root package name */
    private final DecoderInputBuffer f17885s;

    /* renamed from: s0  reason: collision with root package name */
    private boolean f17886s0;

    /* renamed from: t  reason: collision with root package name */
    private final DecoderInputBuffer f17887t;

    /* renamed from: t0  reason: collision with root package name */
    private boolean f17888t0;

    /* renamed from: u  reason: collision with root package name */
    private final f f17889u;

    /* renamed from: u0  reason: collision with root package name */
    private long f17890u0;

    /* renamed from: v  reason: collision with root package name */
    private final n0<v0> f17891v;

    /* renamed from: v0  reason: collision with root package name */
    private long f17892v0;

    /* renamed from: w  reason: collision with root package name */
    private final ArrayList<Long> f17893w;

    /* renamed from: w0  reason: collision with root package name */
    private boolean f17894w0;

    /* renamed from: x  reason: collision with root package name */
    private final MediaCodec.BufferInfo f17895x;

    /* renamed from: x0  reason: collision with root package name */
    private boolean f17896x0;

    /* renamed from: y  reason: collision with root package name */
    private final long[] f17897y;

    /* renamed from: y0  reason: collision with root package name */
    private boolean f17898y0;

    /* renamed from: z  reason: collision with root package name */
    private final long[] f17899z;

    /* renamed from: z0  reason: collision with root package name */
    private boolean f17900z0;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(31)
    /* loaded from: classes4.dex */
    public static final class a {
        @DoNotInline
        public static void a(j.a aVar, t3 t3Var) {
            LogSessionId logSessionId;
            boolean equals;
            String stringId;
            LogSessionId a10 = t3Var.a();
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            equals = a10.equals(logSessionId);
            if (!equals) {
                MediaFormat mediaFormat = aVar.f17968b;
                stringId = a10.getStringId();
                mediaFormat.setString("log-session-id", stringId);
            }
        }
    }

    public MediaCodecRenderer(int i10, j.b bVar, l lVar, boolean z10, float f10) {
        super(i10);
        this.f17875n = bVar;
        this.f17877o = (l) b7.a.e(lVar);
        this.f17879p = z10;
        this.f17881q = f10;
        this.f17883r = DecoderInputBuffer.p();
        this.f17885s = new DecoderInputBuffer(0);
        this.f17887t = new DecoderInputBuffer(2);
        f fVar = new f();
        this.f17889u = fVar;
        this.f17891v = new n0<>();
        this.f17893w = new ArrayList<>();
        this.f17895x = new MediaCodec.BufferInfo();
        this.I = 1.0f;
        this.J = 1.0f;
        this.H = -9223372036854775807L;
        this.f17897y = new long[10];
        this.f17899z = new long[10];
        this.A = new long[10];
        this.C0 = -9223372036854775807L;
        U0(-9223372036854775807L);
        fVar.m(0);
        fVar.f17473c.order(ByteOrder.nativeOrder());
        this.O = -1.0f;
        this.S = 0;
        this.f17878o0 = 0;
        this.f17867f0 = -1;
        this.f17868g0 = -1;
        this.f17866e0 = -9223372036854775807L;
        this.f17890u0 = -9223372036854775807L;
        this.f17892v0 = -9223372036854775807L;
        this.f17880p0 = 0;
        this.f17882q0 = 0;
    }

    private void H() throws ExoPlaybackException {
        b7.a.g(!this.f17894w0);
        b0 s10 = s();
        this.f17887t.b();
        do {
            this.f17887t.b();
            int E = E(s10, this.f17887t, 0);
            if (E != -5) {
                if (E != -4) {
                    if (E == -3) {
                        return;
                    }
                    throw new IllegalStateException();
                } else if (this.f17887t.h()) {
                    this.f17894w0 = true;
                    return;
                } else {
                    if (this.f17898y0) {
                        v0 v0Var = (v0) b7.a.e(this.B);
                        this.C = v0Var;
                        D0(v0Var, null);
                        this.f17898y0 = false;
                    }
                    this.f17887t.n();
                }
            } else {
                C0(s10);
                return;
            }
        } while (this.f17889u.r(this.f17887t));
        this.f17873l0 = true;
    }

    private boolean I(long j10, long j11) throws ExoPlaybackException {
        boolean z10;
        b7.a.g(!this.f17896x0);
        if (this.f17889u.w()) {
            f fVar = this.f17889u;
            if (J0(j10, j11, null, fVar.f17473c, this.f17868g0, 0, fVar.v(), this.f17889u.t(), this.f17889u.g(), this.f17889u.h(), this.C)) {
                F0(this.f17889u.u());
                this.f17889u.b();
                z10 = false;
            } else {
                return false;
            }
        } else {
            z10 = false;
        }
        if (this.f17894w0) {
            this.f17896x0 = true;
            return z10;
        }
        if (this.f17873l0) {
            b7.a.g(this.f17889u.r(this.f17887t));
            this.f17873l0 = z10;
        }
        if (this.f17874m0) {
            if (this.f17889u.w()) {
                return true;
            }
            U();
            this.f17874m0 = z10;
            x0();
            if (!this.f17872k0) {
                return z10;
            }
        }
        H();
        if (this.f17889u.w()) {
            this.f17889u.n();
        }
        if (this.f17889u.w() || this.f17894w0 || this.f17874m0) {
            return true;
        }
        return z10;
    }

    @TargetApi(23)
    private void I0() throws ExoPlaybackException {
        int i10 = this.f17882q0;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    this.f17896x0 = true;
                    O0();
                    return;
                }
                M0();
                return;
            }
            b0();
            f1();
            return;
        }
        b0();
    }

    private int K(String str) {
        int i10 = s0.f2506a;
        if (i10 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = s0.f2509d;
            if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                return 2;
            }
        }
        if (i10 < 24) {
            if ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) {
                String str3 = s0.f2507b;
                if ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) {
                    return 1;
                }
                return 0;
            }
            return 0;
        }
        return 0;
    }

    private void K0() {
        this.f17888t0 = true;
        MediaFormat h10 = this.K.h();
        if (this.S != 0 && h10.getInteger("width") == 32 && h10.getInteger("height") == 32) {
            this.f17863b0 = true;
            return;
        }
        if (this.Z) {
            h10.setInteger(com.ss.ttm.player.MediaFormat.KEY_CHANNEL_COUNT, 1);
        }
        this.M = h10;
        this.N = true;
    }

    private static boolean L(String str, v0 v0Var) {
        if (s0.f2506a < 21 && v0Var.f19159n.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str)) {
            return true;
        }
        return false;
    }

    private boolean L0(int i10) throws ExoPlaybackException {
        b0 s10 = s();
        this.f17883r.b();
        int E = E(s10, this.f17883r, i10 | 4);
        if (E == -5) {
            C0(s10);
            return true;
        } else if (E == -4 && this.f17883r.h()) {
            this.f17894w0 = true;
            I0();
            return false;
        } else {
            return false;
        }
    }

    private static boolean M(String str) {
        if (s0.f2506a < 21 && "OMX.SEC.mp3.dec".equals(str) && Constants.REFERRER_API_SAMSUNG.equals(s0.f2508c)) {
            String str2 = s0.f2507b;
            if (str2.startsWith("baffin") || str2.startsWith("grand") || str2.startsWith("fortuna") || str2.startsWith("gprimelte") || str2.startsWith("j2y18lte") || str2.startsWith("ms01")) {
                return true;
            }
        }
        return false;
    }

    private void M0() throws ExoPlaybackException {
        N0();
        x0();
    }

    private static boolean N(String str) {
        int i10 = s0.f2506a;
        if (i10 > 23 || !"OMX.google.vorbis.decoder".equals(str)) {
            if (i10 <= 19) {
                String str2 = s0.f2507b;
                if (("hb2000".equals(str2) || "stvm8".equals(str2)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))) {
                }
            }
            return false;
        }
        return true;
    }

    private static boolean O(String str) {
        if (s0.f2506a == 21 && "OMX.google.aac.decoder".equals(str)) {
            return true;
        }
        return false;
    }

    private static boolean P(k kVar) {
        String str = kVar.f17973a;
        int i10 = s0.f2506a;
        if ((i10 <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || ((i10 <= 17 && "OMX.allwinner.video.decoder.avc".equals(str)) || ((i10 <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str))) || ("Amazon".equals(s0.f2508c) && "AFTS".equals(s0.f2509d) && kVar.f17979g)))) {
            return true;
        }
        return false;
    }

    private static boolean Q(String str) {
        int i10 = s0.f2506a;
        if (i10 >= 18 && ((i10 != 18 || (!"OMX.SEC.avc.dec".equals(str) && !"OMX.SEC.avc.dec.secure".equals(str))) && (i10 != 19 || !s0.f2509d.startsWith("SM-G800") || (!"OMX.Exynos.avc.dec".equals(str) && !"OMX.Exynos.avc.dec.secure".equals(str))))) {
            return false;
        }
        return true;
    }

    private static boolean R(String str, v0 v0Var) {
        if (s0.f2506a <= 18 && v0Var.f19170y == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str)) {
            return true;
        }
        return false;
    }

    private void R0() {
        this.f17867f0 = -1;
        this.f17885s.f17473c = null;
    }

    private static boolean S(String str) {
        if (s0.f2506a == 29 && "c2.android.aac.decoder".equals(str)) {
            return true;
        }
        return false;
    }

    private void S0() {
        this.f17868g0 = -1;
        this.f17869h0 = null;
    }

    private void T0(@Nullable DrmSession drmSession) {
        DrmSession.f(this.D, drmSession);
        this.D = drmSession;
    }

    private void U() {
        this.f17874m0 = false;
        this.f17889u.b();
        this.f17887t.b();
        this.f17873l0 = false;
        this.f17872k0 = false;
    }

    private void U0(long j10) {
        this.D0 = j10;
        if (j10 != -9223372036854775807L) {
            E0(j10);
        }
    }

    private boolean V() {
        if (this.f17884r0) {
            this.f17880p0 = 1;
            if (!this.U && !this.W) {
                this.f17882q0 = 1;
            } else {
                this.f17882q0 = 3;
                return false;
            }
        }
        return true;
    }

    private void W() throws ExoPlaybackException {
        if (this.f17884r0) {
            this.f17880p0 = 1;
            this.f17882q0 = 3;
            return;
        }
        M0();
    }

    @TargetApi(23)
    private boolean X() throws ExoPlaybackException {
        if (this.f17884r0) {
            this.f17880p0 = 1;
            if (!this.U && !this.W) {
                this.f17882q0 = 2;
            } else {
                this.f17882q0 = 3;
                return false;
            }
        } else {
            f1();
        }
        return true;
    }

    private void X0(@Nullable DrmSession drmSession) {
        DrmSession.f(this.E, drmSession);
        this.E = drmSession;
    }

    private boolean Y(long j10, long j11) throws ExoPlaybackException {
        boolean z10;
        boolean J0;
        boolean z11;
        j jVar;
        ByteBuffer byteBuffer;
        int i10;
        MediaCodec.BufferInfo bufferInfo;
        int f10;
        boolean z12;
        if (!q0()) {
            if (this.X && this.f17886s0) {
                try {
                    f10 = this.K.f(this.f17895x);
                } catch (IllegalStateException unused) {
                    I0();
                    if (this.f17896x0) {
                        N0();
                    }
                    return false;
                }
            } else {
                f10 = this.K.f(this.f17895x);
            }
            if (f10 < 0) {
                if (f10 == -2) {
                    K0();
                    return true;
                }
                if (this.f17864c0 && (this.f17894w0 || this.f17880p0 == 2)) {
                    I0();
                }
                return false;
            } else if (this.f17863b0) {
                this.f17863b0 = false;
                this.K.g(f10, false);
                return true;
            } else {
                MediaCodec.BufferInfo bufferInfo2 = this.f17895x;
                if (bufferInfo2.size == 0 && (bufferInfo2.flags & 4) != 0) {
                    I0();
                    return false;
                }
                this.f17868g0 = f10;
                ByteBuffer l10 = this.K.l(f10);
                this.f17869h0 = l10;
                if (l10 != null) {
                    l10.position(this.f17895x.offset);
                    ByteBuffer byteBuffer2 = this.f17869h0;
                    MediaCodec.BufferInfo bufferInfo3 = this.f17895x;
                    byteBuffer2.limit(bufferInfo3.offset + bufferInfo3.size);
                }
                if (this.Y) {
                    MediaCodec.BufferInfo bufferInfo4 = this.f17895x;
                    if (bufferInfo4.presentationTimeUs == 0 && (bufferInfo4.flags & 4) != 0) {
                        long j12 = this.f17890u0;
                        if (j12 != -9223372036854775807L) {
                            bufferInfo4.presentationTimeUs = j12;
                        }
                    }
                }
                this.f17870i0 = t0(this.f17895x.presentationTimeUs);
                long j13 = this.f17892v0;
                long j14 = this.f17895x.presentationTimeUs;
                if (j13 == j14) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                this.f17871j0 = z12;
                g1(j14);
            }
        }
        if (this.X && this.f17886s0) {
            try {
                jVar = this.K;
                byteBuffer = this.f17869h0;
                i10 = this.f17868g0;
                bufferInfo = this.f17895x;
                z10 = false;
            } catch (IllegalStateException unused2) {
                z10 = false;
            }
            try {
                J0 = J0(j10, j11, jVar, byteBuffer, i10, bufferInfo.flags, 1, bufferInfo.presentationTimeUs, this.f17870i0, this.f17871j0, this.C);
            } catch (IllegalStateException unused3) {
                I0();
                if (this.f17896x0) {
                    N0();
                }
                return z10;
            }
        } else {
            z10 = false;
            j jVar2 = this.K;
            ByteBuffer byteBuffer3 = this.f17869h0;
            int i11 = this.f17868g0;
            MediaCodec.BufferInfo bufferInfo5 = this.f17895x;
            J0 = J0(j10, j11, jVar2, byteBuffer3, i11, bufferInfo5.flags, 1, bufferInfo5.presentationTimeUs, this.f17870i0, this.f17871j0, this.C);
        }
        if (J0) {
            F0(this.f17895x.presentationTimeUs);
            if ((this.f17895x.flags & 4) != 0) {
                z11 = true;
            } else {
                z11 = z10;
            }
            S0();
            if (!z11) {
                return true;
            }
            I0();
        }
        return z10;
    }

    private boolean Y0(long j10) {
        if (this.H != -9223372036854775807L && SystemClock.elapsedRealtime() - j10 >= this.H) {
            return false;
        }
        return true;
    }

    private boolean Z(k kVar, v0 v0Var, @Nullable DrmSession drmSession, @Nullable DrmSession drmSession2) throws ExoPlaybackException {
        s5.l l02;
        boolean d10;
        if (drmSession == drmSession2) {
            return false;
        }
        if (drmSession2 == null || drmSession == null || !drmSession2.c().equals(drmSession.c()) || s0.f2506a < 23) {
            return true;
        }
        UUID uuid = o5.l.f63100e;
        if (uuid.equals(drmSession.c()) || uuid.equals(drmSession2.c()) || (l02 = l0(drmSession2)) == null) {
            return true;
        }
        if (l02.f66325c) {
            d10 = false;
        } else {
            d10 = drmSession2.d(v0Var.f19157l);
        }
        if (kVar.f17979g || !d10) {
            return false;
        }
        return true;
    }

    private boolean a0() throws ExoPlaybackException {
        int i10;
        if (this.K == null || (i10 = this.f17880p0) == 2 || this.f17894w0) {
            return false;
        }
        if (i10 == 0 && a1()) {
            W();
        }
        if (this.f17867f0 < 0) {
            int k10 = this.K.k();
            this.f17867f0 = k10;
            if (k10 < 0) {
                return false;
            }
            this.f17885s.f17473c = this.K.i(k10);
            this.f17885s.b();
        }
        if (this.f17880p0 == 1) {
            if (!this.f17864c0) {
                this.f17886s0 = true;
                this.K.b(this.f17867f0, 0, 0, 0L, 4);
                R0();
            }
            this.f17880p0 = 2;
            return false;
        } else if (this.f17862a0) {
            this.f17862a0 = false;
            ByteBuffer byteBuffer = this.f17885s.f17473c;
            byte[] bArr = F0;
            byteBuffer.put(bArr);
            this.K.b(this.f17867f0, 0, bArr.length, 0L, 0);
            R0();
            this.f17884r0 = true;
            return true;
        } else {
            if (this.f17878o0 == 1) {
                for (int i11 = 0; i11 < this.L.f19159n.size(); i11++) {
                    this.f17885s.f17473c.put(this.L.f19159n.get(i11));
                }
                this.f17878o0 = 2;
            }
            int position = this.f17885s.f17473c.position();
            b0 s10 = s();
            try {
                int E = E(s10, this.f17885s, 0);
                if (hasReadStreamToEnd()) {
                    this.f17892v0 = this.f17890u0;
                }
                if (E == -3) {
                    return false;
                }
                if (E == -5) {
                    if (this.f17878o0 == 2) {
                        this.f17885s.b();
                        this.f17878o0 = 1;
                    }
                    C0(s10);
                    return true;
                } else if (this.f17885s.h()) {
                    if (this.f17878o0 == 2) {
                        this.f17885s.b();
                        this.f17878o0 = 1;
                    }
                    this.f17894w0 = true;
                    if (!this.f17884r0) {
                        I0();
                        return false;
                    }
                    try {
                        if (!this.f17864c0) {
                            this.f17886s0 = true;
                            this.K.b(this.f17867f0, 0, 0, 0L, 4);
                            R0();
                        }
                        return false;
                    } catch (MediaCodec.CryptoException e10) {
                        throw p(e10, this.B, s0.P(e10.getErrorCode()));
                    }
                } else if (!this.f17884r0 && !this.f17885s.j()) {
                    this.f17885s.b();
                    if (this.f17878o0 == 2) {
                        this.f17878o0 = 1;
                    }
                    return true;
                } else {
                    boolean o10 = this.f17885s.o();
                    if (o10) {
                        this.f17885s.f17472b.b(position);
                    }
                    if (this.T && !o10) {
                        v.b(this.f17885s.f17473c);
                        if (this.f17885s.f17473c.position() == 0) {
                            return true;
                        }
                        this.T = false;
                    }
                    DecoderInputBuffer decoderInputBuffer = this.f17885s;
                    long j10 = decoderInputBuffer.f17475e;
                    g gVar = this.f17865d0;
                    if (gVar != null) {
                        j10 = gVar.d(this.B, decoderInputBuffer);
                        this.f17890u0 = Math.max(this.f17890u0, this.f17865d0.b(this.B));
                    }
                    long j11 = j10;
                    if (this.f17885s.g()) {
                        this.f17893w.add(Long.valueOf(j11));
                    }
                    if (this.f17898y0) {
                        this.f17891v.a(j11, this.B);
                        this.f17898y0 = false;
                    }
                    this.f17890u0 = Math.max(this.f17890u0, j11);
                    this.f17885s.n();
                    if (this.f17885s.f()) {
                        p0(this.f17885s);
                    }
                    H0(this.f17885s);
                    try {
                        if (o10) {
                            this.K.m(this.f17867f0, 0, this.f17885s.f17472b, j11, 0);
                        } else {
                            this.K.b(this.f17867f0, 0, this.f17885s.f17473c.limit(), j11, 0);
                        }
                        R0();
                        this.f17884r0 = true;
                        this.f17878o0 = 0;
                        this.B0.f65575c++;
                        return true;
                    } catch (MediaCodec.CryptoException e11) {
                        throw p(e11, this.B, s0.P(e11.getErrorCode()));
                    }
                }
            } catch (DecoderInputBuffer.InsufficientCapacityException e12) {
                z0(e12);
                L0(0);
                b0();
                return true;
            }
        }
    }

    private void b0() {
        try {
            this.K.flush();
        } finally {
            P0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean d1(v0 v0Var) {
        int i10 = v0Var.E;
        if (i10 != 0 && i10 != 2) {
            return false;
        }
        return true;
    }

    private List<k> e0(boolean z10) throws MediaCodecUtil.DecoderQueryException {
        List<k> k02 = k0(this.f17877o, this.B, z10);
        if (k02.isEmpty() && z10) {
            k02 = k0(this.f17877o, this.B, false);
            if (!k02.isEmpty()) {
                b7.q.i("MediaCodecRenderer", "Drm session requires secure decoder for " + this.B.f19157l + ", but no secure decoder available. Trying to proceed with " + k02 + ".");
            }
        }
        return k02;
    }

    private boolean e1(v0 v0Var) throws ExoPlaybackException {
        if (s0.f2506a >= 23 && this.K != null && this.f17882q0 != 3 && getState() != 0) {
            float i02 = i0(this.J, v0Var, v());
            float f10 = this.O;
            if (f10 == i02) {
                return true;
            }
            if (i02 == -1.0f) {
                W();
                return false;
            } else if (f10 == -1.0f && i02 <= this.f17881q) {
                return true;
            } else {
                Bundle bundle = new Bundle();
                bundle.putFloat("operating-rate", i02);
                this.K.a(bundle);
                this.O = i02;
            }
        }
        return true;
    }

    @RequiresApi(23)
    private void f1() throws ExoPlaybackException {
        try {
            this.F.setMediaDrmSession(l0(this.E).f66324b);
            T0(this.E);
            this.f17880p0 = 0;
            this.f17882q0 = 0;
        } catch (MediaCryptoException e10) {
            throw p(e10, this.B, AuthCode.StatusCode.PERMISSION_EXPIRED);
        }
    }

    @Nullable
    private s5.l l0(DrmSession drmSession) throws ExoPlaybackException {
        r5.b b10 = drmSession.b();
        if (b10 != null && !(b10 instanceof s5.l)) {
            throw p(new IllegalArgumentException("Expecting FrameworkCryptoConfig but found: " + b10), this.B, 6001);
        }
        return (s5.l) b10;
    }

    private boolean q0() {
        if (this.f17868g0 >= 0) {
            return true;
        }
        return false;
    }

    private void r0(v0 v0Var) {
        U();
        String str = v0Var.f19157l;
        if (!MimeTypes.AUDIO_AAC.equals(str) && !MimeTypes.AUDIO_MPEG.equals(str) && !MimeTypes.AUDIO_OPUS.equals(str)) {
            this.f17889u.x(1);
        } else {
            this.f17889u.x(32);
        }
        this.f17872k0 = true;
    }

    private void s0(k kVar, MediaCrypto mediaCrypto) throws Exception {
        float i02;
        boolean z10;
        String str = kVar.f17973a;
        int i10 = s0.f2506a;
        float f10 = -1.0f;
        if (i10 < 23) {
            i02 = -1.0f;
        } else {
            i02 = i0(this.J, this.B, v());
        }
        if (i02 > this.f17881q) {
            f10 = i02;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        j.a m02 = m0(kVar, this.B, mediaCrypto, f10);
        if (i10 >= 31) {
            a.a(m02, u());
        }
        try {
            p0.a("createCodec:" + str);
            this.K = this.f17875n.a(m02);
            p0.c();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            this.R = kVar;
            this.O = f10;
            this.L = this.B;
            this.S = K(str);
            this.T = L(str, this.L);
            this.U = Q(str);
            this.V = S(str);
            this.W = N(str);
            this.X = O(str);
            this.Y = M(str);
            this.Z = R(str, this.L);
            boolean z11 = false;
            if (!P(kVar) && !h0()) {
                z10 = false;
            } else {
                z10 = true;
            }
            this.f17864c0 = z10;
            if (this.K.d()) {
                this.f17876n0 = true;
                this.f17878o0 = 1;
                if (this.S != 0) {
                    z11 = true;
                }
                this.f17862a0 = z11;
            }
            if ("c2.android.mp3.decoder".equals(kVar.f17973a)) {
                this.f17865d0 = new g();
            }
            if (getState() == 2) {
                this.f17866e0 = SystemClock.elapsedRealtime() + 1000;
            }
            this.B0.f65573a++;
            A0(str, m02, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
        } catch (Throwable th2) {
            p0.c();
            throw th2;
        }
    }

    private boolean t0(long j10) {
        int size = this.f17893w.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f17893w.get(i10).longValue() == j10) {
                this.f17893w.remove(i10);
                return true;
            }
        }
        return false;
    }

    private static boolean u0(IllegalStateException illegalStateException) {
        if (s0.f2506a >= 21 && v0(illegalStateException)) {
            return true;
        }
        StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
        if (stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec")) {
            return true;
        }
        return false;
    }

    @RequiresApi(21)
    private static boolean v0(IllegalStateException illegalStateException) {
        return illegalStateException instanceof MediaCodec.CodecException;
    }

    @RequiresApi(21)
    private static boolean w0(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) illegalStateException).isRecoverable();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x004a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void y0(android.media.MediaCrypto r8, boolean r9) throws com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException {
        /*
            r7 = this;
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.k> r0 = r7.P
            r1 = 0
            if (r0 != 0) goto L3a
            java.util.List r0 = r7.e0(r9)     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L18
            java.util.ArrayDeque r2 = new java.util.ArrayDeque     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L18
            r2.<init>()     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L18
            r7.P = r2     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L18
            boolean r3 = r7.f17879p     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L18
            if (r3 == 0) goto L1a
            r2.addAll(r0)     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L18
            goto L2c
        L18:
            r8 = move-exception
            goto L2f
        L1a:
            boolean r2 = r0.isEmpty()     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L18
            if (r2 != 0) goto L2c
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.k> r2 = r7.P     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L18
            r3 = 0
            java.lang.Object r0 = r0.get(r3)     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L18
            com.google.android.exoplayer2.mediacodec.k r0 = (com.google.android.exoplayer2.mediacodec.k) r0     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L18
            r2.add(r0)     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L18
        L2c:
            r7.Q = r1     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L18
            goto L3a
        L2f:
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r0 = new com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException
            com.google.android.exoplayer2.v0 r1 = r7.B
            r2 = -49998(0xffffffffffff3cb2, float:NaN)
            r0.<init>(r1, r8, r9, r2)
            throw r0
        L3a:
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.k> r0 = r7.P
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto Lb6
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.k> r0 = r7.P
            java.lang.Object r0 = r0.peekFirst()
            com.google.android.exoplayer2.mediacodec.k r0 = (com.google.android.exoplayer2.mediacodec.k) r0
        L4a:
            com.google.android.exoplayer2.mediacodec.j r2 = r7.K
            if (r2 != 0) goto Lb3
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.k> r2 = r7.P
            java.lang.Object r2 = r2.peekFirst()
            com.google.android.exoplayer2.mediacodec.k r2 = (com.google.android.exoplayer2.mediacodec.k) r2
            boolean r3 = r7.Z0(r2)
            if (r3 != 0) goto L5d
            return
        L5d:
            r7.s0(r2, r8)     // Catch: java.lang.Exception -> L61
            goto L4a
        L61:
            r3 = move-exception
            java.lang.String r4 = "MediaCodecRenderer"
            if (r2 != r0) goto L76
            java.lang.String r3 = "Preferred decoder instantiation failed. Sleeping for 50ms then retrying."
            b7.q.i(r4, r3)     // Catch: java.lang.Exception -> L74
            r5 = 50
            java.lang.Thread.sleep(r5)     // Catch: java.lang.Exception -> L74
            r7.s0(r2, r8)     // Catch: java.lang.Exception -> L74
            goto L4a
        L74:
            r3 = move-exception
            goto L77
        L76:
            throw r3     // Catch: java.lang.Exception -> L74
        L77:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Failed to initialize decoder: "
            r5.append(r6)
            r5.append(r2)
            java.lang.String r5 = r5.toString()
            b7.q.j(r4, r5, r3)
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.k> r4 = r7.P
            r4.removeFirst()
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r4 = new com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException
            com.google.android.exoplayer2.v0 r5 = r7.B
            r4.<init>(r5, r3, r9, r2)
            r7.z0(r4)
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r2 = r7.Q
            if (r2 != 0) goto La1
            r7.Q = r4
            goto La7
        La1:
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r2 = com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException.b(r2, r4)
            r7.Q = r2
        La7:
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.k> r2 = r7.P
            boolean r2 = r2.isEmpty()
            if (r2 != 0) goto Lb0
            goto L4a
        Lb0:
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r8 = r7.Q
            throw r8
        Lb3:
            r7.P = r1
            return
        Lb6:
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r8 = new com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException
            com.google.android.exoplayer2.v0 r0 = r7.B
            r2 = -49999(0xffffffffffff3cb1, float:NaN)
            r8.<init>(r0, r1, r9, r2)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.y0(android.media.MediaCrypto, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void A() {
        try {
            U();
            N0();
        } finally {
            X0(null);
        }
    }

    protected abstract void A0(String str, j.a aVar, long j10, long j11);

    protected abstract void B0(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0081, code lost:
        if (X() == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0083, code lost:
        r7 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00b4, code lost:
        if (X() == false) goto L45;
     */
    @androidx.annotation.Nullable
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public r5.g C0(o5.b0 r12) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.C0(o5.b0):r5.g");
    }

    @Override // com.google.android.exoplayer2.f
    protected void D(v0[] v0VarArr, long j10, long j11) throws ExoPlaybackException {
        boolean z10 = true;
        if (this.D0 == -9223372036854775807L) {
            if (this.C0 != -9223372036854775807L) {
                z10 = false;
            }
            b7.a.g(z10);
            this.C0 = j10;
            U0(j11);
            return;
        }
        int i10 = this.E0;
        if (i10 == this.f17899z.length) {
            b7.q.i("MediaCodecRenderer", "Too many stream changes, so dropping offset: " + this.f17899z[this.E0 - 1]);
        } else {
            this.E0 = i10 + 1;
        }
        long[] jArr = this.f17897y;
        int i11 = this.E0;
        jArr[i11 - 1] = j10;
        this.f17899z[i11 - 1] = j11;
        this.A[i11 - 1] = this.f17890u0;
    }

    protected abstract void D0(v0 v0Var, @Nullable MediaFormat mediaFormat) throws ExoPlaybackException;

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void F0(long j10) {
        while (this.E0 != 0 && j10 >= this.A[0]) {
            this.C0 = this.f17897y[0];
            U0(this.f17899z[0]);
            int i10 = this.E0 - 1;
            this.E0 = i10;
            long[] jArr = this.f17897y;
            System.arraycopy(jArr, 1, jArr, 0, i10);
            long[] jArr2 = this.f17899z;
            System.arraycopy(jArr2, 1, jArr2, 0, this.E0);
            long[] jArr3 = this.A;
            System.arraycopy(jArr3, 1, jArr3, 0, this.E0);
            G0();
        }
    }

    protected abstract void H0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException;

    protected abstract r5.g J(k kVar, v0 v0Var, v0 v0Var2);

    protected abstract boolean J0(long j10, long j11, @Nullable j jVar, @Nullable ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, v0 v0Var) throws ExoPlaybackException;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.exoplayer2.drm.DrmSession, android.media.MediaCrypto] */
    public void N0() {
        try {
            j jVar = this.K;
            if (jVar != null) {
                jVar.release();
                this.B0.f65574b++;
                B0(this.R.f17973a);
            }
            this.K = null;
            try {
                MediaCrypto mediaCrypto = this.F;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th2) {
            this.K = null;
            try {
                MediaCrypto mediaCrypto2 = this.F;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th2;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void P0() {
        R0();
        S0();
        this.f17866e0 = -9223372036854775807L;
        this.f17886s0 = false;
        this.f17884r0 = false;
        this.f17862a0 = false;
        this.f17863b0 = false;
        this.f17870i0 = false;
        this.f17871j0 = false;
        this.f17893w.clear();
        this.f17890u0 = -9223372036854775807L;
        this.f17892v0 = -9223372036854775807L;
        g gVar = this.f17865d0;
        if (gVar != null) {
            gVar.c();
        }
        this.f17880p0 = 0;
        this.f17882q0 = 0;
        this.f17878o0 = this.f17876n0 ? 1 : 0;
    }

    @CallSuper
    protected void Q0() {
        P0();
        this.A0 = null;
        this.f17865d0 = null;
        this.P = null;
        this.R = null;
        this.L = null;
        this.M = null;
        this.N = false;
        this.f17888t0 = false;
        this.O = -1.0f;
        this.S = 0;
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = false;
        this.Z = false;
        this.f17864c0 = false;
        this.f17876n0 = false;
        this.f17878o0 = 0;
        this.G = false;
    }

    protected MediaCodecDecoderException T(Throwable th2, @Nullable k kVar) {
        return new MediaCodecDecoderException(th2, kVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void V0() {
        this.f17900z0 = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void W0(ExoPlaybackException exoPlaybackException) {
        this.A0 = exoPlaybackException;
    }

    protected boolean Z0(k kVar) {
        return true;
    }

    @Override // o5.o0
    public final int a(v0 v0Var) throws ExoPlaybackException {
        try {
            return c1(this.f17877o, v0Var);
        } catch (MediaCodecUtil.DecoderQueryException e10) {
            throw p(e10, v0Var, 4002);
        }
    }

    protected boolean a1() {
        return false;
    }

    protected boolean b1(v0 v0Var) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean c0() throws ExoPlaybackException {
        boolean d02 = d0();
        if (d02) {
            x0();
        }
        return d02;
    }

    protected abstract int c1(l lVar, v0 v0Var) throws MediaCodecUtil.DecoderQueryException;

    protected boolean d0() {
        boolean z10;
        if (this.K == null) {
            return false;
        }
        int i10 = this.f17882q0;
        if (i10 != 3 && !this.U && ((!this.V || this.f17888t0) && (!this.W || !this.f17886s0))) {
            if (i10 == 2) {
                int i11 = s0.f2506a;
                if (i11 >= 23) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                b7.a.g(z10);
                if (i11 >= 23) {
                    try {
                        f1();
                    } catch (ExoPlaybackException e10) {
                        b7.q.j("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e10);
                        N0();
                        return true;
                    }
                }
            }
            b0();
            return false;
        }
        N0();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final j f0() {
        return this.K;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final k g0() {
        return this.R;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void g1(long j10) throws ExoPlaybackException {
        v0 j11 = this.f17891v.j(j10);
        if (j11 == null && this.N) {
            j11 = this.f17891v.i();
        }
        if (j11 != null) {
            this.C = j11;
        } else if (!this.N || this.C == null) {
            return;
        }
        D0(this.C, this.M);
        this.N = false;
    }

    protected boolean h0() {
        return false;
    }

    protected abstract float i0(float f10, v0 v0Var, v0[] v0VarArr);

    @Override // com.google.android.exoplayer2.p1
    public boolean isEnded() {
        return this.f17896x0;
    }

    @Override // com.google.android.exoplayer2.p1
    public boolean isReady() {
        if (this.B != null && (w() || q0() || (this.f17866e0 != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f17866e0))) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final MediaFormat j0() {
        return this.M;
    }

    protected abstract List<k> k0(l lVar, v0 v0Var, boolean z10) throws MediaCodecUtil.DecoderQueryException;

    @Override // com.google.android.exoplayer2.p1
    public void l(float f10, float f11) throws ExoPlaybackException {
        this.I = f10;
        this.J = f11;
        e1(this.L);
    }

    protected abstract j.a m0(k kVar, v0 v0Var, @Nullable MediaCrypto mediaCrypto, float f10);

    /* JADX INFO: Access modifiers changed from: protected */
    public final long n0() {
        return this.D0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float o0() {
        return this.I;
    }

    @Override // com.google.android.exoplayer2.p1
    public void render(long j10, long j11) throws ExoPlaybackException {
        boolean z10 = false;
        if (this.f17900z0) {
            this.f17900z0 = false;
            I0();
        }
        ExoPlaybackException exoPlaybackException = this.A0;
        if (exoPlaybackException == null) {
            try {
                if (this.f17896x0) {
                    O0();
                    return;
                } else if (this.B == null && !L0(2)) {
                    return;
                } else {
                    x0();
                    if (this.f17872k0) {
                        p0.a("bypassRender");
                        while (I(j10, j11)) {
                        }
                        p0.c();
                    } else if (this.K != null) {
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        p0.a("drainAndFeed");
                        while (Y(j10, j11) && Y0(elapsedRealtime)) {
                        }
                        while (a0() && Y0(elapsedRealtime)) {
                        }
                        p0.c();
                    } else {
                        this.B0.f65576d += G(j10);
                        L0(1);
                    }
                    this.B0.c();
                    return;
                }
            } catch (IllegalStateException e10) {
                if (u0(e10)) {
                    z0(e10);
                    if (s0.f2506a >= 21 && w0(e10)) {
                        z10 = true;
                    }
                    if (z10) {
                        N0();
                    }
                    throw q(T(e10, g0()), this.B, z10, 4003);
                }
                throw e10;
            }
        }
        this.A0 = null;
        throw exoPlaybackException;
    }

    @Override // com.google.android.exoplayer2.f, o5.o0
    public final int supportsMixedMimeTypeAdaptation() {
        return 8;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void x() {
        this.B = null;
        this.C0 = -9223372036854775807L;
        U0(-9223372036854775807L);
        this.E0 = 0;
        d0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void x0() throws ExoPlaybackException {
        v0 v0Var;
        boolean z10;
        if (this.K == null && !this.f17872k0 && (v0Var = this.B) != null) {
            if (this.E == null && b1(v0Var)) {
                r0(this.B);
                return;
            }
            T0(this.E);
            String str = this.B.f19157l;
            DrmSession drmSession = this.D;
            if (drmSession != null) {
                if (this.F == null) {
                    s5.l l02 = l0(drmSession);
                    if (l02 == null) {
                        if (this.D.getError() == null) {
                            return;
                        }
                    } else {
                        try {
                            MediaCrypto mediaCrypto = new MediaCrypto(l02.f66323a, l02.f66324b);
                            this.F = mediaCrypto;
                            if (!l02.f66325c && mediaCrypto.requiresSecureDecoderComponent(str)) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            this.G = z10;
                        } catch (MediaCryptoException e10) {
                            throw p(e10, this.B, AuthCode.StatusCode.PERMISSION_EXPIRED);
                        }
                    }
                }
                if (s5.l.f66322d) {
                    int state = this.D.getState();
                    if (state != 1) {
                        if (state != 4) {
                            return;
                        }
                    } else {
                        DrmSession.DrmSessionException drmSessionException = (DrmSession.DrmSessionException) b7.a.e(this.D.getError());
                        throw p(drmSessionException, this.B, drmSessionException.f17563a);
                    }
                }
            }
            try {
                y0(this.F, this.G);
            } catch (DecoderInitializationException e11) {
                throw p(e11, this.B, 4001);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void y(boolean z10, boolean z11) throws ExoPlaybackException {
        this.B0 = new r5.e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void z(long j10, boolean z10) throws ExoPlaybackException {
        this.f17894w0 = false;
        this.f17896x0 = false;
        this.f17900z0 = false;
        if (this.f17872k0) {
            this.f17889u.b();
            this.f17887t.b();
            this.f17873l0 = false;
        } else {
            c0();
        }
        if (this.f17891v.l() > 0) {
            this.f17898y0 = true;
        }
        this.f17891v.c();
        int i10 = this.E0;
        if (i10 != 0) {
            U0(this.f17899z[i10 - 1]);
            this.C0 = this.f17897y[this.E0 - 1];
            this.E0 = 0;
        }
    }

    protected abstract void z0(Exception exc);

    /* loaded from: classes4.dex */
    public static class DecoderInitializationException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final String f17901a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f17902b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final k f17903c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final String f17904d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final DecoderInitializationException f17905e;

        public DecoderInitializationException(v0 v0Var, @Nullable Throwable th2, boolean z10, int i10) {
            this("Decoder init failed: [" + i10 + "], " + v0Var, th2, v0Var.f19157l, z10, null, d(i10), null);
        }

        private static String d(int i10) {
            String str;
            if (i10 < 0) {
                str = "neg_";
            } else {
                str = "";
            }
            return "com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_" + str + Math.abs(i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @CheckResult
        public DecoderInitializationException e(DecoderInitializationException decoderInitializationException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.f17901a, this.f17902b, this.f17903c, this.f17904d, decoderInitializationException);
        }

        @Nullable
        @RequiresApi(21)
        private static String f(@Nullable Throwable th2) {
            if (th2 instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th2).getDiagnosticInfo();
            }
            return null;
        }

        public DecoderInitializationException(v0 v0Var, @Nullable Throwable th2, boolean z10, k kVar) {
            this("Decoder init failed: " + kVar.f17973a + ", " + v0Var, th2, v0Var.f19157l, z10, kVar, s0.f2506a >= 21 ? f(th2) : null, null);
        }

        private DecoderInitializationException(String str, @Nullable Throwable th2, String str2, boolean z10, @Nullable k kVar, @Nullable String str3, @Nullable DecoderInitializationException decoderInitializationException) {
            super(str, th2);
            this.f17901a = str2;
            this.f17902b = z10;
            this.f17903c = kVar;
            this.f17904d = str3;
            this.f17905e = decoderInitializationException;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void B() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void C() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void G0() {
    }

    protected void O0() throws ExoPlaybackException {
    }

    protected void E0(long j10) {
    }

    protected void p0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
    }
}
