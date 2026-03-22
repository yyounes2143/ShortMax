package com.google.android.exoplayer2.audio;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.q;
import b7.s;
import b7.s0;
import b7.u;
import com.adjust.sdk.Constants;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.b;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.mediacodec.j;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.v0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.nio.ByteBuffer;
import java.util.List;
import o5.b0;
import o5.o0;
import q5.t;
/* compiled from: MediaCodecAudioRenderer.java */
/* loaded from: classes4.dex */
public class i extends MediaCodecRenderer implements s {
    private final Context G0;
    private final b.a H0;
    private final AudioSink I0;
    private int J0;
    private boolean K0;
    @Nullable
    private v0 L0;
    private long M0;
    private boolean N0;
    private boolean O0;
    private boolean P0;
    private boolean Q0;
    @Nullable
    private p1.a R0;

    /* compiled from: MediaCodecAudioRenderer.java */
    @RequiresApi(23)
    /* loaded from: classes4.dex */
    private static final class b {
        @DoNotInline
        public static void a(AudioSink audioSink, @Nullable Object obj) {
            audioSink.setPreferredDevice((AudioDeviceInfo) obj);
        }
    }

    /* compiled from: MediaCodecAudioRenderer.java */
    /* loaded from: classes4.dex */
    private final class c implements AudioSink.a {
        private c() {
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void a(boolean z10) {
            i.this.H0.C(z10);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void b(Exception exc) {
            q.d("MediaCodecAudioRenderer", "Audio sink error", exc);
            i.this.H0.l(exc);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void c(long j10) {
            i.this.H0.B(j10);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void d() {
            if (i.this.R0 != null) {
                i.this.R0.a();
            }
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void e() {
            if (i.this.R0 != null) {
                i.this.R0.b();
            }
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void onPositionDiscontinuity() {
            i.this.p1();
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void onUnderrun(int i10, long j10, long j11) {
            i.this.H0.D(i10, j10, j11);
        }
    }

    public i(Context context, j.b bVar, com.google.android.exoplayer2.mediacodec.l lVar, boolean z10, @Nullable Handler handler, @Nullable com.google.android.exoplayer2.audio.b bVar2, AudioSink audioSink) {
        super(1, bVar, lVar, z10, 44100.0f);
        this.G0 = context.getApplicationContext();
        this.I0 = audioSink;
        this.H0 = new b.a(handler, bVar2);
        audioSink.k(new c());
    }

    private static boolean j1(String str) {
        if (s0.f2506a < 24 && "OMX.SEC.aac.dec".equals(str) && Constants.REFERRER_API_SAMSUNG.equals(s0.f2508c)) {
            String str2 = s0.f2507b;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                return true;
            }
        }
        return false;
    }

    private static boolean k1() {
        if (s0.f2506a == 23) {
            String str = s0.f2509d;
            if ("ZTE B2017G".equals(str) || "AXON 7 mini".equals(str)) {
                return true;
            }
        }
        return false;
    }

    private int l1(com.google.android.exoplayer2.mediacodec.k kVar, v0 v0Var) {
        int i10;
        if ("OMX.google.raw.decoder".equals(kVar.f17973a) && (i10 = s0.f2506a) < 24 && (i10 != 23 || !s0.r0(this.G0))) {
            return -1;
        }
        return v0Var.f19158m;
    }

    private static List<com.google.android.exoplayer2.mediacodec.k> n1(com.google.android.exoplayer2.mediacodec.l lVar, v0 v0Var, boolean z10, AudioSink audioSink) throws MediaCodecUtil.DecoderQueryException {
        com.google.android.exoplayer2.mediacodec.k v10;
        String str = v0Var.f19157l;
        if (str == null) {
            return ImmutableList.A();
        }
        if (audioSink.a(v0Var) && (v10 = MediaCodecUtil.v()) != null) {
            return ImmutableList.B(v10);
        }
        List<com.google.android.exoplayer2.mediacodec.k> a10 = lVar.a(str, z10, false);
        String m10 = MediaCodecUtil.m(v0Var);
        if (m10 == null) {
            return ImmutableList.u(a10);
        }
        return ImmutableList.r().j(a10).j(lVar.a(m10, z10, false)).k();
    }

    private void q1() {
        long currentPositionUs = this.I0.getCurrentPositionUs(isEnded());
        if (currentPositionUs != Long.MIN_VALUE) {
            if (!this.O0) {
                currentPositionUs = Math.max(this.M0, currentPositionUs);
            }
            this.M0 = currentPositionUs;
            this.O0 = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void A() {
        try {
            super.A();
        } finally {
            if (this.P0) {
                this.P0 = false;
                this.I0.reset();
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void A0(String str, j.a aVar, long j10, long j11) {
        this.H0.m(str, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void B() {
        super.B();
        this.I0.play();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void B0(String str) {
        this.H0.n(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void C() {
        q1();
        this.I0.pause();
        super.C();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @Nullable
    public r5.g C0(b0 b0Var) throws ExoPlaybackException {
        r5.g C0 = super.C0(b0Var);
        this.H0.q(b0Var.f63093b, C0);
        return C0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void D0(v0 v0Var, @Nullable MediaFormat mediaFormat) throws ExoPlaybackException {
        int i10;
        int i11;
        v0 v0Var2 = this.L0;
        int[] iArr = null;
        if (v0Var2 != null) {
            v0Var = v0Var2;
        } else if (f0() != null) {
            if (MimeTypes.AUDIO_RAW.equals(v0Var.f19157l)) {
                i10 = v0Var.A;
            } else if (s0.f2506a >= 24 && mediaFormat.containsKey("pcm-encoding")) {
                i10 = mediaFormat.getInteger("pcm-encoding");
            } else if (mediaFormat.containsKey("v-bits-per-sample")) {
                i10 = s0.W(mediaFormat.getInteger("v-bits-per-sample"));
            } else {
                i10 = 2;
            }
            v0 E = new v0.b().e0(MimeTypes.AUDIO_RAW).Y(i10).N(v0Var.B).O(v0Var.C).H(mediaFormat.getInteger(com.ss.ttm.player.MediaFormat.KEY_CHANNEL_COUNT)).f0(mediaFormat.getInteger(com.ss.ttm.player.MediaFormat.KEY_SAMPLE_RATE)).E();
            if (this.K0 && E.f19170y == 6 && (i11 = v0Var.f19170y) < 6) {
                iArr = new int[i11];
                for (int i12 = 0; i12 < v0Var.f19170y; i12++) {
                    iArr[i12] = i12;
                }
            }
            v0Var = E;
        }
        try {
            this.I0.m(v0Var, 0, iArr);
        } catch (AudioSink.ConfigurationException e10) {
            throw p(e10, e10.f17215a, 5001);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void E0(long j10) {
        this.I0.e(j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void G0() {
        super.G0();
        this.I0.handleDiscontinuity();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void H0(DecoderInputBuffer decoderInputBuffer) {
        if (this.N0 && !decoderInputBuffer.g()) {
            if (Math.abs(decoderInputBuffer.f17475e - this.M0) > 500000) {
                this.M0 = decoderInputBuffer.f17475e;
            }
            this.N0 = false;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected r5.g J(com.google.android.exoplayer2.mediacodec.k kVar, v0 v0Var, v0 v0Var2) {
        int i10;
        r5.g e10 = kVar.e(v0Var, v0Var2);
        int i11 = e10.f65591e;
        if (l1(kVar, v0Var2) > this.J0) {
            i11 |= 64;
        }
        int i12 = i11;
        String str = kVar.f17973a;
        if (i12 != 0) {
            i10 = 0;
        } else {
            i10 = e10.f65590d;
        }
        return new r5.g(str, v0Var, v0Var2, i10, i12);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean J0(long j10, long j11, @Nullable com.google.android.exoplayer2.mediacodec.j jVar, @Nullable ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, v0 v0Var) throws ExoPlaybackException {
        b7.a.e(byteBuffer);
        if (this.L0 != null && (i11 & 2) != 0) {
            ((com.google.android.exoplayer2.mediacodec.j) b7.a.e(jVar)).g(i10, false);
            return true;
        } else if (z10) {
            if (jVar != null) {
                jVar.g(i10, false);
            }
            this.B0.f65578f += i12;
            this.I0.handleDiscontinuity();
            return true;
        } else {
            try {
                if (!this.I0.d(byteBuffer, j12, i12)) {
                    return false;
                }
                if (jVar != null) {
                    jVar.g(i10, false);
                }
                this.B0.f65577e += i12;
                return true;
            } catch (AudioSink.InitializationException e10) {
                throw q(e10, e10.f17218c, e10.f17217b, 5001);
            } catch (AudioSink.WriteException e11) {
                throw q(e11, v0Var, e11.f17222b, 5002);
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void O0() throws ExoPlaybackException {
        try {
            this.I0.playToEndOfStream();
        } catch (AudioSink.WriteException e10) {
            throw q(e10, e10.f17223c, e10.f17222b, 5002);
        }
    }

    @Override // b7.s
    public void b(k1 k1Var) {
        this.I0.b(k1Var);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean b1(v0 v0Var) {
        return this.I0.a(v0Var);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected int c1(com.google.android.exoplayer2.mediacodec.l lVar, v0 v0Var) throws MediaCodecUtil.DecoderQueryException {
        int i10;
        boolean z10;
        boolean z11;
        int i11;
        int i12 = 0;
        if (!u.l(v0Var.f19157l)) {
            return o0.k(0);
        }
        if (s0.f2506a >= 21) {
            i10 = 32;
        } else {
            i10 = 0;
        }
        boolean z12 = true;
        if (v0Var.E != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        boolean d12 = MediaCodecRenderer.d1(v0Var);
        int i13 = 8;
        int i14 = 4;
        if (d12 && this.I0.a(v0Var) && (!z10 || MediaCodecUtil.v() != null)) {
            return o0.h(4, 8, i10);
        }
        if (MimeTypes.AUDIO_RAW.equals(v0Var.f19157l) && !this.I0.a(v0Var)) {
            return o0.k(1);
        }
        if (!this.I0.a(s0.X(2, v0Var.f19170y, v0Var.f19171z))) {
            return o0.k(1);
        }
        List<com.google.android.exoplayer2.mediacodec.k> n12 = n1(lVar, v0Var, false, this.I0);
        if (n12.isEmpty()) {
            return o0.k(1);
        }
        if (!d12) {
            return o0.k(2);
        }
        com.google.android.exoplayer2.mediacodec.k kVar = n12.get(0);
        boolean m10 = kVar.m(v0Var);
        if (!m10) {
            for (int i15 = 1; i15 < n12.size(); i15++) {
                com.google.android.exoplayer2.mediacodec.k kVar2 = n12.get(i15);
                if (kVar2.m(v0Var)) {
                    z11 = false;
                    kVar = kVar2;
                    break;
                }
            }
        }
        z11 = true;
        z12 = m10;
        if (!z12) {
            i14 = 3;
        }
        if (z12 && kVar.p(v0Var)) {
            i13 = 16;
        }
        if (kVar.f17980h) {
            i11 = 64;
        } else {
            i11 = 0;
        }
        if (z11) {
            i12 = 128;
        }
        return o0.i(i14, i13, i10, i11, i12);
    }

    @Override // com.google.android.exoplayer2.p1, o5.o0
    public String getName() {
        return "MediaCodecAudioRenderer";
    }

    @Override // b7.s
    public k1 getPlaybackParameters() {
        return this.I0.getPlaybackParameters();
    }

    @Override // b7.s
    public long getPositionUs() {
        if (getState() == 2) {
            q1();
        }
        return this.M0;
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.m1.b
    public void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 6) {
                    switch (i10) {
                        case 9:
                            this.I0.f(((Boolean) obj).booleanValue());
                            return;
                        case 10:
                            this.I0.setAudioSessionId(((Integer) obj).intValue());
                            return;
                        case 11:
                            this.R0 = (p1.a) obj;
                            return;
                        case 12:
                            if (s0.f2506a >= 23) {
                                b.a(this.I0, obj);
                                return;
                            }
                            return;
                        default:
                            super.handleMessage(i10, obj);
                            return;
                    }
                }
                this.I0.j((t) obj);
                return;
            }
            this.I0.g((com.google.android.exoplayer2.audio.a) obj);
            return;
        }
        this.I0.setVolume(((Float) obj).floatValue());
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected float i0(float f10, v0 v0Var, v0[] v0VarArr) {
        int i10 = -1;
        for (v0 v0Var2 : v0VarArr) {
            int i11 = v0Var2.f19171z;
            if (i11 != -1) {
                i10 = Math.max(i10, i11);
            }
        }
        if (i10 == -1) {
            return -1.0f;
        }
        return f10 * i10;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.p1
    public boolean isEnded() {
        if (super.isEnded() && this.I0.isEnded()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.p1
    public boolean isReady() {
        if (!this.I0.hasPendingData() && !super.isReady()) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected List<com.google.android.exoplayer2.mediacodec.k> k0(com.google.android.exoplayer2.mediacodec.l lVar, v0 v0Var, boolean z10) throws MediaCodecUtil.DecoderQueryException {
        return MediaCodecUtil.u(n1(lVar, v0Var, z10, this.I0), v0Var);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected j.a m0(com.google.android.exoplayer2.mediacodec.k kVar, v0 v0Var, @Nullable MediaCrypto mediaCrypto, float f10) {
        v0 v0Var2;
        this.J0 = m1(kVar, v0Var, v());
        this.K0 = j1(kVar.f17973a);
        MediaFormat o12 = o1(v0Var, kVar.f17975c, this.J0, f10);
        if (MimeTypes.AUDIO_RAW.equals(kVar.f17974b) && !MimeTypes.AUDIO_RAW.equals(v0Var.f19157l)) {
            v0Var2 = v0Var;
        } else {
            v0Var2 = null;
        }
        this.L0 = v0Var2;
        return j.a.a(kVar, o12, v0Var, mediaCrypto);
    }

    protected int m1(com.google.android.exoplayer2.mediacodec.k kVar, v0 v0Var, v0[] v0VarArr) {
        int l12 = l1(kVar, v0Var);
        if (v0VarArr.length == 1) {
            return l12;
        }
        for (v0 v0Var2 : v0VarArr) {
            if (kVar.e(v0Var, v0Var2).f65590d != 0) {
                l12 = Math.max(l12, l1(kVar, v0Var2));
            }
        }
        return l12;
    }

    @SuppressLint({"InlinedApi"})
    protected MediaFormat o1(v0 v0Var, String str, int i10, float f10) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger(com.ss.ttm.player.MediaFormat.KEY_CHANNEL_COUNT, v0Var.f19170y);
        mediaFormat.setInteger(com.ss.ttm.player.MediaFormat.KEY_SAMPLE_RATE, v0Var.f19171z);
        b7.t.e(mediaFormat, v0Var.f19159n);
        b7.t.d(mediaFormat, "max-input-size", i10);
        int i11 = s0.f2506a;
        if (i11 >= 23) {
            mediaFormat.setInteger(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, 0);
            if (f10 != -1.0f && !k1()) {
                mediaFormat.setFloat("operating-rate", f10);
            }
        }
        if (i11 <= 28 && "audio/ac4".equals(v0Var.f19157l)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (i11 >= 24 && this.I0.l(s0.X(4, v0Var.f19170y, v0Var.f19171z)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        if (i11 >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        return mediaFormat;
    }

    @CallSuper
    protected void p1() {
        this.O0 = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void x() {
        this.P0 = true;
        try {
            this.I0.flush();
            try {
                super.x();
            } finally {
            }
        } catch (Throwable th2) {
            try {
                super.x();
                throw th2;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void y(boolean z10, boolean z11) throws ExoPlaybackException {
        super.y(z10, z11);
        this.H0.p(this.B0);
        if (r().f63122a) {
            this.I0.c();
        } else {
            this.I0.disableTunneling();
        }
        this.I0.i(u());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void z(long j10, boolean z10) throws ExoPlaybackException {
        super.z(j10, z10);
        if (this.Q0) {
            this.I0.h();
        } else {
            this.I0.flush();
        }
        this.M0 = j10;
        this.N0 = true;
        this.O0 = true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void z0(Exception exc) {
        q.d("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.H0.k(exc);
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.p1
    @Nullable
    public s getMediaClock() {
        return this;
    }
}
