package io.bidmachine.media3.exoplayer.audio;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import ao.r0;
import cn.m0;
import cn.r;
import com.adjust.sdk.Constants;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttvideoengine.ITTVideoEngineInternal;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import gn.c0;
import gn.e0;
import io.bidmachine.media3.common.a;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.ExoPlaybackException;
import io.bidmachine.media3.exoplayer.audio.AudioSink;
import io.bidmachine.media3.exoplayer.audio.e;
import io.bidmachine.media3.exoplayer.h2;
import io.bidmachine.media3.exoplayer.i2;
import io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer;
import io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil;
import io.bidmachine.media3.exoplayer.mediacodec.h;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import java.util.Objects;
import zm.u;
import zm.v;
/* compiled from: MediaCodecAudioRenderer.java */
/* loaded from: classes8.dex */
public class m extends MediaCodecRenderer implements e0 {
    private final Context F0;
    private final e.a G0;
    private final AudioSink H0;
    @Nullable
    private final pn.c I0;
    private int J0;
    private boolean K0;
    private boolean L0;
    @Nullable
    private io.bidmachine.media3.common.a M0;
    @Nullable
    private io.bidmachine.media3.common.a N0;
    private long O0;
    private boolean P0;
    private boolean Q0;
    private boolean R0;
    private int S0;
    private boolean T0;
    private long U0;
    private boolean V0;

    /* compiled from: MediaCodecAudioRenderer.java */
    @RequiresApi(23)
    /* loaded from: classes8.dex */
    private static final class b {
        public static void a(AudioSink audioSink, @Nullable Object obj) {
            audioSink.setPreferredDevice((AudioDeviceInfo) obj);
        }
    }

    /* compiled from: MediaCodecAudioRenderer.java */
    /* loaded from: classes8.dex */
    private final class c implements AudioSink.b {
        private c() {
        }

        @Override // io.bidmachine.media3.exoplayer.audio.AudioSink.b
        public void a(boolean z10) {
            m.this.G0.I(z10);
        }

        @Override // io.bidmachine.media3.exoplayer.audio.AudioSink.b
        public void b(Exception exc) {
            r.d("MediaCodecAudioRenderer", "Audio sink error", exc);
            m.this.G0.n(exc);
        }

        @Override // io.bidmachine.media3.exoplayer.audio.AudioSink.b
        public void c(long j10) {
            m.this.G0.H(j10);
        }

        @Override // io.bidmachine.media3.exoplayer.audio.AudioSink.b
        public void d() {
            h2.a J0 = m.this.J0();
            if (J0 != null) {
                J0.a();
            }
        }

        @Override // io.bidmachine.media3.exoplayer.audio.AudioSink.b
        public void e() {
            h2.a J0 = m.this.J0();
            if (J0 != null) {
                J0.b();
            }
        }

        @Override // io.bidmachine.media3.exoplayer.audio.AudioSink.b
        public void f() {
            m.this.R0 = true;
        }

        @Override // io.bidmachine.media3.exoplayer.audio.AudioSink.b
        public void g() {
            m.this.S();
        }

        @Override // io.bidmachine.media3.exoplayer.audio.AudioSink.b
        public void l(AudioSink.a aVar) {
            m.this.G0.p(aVar);
        }

        @Override // io.bidmachine.media3.exoplayer.audio.AudioSink.b
        public void n(AudioSink.a aVar) {
            m.this.G0.o(aVar);
        }

        @Override // io.bidmachine.media3.exoplayer.audio.AudioSink.b
        public void onPositionDiscontinuity() {
            m.this.V1();
        }

        @Override // io.bidmachine.media3.exoplayer.audio.AudioSink.b
        public void onUnderrun(int i10, long j10, long j11) {
            m.this.G0.J(i10, j10, j11);
        }
    }

    public m(Context context, h.b bVar, io.bidmachine.media3.exoplayer.mediacodec.l lVar, boolean z10, @Nullable Handler handler, @Nullable e eVar, AudioSink audioSink) {
        this(context, bVar, lVar, z10, handler, eVar, audioSink, m0.f3614a >= 35 ? new pn.c() : null);
    }

    private static boolean N1(String str) {
        if (m0.f3614a < 24 && "OMX.SEC.aac.dec".equals(str) && Constants.REFERRER_API_SAMSUNG.equals(Build.MANUFACTURER)) {
            String str2 = Build.DEVICE;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                return true;
            }
        }
        return false;
    }

    private static boolean O1(String str) {
        if (!str.equals("OMX.google.opus.decoder") && !str.equals("c2.android.opus.decoder") && !str.equals("OMX.google.vorbis.decoder") && !str.equals("c2.android.vorbis.decoder")) {
            return false;
        }
        return true;
    }

    private static boolean P1() {
        if (m0.f3614a == 23) {
            String str = Build.MODEL;
            if ("ZTE B2017G".equals(str) || "AXON 7 mini".equals(str)) {
                return true;
            }
        }
        return false;
    }

    private int Q1(io.bidmachine.media3.common.a aVar) {
        int i10;
        d j10 = this.H0.j(aVar);
        if (!j10.f55522a) {
            return 0;
        }
        if (j10.f55523b) {
            i10 = 1536;
        } else {
            i10 = 512;
        }
        if (j10.f55524c) {
            return i10 | 2048;
        }
        return i10;
    }

    private int R1(io.bidmachine.media3.exoplayer.mediacodec.j jVar, io.bidmachine.media3.common.a aVar) {
        int i10;
        if ("OMX.google.raw.decoder".equals(jVar.f56575a) && (i10 = m0.f3614a) < 24 && (i10 != 23 || !m0.K0(this.F0))) {
            return -1;
        }
        return aVar.f55175p;
    }

    private static List<io.bidmachine.media3.exoplayer.mediacodec.j> T1(io.bidmachine.media3.exoplayer.mediacodec.l lVar, io.bidmachine.media3.common.a aVar, boolean z10, AudioSink audioSink) throws MediaCodecUtil.DecoderQueryException {
        io.bidmachine.media3.exoplayer.mediacodec.j p10;
        if (aVar.f55174o == null) {
            return ImmutableList.A();
        }
        if (audioSink.a(aVar) && (p10 = MediaCodecUtil.p()) != null) {
            return ImmutableList.B(p10);
        }
        return MediaCodecUtil.m(lVar, aVar, z10, false);
    }

    private void W1(int i10) {
        pn.c cVar;
        this.H0.setAudioSessionId(i10);
        if (m0.f3614a >= 35 && (cVar = this.I0) != null) {
            cVar.e(i10);
        }
    }

    private void X1() {
        io.bidmachine.media3.exoplayer.mediacodec.h w02 = w0();
        if (w02 != null && m0.f3614a >= 35) {
            Bundle bundle = new Bundle();
            bundle.putInt("importance", Math.max(0, -this.S0));
            w02.a(bundle);
        }
    }

    private void Y1() {
        long currentPositionUs = this.H0.getCurrentPositionUs(isEnded());
        if (currentPositionUs != Long.MIN_VALUE) {
            if (!this.P0) {
                currentPositionUs = Math.max(this.O0, currentPositionUs);
            }
            this.O0 = currentPositionUs;
            this.P0 = false;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected float A0(float f10, io.bidmachine.media3.common.a aVar, io.bidmachine.media3.common.a[] aVarArr) {
        int i10 = -1;
        for (io.bidmachine.media3.common.a aVar2 : aVarArr) {
            int i11 = aVar2.F;
            if (i11 != -1) {
                i10 = Math.max(i10, i11);
            }
        }
        if (i10 == -1) {
            return -1.0f;
        }
        return f10 * i10;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected List<io.bidmachine.media3.exoplayer.mediacodec.j> C0(io.bidmachine.media3.exoplayer.mediacodec.l lVar, io.bidmachine.media3.common.a aVar, boolean z10) throws MediaCodecUtil.DecoderQueryException {
        return MediaCodecUtil.n(T1(lVar, aVar, z10, this.H0), aVar);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean C1(io.bidmachine.media3.common.a aVar) {
        if (E().f52457a != 0) {
            int Q1 = Q1(aVar);
            if ((Q1 & 512) != 0) {
                if (E().f52457a != 2 && (Q1 & 1024) == 0) {
                    if (aVar.H == 0 && aVar.I == 0) {
                        return true;
                    }
                } else {
                    return true;
                }
            }
        }
        return this.H0.a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    public long D0(long j10, long j11, boolean z10) {
        float f10;
        if (this.U0 == -9223372036854775807L) {
            return super.D0(j10, j11, z10);
        }
        long g10 = this.H0.g();
        if (!this.V0 && g10 == -9223372036854775807L) {
            return super.D0(j10, j11, z10);
        }
        long j12 = this.U0 - j10;
        if (g10 != -9223372036854775807L) {
            j12 = Math.min(g10, j12);
        }
        float f11 = (float) j12;
        if (getPlaybackParameters() != null) {
            f10 = getPlaybackParameters().f72208a;
        } else {
            f10 = 1.0f;
        }
        long j13 = (f11 / f10) / 2.0f;
        if (this.T0) {
            j13 -= m0.S0(D().elapsedRealtime()) - j11;
        }
        return Math.max(10000L, j13);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected int D1(io.bidmachine.media3.exoplayer.mediacodec.l lVar, io.bidmachine.media3.common.a aVar) throws MediaCodecUtil.DecoderQueryException {
        boolean z10;
        int i10;
        boolean z11;
        int i11;
        int i12 = 0;
        if (!u.o(aVar.f55174o)) {
            return i2.k(0);
        }
        boolean z12 = true;
        if (aVar.N != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        boolean E1 = MediaCodecRenderer.E1(aVar);
        int i13 = 8;
        int i14 = 4;
        if (E1 && (!z10 || MediaCodecUtil.p() != null)) {
            int Q1 = Q1(aVar);
            if (this.H0.a(aVar)) {
                return i2.m(4, 8, 32, Q1);
            }
            i10 = Q1;
        } else {
            i10 = 0;
        }
        if (MimeTypes.AUDIO_RAW.equals(aVar.f55174o) && !this.H0.a(aVar)) {
            return i2.k(1);
        }
        if (!this.H0.a(m0.j0(2, aVar.E, aVar.F))) {
            return i2.k(1);
        }
        List<io.bidmachine.media3.exoplayer.mediacodec.j> T1 = T1(lVar, aVar, false, this.H0);
        if (T1.isEmpty()) {
            return i2.k(1);
        }
        if (!E1) {
            return i2.k(2);
        }
        io.bidmachine.media3.exoplayer.mediacodec.j jVar = T1.get(0);
        boolean o10 = jVar.o(aVar);
        if (!o10) {
            for (int i15 = 1; i15 < T1.size(); i15++) {
                io.bidmachine.media3.exoplayer.mediacodec.j jVar2 = T1.get(i15);
                if (jVar2.o(aVar)) {
                    z11 = false;
                    jVar = jVar2;
                    break;
                }
            }
        }
        z11 = true;
        z12 = o10;
        if (!z12) {
            i14 = 3;
        }
        if (z12 && jVar.r(aVar)) {
            i13 = 16;
        }
        if (jVar.f56582h) {
            i11 = 64;
        } else {
            i11 = 0;
        }
        if (z11) {
            i12 = 128;
        }
        return i2.q(i14, i13, 32, i11, i12, i10);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected h.a F0(io.bidmachine.media3.exoplayer.mediacodec.j jVar, io.bidmachine.media3.common.a aVar, @Nullable MediaCrypto mediaCrypto, float f10) {
        io.bidmachine.media3.common.a aVar2;
        this.J0 = S1(jVar, aVar, J());
        this.K0 = N1(jVar.f56575a);
        this.L0 = O1(jVar.f56575a);
        MediaFormat U1 = U1(aVar, jVar.f56577c, this.J0, f10);
        if (MimeTypes.AUDIO_RAW.equals(jVar.f56576b) && !MimeTypes.AUDIO_RAW.equals(aVar.f55174o)) {
            aVar2 = aVar;
        } else {
            aVar2 = null;
        }
        this.N0 = aVar2;
        return h.a.a(jVar, U1, aVar, mediaCrypto, this.I0);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void K0(DecoderInputBuffer decoderInputBuffer) {
        io.bidmachine.media3.common.a aVar;
        if (m0.f3614a >= 29 && (aVar = decoderInputBuffer.f55343b) != null && Objects.equals(aVar.f55174o, MimeTypes.AUDIO_OPUS) && Q0()) {
            ByteBuffer byteBuffer = (ByteBuffer) cn.a.e(decoderInputBuffer.f55348g);
            int i10 = ((io.bidmachine.media3.common.a) cn.a.e(decoderInputBuffer.f55343b)).H;
            if (byteBuffer.remaining() == 8) {
                this.H0.q(i10, (int) ((byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong() * 48000) / 1000000000));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h
    public void N() {
        this.Q0 = true;
        this.M0 = null;
        this.U0 = -9223372036854775807L;
        this.V0 = false;
        try {
            this.H0.flush();
            try {
                super.N();
            } finally {
            }
        } catch (Throwable th2) {
            try {
                super.N();
                throw th2;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h
    public void O(boolean z10, boolean z11) throws ExoPlaybackException {
        super.O(z10, z11);
        this.G0.t(this.f56499z0);
        if (E().f52458b) {
            this.H0.c();
        } else {
            this.H0.disableTunneling();
        }
        this.H0.l(I());
        this.H0.p(D());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h
    public void Q(long j10, boolean z10) throws ExoPlaybackException {
        super.Q(j10, z10);
        this.H0.flush();
        this.O0 = j10;
        this.U0 = -9223372036854775807L;
        this.V0 = false;
        this.R0 = false;
        this.P0 = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.h
    public void R() {
        pn.c cVar;
        this.H0.release();
        if (m0.f3614a >= 35 && (cVar = this.I0) != null) {
            cVar.c();
        }
    }

    protected int S1(io.bidmachine.media3.exoplayer.mediacodec.j jVar, io.bidmachine.media3.common.a aVar, io.bidmachine.media3.common.a[] aVarArr) {
        int R1 = R1(jVar, aVar);
        if (aVarArr.length == 1) {
            return R1;
        }
        for (io.bidmachine.media3.common.a aVar2 : aVarArr) {
            if (jVar.e(aVar, aVar2).f52437d != 0) {
                R1 = Math.max(R1, R1(jVar, aVar2));
            }
        }
        return R1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h
    public void T() {
        this.R0 = false;
        this.U0 = -9223372036854775807L;
        this.V0 = false;
        try {
            super.T();
        } finally {
            if (this.Q0) {
                this.Q0 = false;
                this.H0.reset();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h
    public void U() {
        super.U();
        this.H0.play();
        this.T0 = true;
    }

    @SuppressLint({"InlinedApi"})
    protected MediaFormat U1(io.bidmachine.media3.common.a aVar, String str, int i10, float f10) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger(com.ss.ttm.player.MediaFormat.KEY_CHANNEL_COUNT, aVar.E);
        mediaFormat.setInteger(com.ss.ttm.player.MediaFormat.KEY_SAMPLE_RATE, aVar.F);
        cn.u.e(mediaFormat, aVar.f55177r);
        cn.u.d(mediaFormat, "max-input-size", i10);
        int i11 = m0.f3614a;
        if (i11 >= 23) {
            mediaFormat.setInteger(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, 0);
            if (f10 != -1.0f && !P1()) {
                mediaFormat.setFloat("operating-rate", f10);
            }
        }
        if (i11 <= 28 && "audio/ac4".equals(aVar.f55174o)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (i11 >= 24 && this.H0.m(m0.j0(4, aVar.E, aVar.F)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        if (i11 >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        if (i11 >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.S0));
        }
        return mediaFormat;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h
    public void V() {
        Y1();
        this.T0 = false;
        this.H0.pause();
        super.V();
    }

    @CallSuper
    protected void V1() {
        this.P0 = true;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void X0(Exception exc) {
        r.d("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.G0.m(exc);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void Y0(String str, h.a aVar, long j10, long j11) {
        this.G0.q(str, j10, j11);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void Z0(String str) {
        this.G0.r(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    @Nullable
    public gn.c a1(c0 c0Var) throws ExoPlaybackException {
        io.bidmachine.media3.common.a aVar = (io.bidmachine.media3.common.a) cn.a.e(c0Var.f52440b);
        this.M0 = aVar;
        gn.c a12 = super.a1(c0Var);
        this.G0.u(aVar, a12);
        return a12;
    }

    @Override // gn.e0
    public void b(v vVar) {
        this.H0.b(vVar);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void b1(io.bidmachine.media3.common.a aVar, @Nullable MediaFormat mediaFormat) throws ExoPlaybackException {
        int i10;
        int i11;
        io.bidmachine.media3.common.a aVar2 = this.N0;
        int[] iArr = null;
        if (aVar2 != null) {
            aVar = aVar2;
        } else if (w0() != null) {
            cn.a.e(mediaFormat);
            if (MimeTypes.AUDIO_RAW.equals(aVar.f55174o)) {
                i10 = aVar.G;
            } else if (m0.f3614a >= 24 && mediaFormat.containsKey("pcm-encoding")) {
                i10 = mediaFormat.getInteger("pcm-encoding");
            } else if (mediaFormat.containsKey("v-bits-per-sample")) {
                i10 = m0.i0(mediaFormat.getInteger("v-bits-per-sample"));
            } else {
                i10 = 2;
            }
            io.bidmachine.media3.common.a N = new a.b().u0(MimeTypes.AUDIO_RAW).o0(i10).Z(aVar.H).a0(aVar.I).n0(aVar.f55171l).X(aVar.f55172m).f0(aVar.f55160a).h0(aVar.f55161b).i0(aVar.f55162c).j0(aVar.f55163d).w0(aVar.f55164e).s0(aVar.f55165f).R(mediaFormat.getInteger(com.ss.ttm.player.MediaFormat.KEY_CHANNEL_COUNT)).v0(mediaFormat.getInteger(com.ss.ttm.player.MediaFormat.KEY_SAMPLE_RATE)).N();
            if (this.K0 && N.E == 6 && (i11 = aVar.E) < 6) {
                iArr = new int[i11];
                for (int i12 = 0; i12 < aVar.E; i12++) {
                    iArr[i12] = i12;
                }
            } else if (this.L0) {
                iArr = r0.a(N.E);
            }
            aVar = N;
        }
        try {
            if (m0.f3614a >= 29) {
                if (Q0() && E().f52457a != 0) {
                    this.H0.h(E().f52457a);
                } else {
                    this.H0.h(0);
                }
            }
            this.H0.o(aVar, 0, iArr);
        } catch (AudioSink.ConfigurationException e10) {
            throw B(e10, e10.f55397a, 5001);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void c1(long j10) {
        this.H0.e(j10);
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected gn.c e0(io.bidmachine.media3.exoplayer.mediacodec.j jVar, io.bidmachine.media3.common.a aVar, io.bidmachine.media3.common.a aVar2) {
        int i10;
        gn.c e10 = jVar.e(aVar, aVar2);
        int i11 = e10.f52438e;
        if (R0(aVar2)) {
            i11 |= 32768;
        }
        if (R1(jVar, aVar2) > this.J0) {
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
        this.H0.handleDiscontinuity();
    }

    @Override // io.bidmachine.media3.exoplayer.h2, io.bidmachine.media3.exoplayer.i2
    public String getName() {
        return "MediaCodecAudioRenderer";
    }

    @Override // gn.e0
    public v getPlaybackParameters() {
        return this.H0.getPlaybackParameters();
    }

    @Override // gn.e0
    public long getPositionUs() {
        if (getState() == 2) {
            Y1();
        }
        return this.O0;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h, io.bidmachine.media3.exoplayer.f2.b
    public void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 6) {
                    if (i10 != 12) {
                        if (i10 != 16) {
                            if (i10 != 9) {
                                if (i10 != 10) {
                                    super.handleMessage(i10, obj);
                                    return;
                                } else {
                                    W1(((Integer) cn.a.e(obj)).intValue());
                                    return;
                                }
                            }
                            this.H0.f(((Boolean) cn.a.e(obj)).booleanValue());
                            return;
                        }
                        this.S0 = ((Integer) cn.a.e(obj)).intValue();
                        X1();
                        return;
                    } else if (m0.f3614a >= 23) {
                        b.a(this.H0, obj);
                        return;
                    } else {
                        return;
                    }
                }
                this.H0.k((zm.d) cn.a.e((zm.d) obj));
                return;
            }
            this.H0.n((zm.c) cn.a.e((zm.c) obj));
            return;
        }
        this.H0.setVolume(((Float) cn.a.e(obj)).floatValue());
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean i1(long j10, long j11, @Nullable io.bidmachine.media3.exoplayer.mediacodec.h hVar, @Nullable ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, io.bidmachine.media3.common.a aVar) throws ExoPlaybackException {
        int i13;
        int i14;
        cn.a.e(byteBuffer);
        this.U0 = -9223372036854775807L;
        if (this.N0 != null && (i11 & 2) != 0) {
            ((io.bidmachine.media3.exoplayer.mediacodec.h) cn.a.e(hVar)).g(i10, false);
            return true;
        } else if (z10) {
            if (hVar != null) {
                hVar.g(i10, false);
            }
            this.f56499z0.f52426f += i12;
            this.H0.handleDiscontinuity();
            return true;
        } else {
            try {
                if (this.H0.d(byteBuffer, j12, i12)) {
                    if (hVar != null) {
                        hVar.g(i10, false);
                    }
                    this.f56499z0.f52425e += i12;
                    return true;
                }
                this.U0 = j12;
                return false;
            } catch (AudioSink.InitializationException e10) {
                io.bidmachine.media3.common.a aVar2 = this.M0;
                boolean z12 = e10.f55399b;
                if (Q0() && E().f52457a != 0) {
                    i14 = ITTVideoEngineInternal.PLAYER_OPTION_EXO_CODEC_ASYNC_INIT_ENABLE;
                } else {
                    i14 = 5001;
                }
                throw C(e10, aVar2, z12, i14);
            } catch (AudioSink.WriteException e11) {
                boolean z13 = e11.f55404b;
                if (Q0() && E().f52457a != 0) {
                    i13 = 5003;
                } else {
                    i13 = 5002;
                }
                throw C(e11, aVar, z13, i13);
            }
        }
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h2
    public boolean isEnded() {
        if (super.isEnded() && this.H0.isEnded()) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer, io.bidmachine.media3.exoplayer.h2
    public boolean isReady() {
        if (!this.H0.hasPendingData() && !super.isReady()) {
            return false;
        }
        return true;
    }

    @Override // gn.e0
    public boolean n() {
        boolean z10 = this.R0;
        this.R0 = false;
        return z10;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void n1() throws ExoPlaybackException {
        int i10;
        try {
            this.H0.playToEndOfStream();
            if (E0() != -9223372036854775807L) {
                this.U0 = E0();
            }
            this.V0 = true;
        } catch (AudioSink.WriteException e10) {
            io.bidmachine.media3.common.a aVar = e10.f55405c;
            boolean z10 = e10.f55404b;
            if (Q0()) {
                i10 = 5003;
            } else {
                i10 = 5002;
            }
            throw C(e10, aVar, z10, i10);
        }
    }

    public m(Context context, h.b bVar, io.bidmachine.media3.exoplayer.mediacodec.l lVar, boolean z10, @Nullable Handler handler, @Nullable e eVar, AudioSink audioSink, @Nullable pn.c cVar) {
        super(1, bVar, lVar, z10, 44100.0f);
        this.F0 = context.getApplicationContext();
        this.H0 = audioSink;
        this.I0 = cVar;
        this.S0 = -1000;
        this.G0 = new e.a(handler, eVar);
        this.U0 = -9223372036854775807L;
        audioSink.i(new c());
    }

    @Override // io.bidmachine.media3.exoplayer.h, io.bidmachine.media3.exoplayer.h2
    @Nullable
    public e0 getMediaClock() {
        return this;
    }
}
