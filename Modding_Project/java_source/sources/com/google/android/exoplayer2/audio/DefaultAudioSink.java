package com.google.android.exoplayer2.audio;

import android.annotation.SuppressLint;
import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.DoNotInline;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.q;
import b7.s0;
import b7.u;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.DefaultAudioSink;
import com.google.android.exoplayer2.audio.d;
import com.google.android.exoplayer2.audio.g;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.v0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import p5.t3;
import q5.f0;
import q5.g0;
import q5.t;
/* loaded from: classes4.dex */
public final class DefaultAudioSink implements AudioSink {

    /* renamed from: e0  reason: collision with root package name */
    public static boolean f17224e0 = false;

    /* renamed from: f0  reason: collision with root package name */
    private static final Object f17225f0 = new Object();
    @Nullable
    @GuardedBy("releaseExecutorLock")

    /* renamed from: g0  reason: collision with root package name */
    private static ExecutorService f17226g0;
    @GuardedBy("releaseExecutorLock")

    /* renamed from: h0  reason: collision with root package name */
    private static int f17227h0;
    @Nullable
    private ByteBuffer A;
    private int B;
    private long C;
    private long D;
    private long E;
    private long F;
    private int G;
    private boolean H;
    private boolean I;
    private long J;
    private float K;
    private AudioProcessor[] L;
    private ByteBuffer[] M;
    @Nullable
    private ByteBuffer N;
    private int O;
    @Nullable
    private ByteBuffer P;
    private byte[] Q;
    private int R;
    private int S;
    private boolean T;
    private boolean U;
    private boolean V;
    private boolean W;
    private int X;
    private t Y;
    @Nullable
    private d Z;

    /* renamed from: a  reason: collision with root package name */
    private final q5.h f17228a;

    /* renamed from: a0  reason: collision with root package name */
    private boolean f17229a0;

    /* renamed from: b  reason: collision with root package name */
    private final q5.i f17230b;

    /* renamed from: b0  reason: collision with root package name */
    private long f17231b0;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f17232c;

    /* renamed from: c0  reason: collision with root package name */
    private boolean f17233c0;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.audio.f f17234d;

    /* renamed from: d0  reason: collision with root package name */
    private boolean f17235d0;

    /* renamed from: e  reason: collision with root package name */
    private final n f17236e;

    /* renamed from: f  reason: collision with root package name */
    private final AudioProcessor[] f17237f;

    /* renamed from: g  reason: collision with root package name */
    private final AudioProcessor[] f17238g;

    /* renamed from: h  reason: collision with root package name */
    private final b7.g f17239h;

    /* renamed from: i  reason: collision with root package name */
    private final com.google.android.exoplayer2.audio.d f17240i;

    /* renamed from: j  reason: collision with root package name */
    private final ArrayDeque<i> f17241j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f17242k;

    /* renamed from: l  reason: collision with root package name */
    private final int f17243l;

    /* renamed from: m  reason: collision with root package name */
    private l f17244m;

    /* renamed from: n  reason: collision with root package name */
    private final j<AudioSink.InitializationException> f17245n;

    /* renamed from: o  reason: collision with root package name */
    private final j<AudioSink.WriteException> f17246o;

    /* renamed from: p  reason: collision with root package name */
    private final e f17247p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private final k.a f17248q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private t3 f17249r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private AudioSink.a f17250s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private g f17251t;

    /* renamed from: u  reason: collision with root package name */
    private g f17252u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private AudioTrack f17253v;

    /* renamed from: w  reason: collision with root package name */
    private com.google.android.exoplayer2.audio.a f17254w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private i f17255x;

    /* renamed from: y  reason: collision with root package name */
    private i f17256y;

    /* renamed from: z  reason: collision with root package name */
    private k1 f17257z;

    /* loaded from: classes4.dex */
    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(23)
    /* loaded from: classes4.dex */
    public static final class b {
        @DoNotInline
        public static void a(AudioTrack audioTrack, @Nullable d dVar) {
            AudioDeviceInfo audioDeviceInfo;
            if (dVar == null) {
                audioDeviceInfo = null;
            } else {
                audioDeviceInfo = dVar.f17258a;
            }
            audioTrack.setPreferredDevice(audioDeviceInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(31)
    /* loaded from: classes4.dex */
    public static final class c {
        @DoNotInline
        public static void a(AudioTrack audioTrack, t3 t3Var) {
            LogSessionId logSessionId;
            boolean equals;
            LogSessionId a10 = t3Var.a();
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            equals = a10.equals(logSessionId);
            if (!equals) {
                audioTrack.setLogSessionId(a10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(23)
    /* loaded from: classes4.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final AudioDeviceInfo f17258a;

        public d(AudioDeviceInfo audioDeviceInfo) {
            this.f17258a = audioDeviceInfo;
        }
    }

    /* loaded from: classes4.dex */
    public interface e {

        /* renamed from: a  reason: collision with root package name */
        public static final e f17259a = new g.a().g();

        int a(int i10, int i11, int i12, int i13, int i14, double d10);
    }

    /* loaded from: classes4.dex */
    public static final class f {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private q5.i f17261b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f17262c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f17263d;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        k.a f17266g;

        /* renamed from: a  reason: collision with root package name */
        private q5.h f17260a = q5.h.f65092c;

        /* renamed from: e  reason: collision with root package name */
        private int f17264e = 0;

        /* renamed from: f  reason: collision with root package name */
        e f17265f = e.f17259a;

        public DefaultAudioSink f() {
            if (this.f17261b == null) {
                this.f17261b = new h(new AudioProcessor[0]);
            }
            return new DefaultAudioSink(this);
        }

        public f g(q5.h hVar) {
            b7.a.e(hVar);
            this.f17260a = hVar;
            return this;
        }

        public f h(boolean z10) {
            this.f17263d = z10;
            return this;
        }

        public f i(boolean z10) {
            this.f17262c = z10;
            return this;
        }

        public f j(int i10) {
            this.f17264e = i10;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final v0 f17267a;

        /* renamed from: b  reason: collision with root package name */
        public final int f17268b;

        /* renamed from: c  reason: collision with root package name */
        public final int f17269c;

        /* renamed from: d  reason: collision with root package name */
        public final int f17270d;

        /* renamed from: e  reason: collision with root package name */
        public final int f17271e;

        /* renamed from: f  reason: collision with root package name */
        public final int f17272f;

        /* renamed from: g  reason: collision with root package name */
        public final int f17273g;

        /* renamed from: h  reason: collision with root package name */
        public final int f17274h;

        /* renamed from: i  reason: collision with root package name */
        public final AudioProcessor[] f17275i;

        public g(v0 v0Var, int i10, int i11, int i12, int i13, int i14, int i15, int i16, AudioProcessor[] audioProcessorArr) {
            this.f17267a = v0Var;
            this.f17268b = i10;
            this.f17269c = i11;
            this.f17270d = i12;
            this.f17271e = i13;
            this.f17272f = i14;
            this.f17273g = i15;
            this.f17274h = i16;
            this.f17275i = audioProcessorArr;
        }

        private AudioTrack d(boolean z10, com.google.android.exoplayer2.audio.a aVar, int i10) {
            int i11 = s0.f2506a;
            if (i11 >= 29) {
                return f(z10, aVar, i10);
            }
            if (i11 >= 21) {
                return e(z10, aVar, i10);
            }
            return g(aVar, i10);
        }

        @RequiresApi(21)
        private AudioTrack e(boolean z10, com.google.android.exoplayer2.audio.a aVar, int i10) {
            return new AudioTrack(i(aVar, z10), DefaultAudioSink.C(this.f17271e, this.f17272f, this.f17273g), this.f17274h, 1, i10);
        }

        @RequiresApi(29)
        private AudioTrack f(boolean z10, com.google.android.exoplayer2.audio.a aVar, int i10) {
            AudioTrack.Builder offloadedPlayback;
            AudioFormat C = DefaultAudioSink.C(this.f17271e, this.f17272f, this.f17273g);
            AudioAttributes i11 = i(aVar, z10);
            boolean z11 = true;
            AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(i11).setAudioFormat(C).setTransferMode(1).setBufferSizeInBytes(this.f17274h).setSessionId(i10);
            if (this.f17269c != 1) {
                z11 = false;
            }
            offloadedPlayback = sessionId.setOffloadedPlayback(z11);
            return offloadedPlayback.build();
        }

        private AudioTrack g(com.google.android.exoplayer2.audio.a aVar, int i10) {
            int a02 = s0.a0(aVar.f17296c);
            if (i10 == 0) {
                return new AudioTrack(a02, this.f17271e, this.f17272f, this.f17273g, this.f17274h, 1);
            }
            return new AudioTrack(a02, this.f17271e, this.f17272f, this.f17273g, this.f17274h, 1, i10);
        }

        @RequiresApi(21)
        private static AudioAttributes i(com.google.android.exoplayer2.audio.a aVar, boolean z10) {
            if (z10) {
                return j();
            }
            return aVar.b().f17300a;
        }

        @RequiresApi(21)
        private static AudioAttributes j() {
            return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }

        public AudioTrack a(boolean z10, com.google.android.exoplayer2.audio.a aVar, int i10) throws AudioSink.InitializationException {
            try {
                AudioTrack d10 = d(z10, aVar, i10);
                int state = d10.getState();
                if (state == 1) {
                    return d10;
                }
                try {
                    d10.release();
                } catch (Exception unused) {
                }
                throw new AudioSink.InitializationException(state, this.f17271e, this.f17272f, this.f17274h, this.f17267a, l(), null);
            } catch (IllegalArgumentException | UnsupportedOperationException e10) {
                throw new AudioSink.InitializationException(0, this.f17271e, this.f17272f, this.f17274h, this.f17267a, l(), e10);
            }
        }

        public boolean b(g gVar) {
            if (gVar.f17269c == this.f17269c && gVar.f17273g == this.f17273g && gVar.f17271e == this.f17271e && gVar.f17272f == this.f17272f && gVar.f17270d == this.f17270d) {
                return true;
            }
            return false;
        }

        public g c(int i10) {
            return new g(this.f17267a, this.f17268b, this.f17269c, this.f17270d, this.f17271e, this.f17272f, this.f17273g, i10, this.f17275i);
        }

        public long h(long j10) {
            return (j10 * 1000000) / this.f17271e;
        }

        public long k(long j10) {
            return (j10 * 1000000) / this.f17267a.f19171z;
        }

        public boolean l() {
            if (this.f17269c == 1) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes4.dex */
    public static class h implements q5.i {

        /* renamed from: a  reason: collision with root package name */
        private final AudioProcessor[] f17276a;

        /* renamed from: b  reason: collision with root package name */
        private final com.google.android.exoplayer2.audio.k f17277b;

        /* renamed from: c  reason: collision with root package name */
        private final m f17278c;

        public h(AudioProcessor... audioProcessorArr) {
            this(audioProcessorArr, new com.google.android.exoplayer2.audio.k(), new m());
        }

        @Override // q5.i
        public boolean a(boolean z10) {
            this.f17277b.q(z10);
            return z10;
        }

        @Override // q5.i
        public k1 b(k1 k1Var) {
            this.f17278c.d(k1Var.f17821a);
            this.f17278c.c(k1Var.f17822b);
            return k1Var;
        }

        @Override // q5.i
        public AudioProcessor[] getAudioProcessors() {
            return this.f17276a;
        }

        @Override // q5.i
        public long getMediaDuration(long j10) {
            return this.f17278c.b(j10);
        }

        @Override // q5.i
        public long getSkippedOutputFrameCount() {
            return this.f17277b.k();
        }

        public h(AudioProcessor[] audioProcessorArr, com.google.android.exoplayer2.audio.k kVar, m mVar) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.f17276a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.f17277b = kVar;
            this.f17278c = mVar;
            audioProcessorArr2[audioProcessorArr.length] = kVar;
            audioProcessorArr2[audioProcessorArr.length + 1] = mVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class i {

        /* renamed from: a  reason: collision with root package name */
        public final k1 f17279a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f17280b;

        /* renamed from: c  reason: collision with root package name */
        public final long f17281c;

        /* renamed from: d  reason: collision with root package name */
        public final long f17282d;

        private i(k1 k1Var, boolean z10, long j10, long j11) {
            this.f17279a = k1Var;
            this.f17280b = z10;
            this.f17281c = j10;
            this.f17282d = j11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class j<T extends Exception> {

        /* renamed from: a  reason: collision with root package name */
        private final long f17283a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private T f17284b;

        /* renamed from: c  reason: collision with root package name */
        private long f17285c;

        public j(long j10) {
            this.f17283a = j10;
        }

        public void a() {
            this.f17284b = null;
        }

        public void b(T t10) throws Exception {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f17284b == null) {
                this.f17284b = t10;
                this.f17285c = this.f17283a + elapsedRealtime;
            }
            if (elapsedRealtime >= this.f17285c) {
                T t11 = this.f17284b;
                if (t11 != t10) {
                    t11.addSuppressed(t10);
                }
                T t12 = this.f17284b;
                a();
                throw t12;
            }
        }
    }

    /* loaded from: classes4.dex */
    private final class k implements d.a {
        private k() {
        }

        @Override // com.google.android.exoplayer2.audio.d.a
        public void c(long j10) {
            if (DefaultAudioSink.this.f17250s != null) {
                DefaultAudioSink.this.f17250s.c(j10);
            }
        }

        @Override // com.google.android.exoplayer2.audio.d.a
        public void onInvalidLatency(long j10) {
            q.i("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j10);
        }

        @Override // com.google.android.exoplayer2.audio.d.a
        public void onPositionFramesMismatch(long j10, long j11, long j12, long j13) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j10 + ", " + j11 + ", " + j12 + ", " + j13 + ", " + DefaultAudioSink.this.J() + ", " + DefaultAudioSink.this.K();
            if (!DefaultAudioSink.f17224e0) {
                q.i("DefaultAudioSink", str);
                return;
            }
            throw new InvalidAudioTrackTimestampException(str);
        }

        @Override // com.google.android.exoplayer2.audio.d.a
        public void onSystemTimeUsMismatch(long j10, long j11, long j12, long j13) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j10 + ", " + j11 + ", " + j12 + ", " + j13 + ", " + DefaultAudioSink.this.J() + ", " + DefaultAudioSink.this.K();
            if (!DefaultAudioSink.f17224e0) {
                q.i("DefaultAudioSink", str);
                return;
            }
            throw new InvalidAudioTrackTimestampException(str);
        }

        @Override // com.google.android.exoplayer2.audio.d.a
        public void onUnderrun(int i10, long j10) {
            if (DefaultAudioSink.this.f17250s != null) {
                DefaultAudioSink.this.f17250s.onUnderrun(i10, j10, SystemClock.elapsedRealtime() - DefaultAudioSink.this.f17231b0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(29)
    /* loaded from: classes4.dex */
    public final class l {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f17287a = new Handler(Looper.myLooper());

        /* renamed from: b  reason: collision with root package name */
        private final AudioTrack$StreamEventCallback f17288b;

        /* loaded from: classes4.dex */
        class a extends AudioTrack$StreamEventCallback {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ DefaultAudioSink f17290a;

            a(DefaultAudioSink defaultAudioSink) {
                this.f17290a = defaultAudioSink;
            }

            public void onDataRequest(AudioTrack audioTrack, int i10) {
                if (audioTrack.equals(DefaultAudioSink.this.f17253v) && DefaultAudioSink.this.f17250s != null && DefaultAudioSink.this.V) {
                    DefaultAudioSink.this.f17250s.e();
                }
            }

            public void onTearDown(AudioTrack audioTrack) {
                if (audioTrack.equals(DefaultAudioSink.this.f17253v) && DefaultAudioSink.this.f17250s != null && DefaultAudioSink.this.V) {
                    DefaultAudioSink.this.f17250s.e();
                }
            }
        }

        public l() {
            this.f17288b = new a(DefaultAudioSink.this);
        }

        public void a(AudioTrack audioTrack) {
            Handler handler = this.f17287a;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new androidx.emoji2.text.a(handler), this.f17288b);
        }

        public void b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.f17288b);
            this.f17287a.removeCallbacksAndMessages(null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0029 -> B:5:0x0009). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean A() throws com.google.android.exoplayer2.audio.AudioSink.WriteException {
        /*
            r9 = this;
            int r0 = r9.S
            r1 = 1
            r2 = 0
            r3 = -1
            if (r0 != r3) goto Lb
            r9.S = r2
        L9:
            r0 = r1
            goto Lc
        Lb:
            r0 = r2
        Lc:
            int r4 = r9.S
            com.google.android.exoplayer2.audio.AudioProcessor[] r5 = r9.L
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.queueEndOfStream()
        L1f:
            r9.S(r7)
            boolean r0 = r4.isEnded()
            if (r0 != 0) goto L29
            return r2
        L29:
            int r0 = r9.S
            int r0 = r0 + r1
            r9.S = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.P
            if (r0 == 0) goto L3b
            r9.f0(r0, r7)
            java.nio.ByteBuffer r0 = r9.P
            if (r0 == 0) goto L3b
            return r2
        L3b:
            r9.S = r3
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.A():boolean");
    }

    private void B() {
        int i10 = 0;
        while (true) {
            AudioProcessor[] audioProcessorArr = this.L;
            if (i10 < audioProcessorArr.length) {
                AudioProcessor audioProcessor = audioProcessorArr[i10];
                audioProcessor.flush();
                this.M[i10] = audioProcessor.getOutput();
                i10++;
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    public static AudioFormat C(int i10, int i11, int i12) {
        return new AudioFormat.Builder().setSampleRate(i10).setChannelMask(i11).setEncoding(i12).build();
    }

    private k1 D() {
        return G().f17279a;
    }

    private static int E(int i10, int i11, int i12) {
        boolean z10;
        int minBufferSize = AudioTrack.getMinBufferSize(i10, i11, i12);
        if (minBufferSize != -2) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        return minBufferSize;
    }

    private static int F(int i10, ByteBuffer byteBuffer) {
        switch (i10) {
            case 5:
            case 6:
            case 18:
                return q5.b.d(byteBuffer);
            case 7:
            case 8:
                return f0.e(byteBuffer);
            case 9:
                int m10 = g0.m(s0.F(byteBuffer, byteBuffer.position()));
                if (m10 != -1) {
                    return m10;
                }
                throw new IllegalArgumentException();
            case 10:
                return 1024;
            case 11:
            case 12:
                return 2048;
            case 13:
            default:
                throw new IllegalStateException("Unexpected audio encoding: " + i10);
            case 14:
                int a10 = q5.b.a(byteBuffer);
                if (a10 == -1) {
                    return 0;
                }
                return q5.b.h(byteBuffer, a10) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return q5.c.c(byteBuffer);
        }
    }

    private i G() {
        i iVar = this.f17255x;
        if (iVar == null) {
            if (!this.f17241j.isEmpty()) {
                return this.f17241j.getLast();
            }
            return this.f17256y;
        }
        return iVar;
    }

    @RequiresApi(29)
    @SuppressLint({"InlinedApi"})
    private int H(AudioFormat audioFormat, AudioAttributes audioAttributes) {
        boolean isOffloadedPlaybackSupported;
        int playbackOffloadSupport;
        int i10 = s0.f2506a;
        if (i10 >= 31) {
            playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
            return playbackOffloadSupport;
        }
        isOffloadedPlaybackSupported = AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes);
        if (!isOffloadedPlaybackSupported) {
            return 0;
        }
        if (i10 == 30 && s0.f2509d.startsWith("Pixel")) {
            return 2;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long J() {
        g gVar = this.f17252u;
        if (gVar.f17269c == 0) {
            return this.C / gVar.f17268b;
        }
        return this.D;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long K() {
        g gVar = this.f17252u;
        if (gVar.f17269c == 0) {
            return this.E / gVar.f17270d;
        }
        return this.F;
    }

    private boolean L() throws AudioSink.InitializationException {
        boolean z10;
        t3 t3Var;
        if (!this.f17239h.d()) {
            return false;
        }
        AudioTrack z11 = z();
        this.f17253v = z11;
        if (O(z11)) {
            T(this.f17253v);
            if (this.f17243l != 3) {
                AudioTrack audioTrack = this.f17253v;
                v0 v0Var = this.f17252u.f17267a;
                audioTrack.setOffloadDelayPadding(v0Var.B, v0Var.C);
            }
        }
        int i10 = s0.f2506a;
        if (i10 >= 31 && (t3Var = this.f17249r) != null) {
            c.a(this.f17253v, t3Var);
        }
        this.X = this.f17253v.getAudioSessionId();
        com.google.android.exoplayer2.audio.d dVar = this.f17240i;
        AudioTrack audioTrack2 = this.f17253v;
        g gVar = this.f17252u;
        if (gVar.f17269c == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        dVar.s(audioTrack2, z10, gVar.f17273g, gVar.f17270d, gVar.f17274h);
        Y();
        int i11 = this.Y.f65123a;
        if (i11 != 0) {
            this.f17253v.attachAuxEffect(i11);
            this.f17253v.setAuxEffectSendLevel(this.Y.f65124b);
        }
        d dVar2 = this.Z;
        if (dVar2 != null && i10 >= 23) {
            b.a(this.f17253v, dVar2);
        }
        this.I = true;
        return true;
    }

    private static boolean M(int i10) {
        if ((s0.f2506a >= 24 && i10 == -6) || i10 == -32) {
            return true;
        }
        return false;
    }

    private boolean N() {
        if (this.f17253v != null) {
            return true;
        }
        return false;
    }

    private static boolean O(AudioTrack audioTrack) {
        boolean isOffloadedPlayback;
        if (s0.f2506a >= 29) {
            isOffloadedPlayback = audioTrack.isOffloadedPlayback();
            if (isOffloadedPlayback) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void P(AudioTrack audioTrack, b7.g gVar) {
        try {
            audioTrack.flush();
            audioTrack.release();
            gVar.e();
            synchronized (f17225f0) {
                try {
                    int i10 = f17227h0 - 1;
                    f17227h0 = i10;
                    if (i10 == 0) {
                        f17226g0.shutdown();
                        f17226g0 = null;
                    }
                } finally {
                }
            }
        } catch (Throwable th2) {
            gVar.e();
            synchronized (f17225f0) {
                try {
                    int i11 = f17227h0 - 1;
                    f17227h0 = i11;
                    if (i11 == 0) {
                        f17226g0.shutdown();
                        f17226g0 = null;
                    }
                    throw th2;
                } finally {
                }
            }
        }
    }

    private void Q() {
        if (!this.f17252u.l()) {
            return;
        }
        this.f17233c0 = true;
    }

    private void R() {
        if (!this.U) {
            this.U = true;
            this.f17240i.g(K());
            this.f17253v.stop();
            this.B = 0;
        }
    }

    private void S(long j10) throws AudioSink.WriteException {
        ByteBuffer byteBuffer;
        int length = this.L.length;
        int i10 = length;
        while (i10 >= 0) {
            if (i10 > 0) {
                byteBuffer = this.M[i10 - 1];
            } else {
                byteBuffer = this.N;
                if (byteBuffer == null) {
                    byteBuffer = AudioProcessor.f17209a;
                }
            }
            if (i10 == length) {
                f0(byteBuffer, j10);
            } else {
                AudioProcessor audioProcessor = this.L[i10];
                if (i10 > this.S) {
                    audioProcessor.queueInput(byteBuffer);
                }
                ByteBuffer output = audioProcessor.getOutput();
                this.M[i10] = output;
                if (output.hasRemaining()) {
                    i10++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i10--;
        }
    }

    @RequiresApi(29)
    private void T(AudioTrack audioTrack) {
        if (this.f17244m == null) {
            this.f17244m = new l();
        }
        this.f17244m.a(audioTrack);
    }

    private static void U(final AudioTrack audioTrack, final b7.g gVar) {
        gVar.c();
        synchronized (f17225f0) {
            try {
                if (f17226g0 == null) {
                    f17226g0 = s0.x0("ExoPlayer:AudioTrackReleaseThread");
                }
                f17227h0++;
                f17226g0.execute(new Runnable() { // from class: q5.z
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultAudioSink.P(audioTrack, gVar);
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void V() {
        this.C = 0L;
        this.D = 0L;
        this.E = 0L;
        this.F = 0L;
        this.f17235d0 = false;
        this.G = 0;
        this.f17256y = new i(D(), I(), 0L, 0L);
        this.J = 0L;
        this.f17255x = null;
        this.f17241j.clear();
        this.N = null;
        this.O = 0;
        this.P = null;
        this.U = false;
        this.T = false;
        this.S = -1;
        this.A = null;
        this.B = 0;
        this.f17236e.i();
        B();
    }

    private void W(k1 k1Var, boolean z10) {
        i G = G();
        if (!k1Var.equals(G.f17279a) || z10 != G.f17280b) {
            i iVar = new i(k1Var, z10, -9223372036854775807L, -9223372036854775807L);
            if (N()) {
                this.f17255x = iVar;
            } else {
                this.f17256y = iVar;
            }
        }
    }

    @RequiresApi(23)
    private void X(k1 k1Var) {
        if (N()) {
            try {
                this.f17253v.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(k1Var.f17821a).setPitch(k1Var.f17822b).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e10) {
                q.j("DefaultAudioSink", "Failed to set playback params", e10);
            }
            k1Var = new k1(this.f17253v.getPlaybackParams().getSpeed(), this.f17253v.getPlaybackParams().getPitch());
            this.f17240i.t(k1Var.f17821a);
        }
        this.f17257z = k1Var;
    }

    private void Y() {
        if (N()) {
            if (s0.f2506a >= 21) {
                Z(this.f17253v, this.K);
            } else {
                a0(this.f17253v, this.K);
            }
        }
    }

    @RequiresApi(21)
    private static void Z(AudioTrack audioTrack, float f10) {
        audioTrack.setVolume(f10);
    }

    private static void a0(AudioTrack audioTrack, float f10) {
        audioTrack.setStereoVolume(f10, f10);
    }

    private void b0() {
        AudioProcessor[] audioProcessorArr = this.f17252u.f17275i;
        ArrayList arrayList = new ArrayList();
        for (AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.isActive()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.flush();
            }
        }
        int size = arrayList.size();
        this.L = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
        this.M = new ByteBuffer[size];
        B();
    }

    private boolean c0() {
        if (!this.f17229a0 && MimeTypes.AUDIO_RAW.equals(this.f17252u.f17267a.f19157l) && !d0(this.f17252u.f17267a.A)) {
            return true;
        }
        return false;
    }

    private boolean d0(int i10) {
        if (this.f17232c && s0.n0(i10)) {
            return true;
        }
        return false;
    }

    private boolean e0(v0 v0Var, com.google.android.exoplayer2.audio.a aVar) {
        int d10;
        int D;
        int H;
        boolean z10;
        boolean z11;
        if (s0.f2506a < 29 || this.f17243l == 0 || (d10 = u.d((String) b7.a.e(v0Var.f19157l), v0Var.f19154i)) == 0 || (D = s0.D(v0Var.f19170y)) == 0 || (H = H(C(v0Var.f19171z, D, d10), aVar.b().f17300a)) == 0) {
            return false;
        }
        if (H != 1) {
            if (H == 2) {
                return true;
            }
            throw new IllegalStateException();
        }
        if (v0Var.B == 0 && v0Var.C == 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (this.f17243l == 1) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10 && z11) {
            return false;
        }
        return true;
    }

    private void f0(ByteBuffer byteBuffer, long j10) throws AudioSink.WriteException {
        int g02;
        boolean z10;
        AudioSink.a aVar;
        boolean z11;
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        ByteBuffer byteBuffer2 = this.P;
        boolean z12 = true;
        if (byteBuffer2 != null) {
            if (byteBuffer2 == byteBuffer) {
                z11 = true;
            } else {
                z11 = false;
            }
            b7.a.a(z11);
        } else {
            this.P = byteBuffer;
            if (s0.f2506a < 21) {
                int remaining = byteBuffer.remaining();
                byte[] bArr = this.Q;
                if (bArr == null || bArr.length < remaining) {
                    this.Q = new byte[remaining];
                }
                int position = byteBuffer.position();
                byteBuffer.get(this.Q, 0, remaining);
                byteBuffer.position(position);
                this.R = 0;
            }
        }
        int remaining2 = byteBuffer.remaining();
        if (s0.f2506a < 21) {
            int c10 = this.f17240i.c(this.E);
            if (c10 > 0) {
                g02 = this.f17253v.write(this.Q, this.R, Math.min(remaining2, c10));
                if (g02 > 0) {
                    this.R += g02;
                    byteBuffer.position(byteBuffer.position() + g02);
                }
            } else {
                g02 = 0;
            }
        } else if (this.f17229a0) {
            if (j10 != -9223372036854775807L) {
                z10 = true;
            } else {
                z10 = false;
            }
            b7.a.g(z10);
            g02 = h0(this.f17253v, byteBuffer, remaining2, j10);
        } else {
            g02 = g0(this.f17253v, byteBuffer, remaining2);
        }
        this.f17231b0 = SystemClock.elapsedRealtime();
        if (g02 < 0) {
            if (!M(g02) || this.F <= 0) {
                z12 = false;
            }
            AudioSink.WriteException writeException = new AudioSink.WriteException(g02, this.f17252u.f17267a, z12);
            AudioSink.a aVar2 = this.f17250s;
            if (aVar2 != null) {
                aVar2.b(writeException);
            }
            if (!writeException.f17222b) {
                this.f17246o.b(writeException);
                return;
            }
            throw writeException;
        }
        this.f17246o.a();
        if (O(this.f17253v)) {
            if (this.F > 0) {
                this.f17235d0 = false;
            }
            if (this.V && (aVar = this.f17250s) != null && g02 < remaining2 && !this.f17235d0) {
                aVar.d();
            }
        }
        int i10 = this.f17252u.f17269c;
        if (i10 == 0) {
            this.E += g02;
        }
        if (g02 == remaining2) {
            if (i10 != 0) {
                if (byteBuffer != this.N) {
                    z12 = false;
                }
                b7.a.g(z12);
                this.F += this.G * this.O;
            }
            this.P = null;
        }
    }

    @RequiresApi(21)
    private static int g0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i10) {
        return audioTrack.write(byteBuffer, i10, 1);
    }

    @RequiresApi(21)
    private int h0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i10, long j10) {
        if (s0.f2506a >= 26) {
            return audioTrack.write(byteBuffer, i10, 1, j10 * 1000);
        }
        if (this.A == null) {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            this.A = allocate;
            allocate.order(ByteOrder.BIG_ENDIAN);
            this.A.putInt(1431633921);
        }
        if (this.B == 0) {
            this.A.putInt(4, i10);
            this.A.putLong(8, j10 * 1000);
            this.A.position(0);
            this.B = i10;
        }
        int remaining = this.A.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.A, remaining, 1);
            if (write < 0) {
                this.B = 0;
                return write;
            } else if (write < remaining) {
                return 0;
            }
        }
        int g02 = g0(audioTrack, byteBuffer, i10);
        if (g02 < 0) {
            this.B = 0;
            return g02;
        }
        this.B -= g02;
        return g02;
    }

    private void v(long j10) {
        k1 k1Var;
        boolean z10;
        if (c0()) {
            k1Var = this.f17230b.b(D());
        } else {
            k1Var = k1.f17819d;
        }
        k1 k1Var2 = k1Var;
        if (c0()) {
            z10 = this.f17230b.a(I());
        } else {
            z10 = false;
        }
        this.f17241j.add(new i(k1Var2, z10, Math.max(0L, j10), this.f17252u.h(K())));
        b0();
        AudioSink.a aVar = this.f17250s;
        if (aVar != null) {
            aVar.a(z10);
        }
    }

    private long w(long j10) {
        while (!this.f17241j.isEmpty() && j10 >= this.f17241j.getFirst().f17282d) {
            this.f17256y = this.f17241j.remove();
        }
        i iVar = this.f17256y;
        long j11 = j10 - iVar.f17282d;
        if (iVar.f17279a.equals(k1.f17819d)) {
            return this.f17256y.f17281c + j11;
        }
        if (this.f17241j.isEmpty()) {
            return this.f17256y.f17281c + this.f17230b.getMediaDuration(j11);
        }
        i first = this.f17241j.getFirst();
        return first.f17281c - s0.U(first.f17282d - j10, this.f17256y.f17279a.f17821a);
    }

    private long x(long j10) {
        return j10 + this.f17252u.h(this.f17230b.getSkippedOutputFrameCount());
    }

    private AudioTrack y(g gVar) throws AudioSink.InitializationException {
        try {
            AudioTrack a10 = gVar.a(this.f17229a0, this.f17254w, this.X);
            k.a aVar = this.f17248q;
            if (aVar != null) {
                aVar.A(O(a10));
            }
            return a10;
        } catch (AudioSink.InitializationException e10) {
            AudioSink.a aVar2 = this.f17250s;
            if (aVar2 != null) {
                aVar2.b(e10);
            }
            throw e10;
        }
    }

    private AudioTrack z() throws AudioSink.InitializationException {
        try {
            return y((g) b7.a.e(this.f17252u));
        } catch (AudioSink.InitializationException e10) {
            g gVar = this.f17252u;
            if (gVar.f17274h > 1000000) {
                g c10 = gVar.c(TTVideoEngineInterface.PLAYER_TIME_BASE);
                try {
                    AudioTrack y10 = y(c10);
                    this.f17252u = c10;
                    return y10;
                } catch (AudioSink.InitializationException e11) {
                    e10.addSuppressed(e11);
                    Q();
                    throw e10;
                }
            }
            Q();
            throw e10;
        }
    }

    public boolean I() {
        return G().f17280b;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean a(v0 v0Var) {
        if (l(v0Var) != 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void b(k1 k1Var) {
        k1 k1Var2 = new k1(s0.o(k1Var.f17821a, 0.1f, 8.0f), s0.o(k1Var.f17822b, 0.1f, 8.0f));
        if (this.f17242k && s0.f2506a >= 23) {
            X(k1Var2);
        } else {
            W(k1Var2, I());
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void c() {
        boolean z10;
        if (s0.f2506a >= 21) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        b7.a.g(this.W);
        if (!this.f17229a0) {
            this.f17229a0 = true;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean d(ByteBuffer byteBuffer, long j10, int i10) throws AudioSink.InitializationException, AudioSink.WriteException {
        boolean z10;
        boolean z11;
        ByteBuffer byteBuffer2 = this.N;
        if (byteBuffer2 != null && byteBuffer != byteBuffer2) {
            z10 = false;
        } else {
            z10 = true;
        }
        b7.a.a(z10);
        if (this.f17251t != null) {
            if (!A()) {
                return false;
            }
            if (!this.f17251t.b(this.f17252u)) {
                R();
                if (hasPendingData()) {
                    return false;
                }
                flush();
            } else {
                this.f17252u = this.f17251t;
                this.f17251t = null;
                if (O(this.f17253v) && this.f17243l != 3) {
                    if (this.f17253v.getPlayState() == 3) {
                        this.f17253v.setOffloadEndOfStream();
                    }
                    AudioTrack audioTrack = this.f17253v;
                    v0 v0Var = this.f17252u.f17267a;
                    audioTrack.setOffloadDelayPadding(v0Var.B, v0Var.C);
                    this.f17235d0 = true;
                }
            }
            v(j10);
        }
        if (!N()) {
            try {
                if (!L()) {
                    return false;
                }
            } catch (AudioSink.InitializationException e10) {
                if (!e10.f17217b) {
                    this.f17245n.b(e10);
                    return false;
                }
                throw e10;
            }
        }
        this.f17245n.a();
        if (this.I) {
            this.J = Math.max(0L, j10);
            this.H = false;
            this.I = false;
            if (this.f17242k && s0.f2506a >= 23) {
                X(this.f17257z);
            }
            v(j10);
            if (this.V) {
                play();
            }
        }
        if (!this.f17240i.k(K())) {
            return false;
        }
        if (this.N == null) {
            if (byteBuffer.order() == ByteOrder.LITTLE_ENDIAN) {
                z11 = true;
            } else {
                z11 = false;
            }
            b7.a.a(z11);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            g gVar = this.f17252u;
            if (gVar.f17269c != 0 && this.G == 0) {
                int F = F(gVar.f17273g, byteBuffer);
                this.G = F;
                if (F == 0) {
                    return true;
                }
            }
            if (this.f17255x != null) {
                if (!A()) {
                    return false;
                }
                v(j10);
                this.f17255x = null;
            }
            long k10 = this.J + this.f17252u.k(J() - this.f17236e.h());
            if (!this.H && Math.abs(k10 - j10) > 200000) {
                this.f17250s.b(new AudioSink.UnexpectedDiscontinuityException(j10, k10));
                this.H = true;
            }
            if (this.H) {
                if (!A()) {
                    return false;
                }
                long j11 = j10 - k10;
                this.J += j11;
                this.H = false;
                v(j10);
                AudioSink.a aVar = this.f17250s;
                if (aVar != null && j11 != 0) {
                    aVar.onPositionDiscontinuity();
                }
            }
            if (this.f17252u.f17269c == 0) {
                this.C += byteBuffer.remaining();
            } else {
                this.D += this.G * i10;
            }
            this.N = byteBuffer;
            this.O = i10;
        }
        S(j10);
        if (!this.N.hasRemaining()) {
            this.N = null;
            this.O = 0;
            return true;
        } else if (!this.f17240i.j(K())) {
            return false;
        } else {
            q.i("DefaultAudioSink", "Resetting stalled audio track");
            flush();
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void disableTunneling() {
        if (this.f17229a0) {
            this.f17229a0 = false;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void f(boolean z10) {
        W(D(), z10);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void flush() {
        if (N()) {
            V();
            if (this.f17240i.i()) {
                this.f17253v.pause();
            }
            if (O(this.f17253v)) {
                ((l) b7.a.e(this.f17244m)).b(this.f17253v);
            }
            if (s0.f2506a < 21 && !this.W) {
                this.X = 0;
            }
            g gVar = this.f17251t;
            if (gVar != null) {
                this.f17252u = gVar;
                this.f17251t = null;
            }
            this.f17240i.q();
            U(this.f17253v, this.f17239h);
            this.f17253v = null;
        }
        this.f17246o.a();
        this.f17245n.a();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void g(com.google.android.exoplayer2.audio.a aVar) {
        if (this.f17254w.equals(aVar)) {
            return;
        }
        this.f17254w = aVar;
        if (this.f17229a0) {
            return;
        }
        flush();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public long getCurrentPositionUs(boolean z10) {
        if (N() && !this.I) {
            return x(w(Math.min(this.f17240i.d(z10), this.f17252u.h(K()))));
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public k1 getPlaybackParameters() {
        if (this.f17242k) {
            return this.f17257z;
        }
        return D();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void h() {
        boolean z10;
        if (s0.f2506a < 25) {
            flush();
            return;
        }
        this.f17246o.a();
        this.f17245n.a();
        if (!N()) {
            return;
        }
        V();
        if (this.f17240i.i()) {
            this.f17253v.pause();
        }
        this.f17253v.flush();
        this.f17240i.q();
        com.google.android.exoplayer2.audio.d dVar = this.f17240i;
        AudioTrack audioTrack = this.f17253v;
        g gVar = this.f17252u;
        if (gVar.f17269c == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        dVar.s(audioTrack, z10, gVar.f17273g, gVar.f17270d, gVar.f17274h);
        this.I = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void handleDiscontinuity() {
        this.H = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean hasPendingData() {
        if (N() && this.f17240i.h(K())) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void i(@Nullable t3 t3Var) {
        this.f17249r = t3Var;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean isEnded() {
        if (N() && (!this.T || hasPendingData())) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void j(t tVar) {
        if (this.Y.equals(tVar)) {
            return;
        }
        int i10 = tVar.f65123a;
        float f10 = tVar.f65124b;
        AudioTrack audioTrack = this.f17253v;
        if (audioTrack != null) {
            if (this.Y.f65123a != i10) {
                audioTrack.attachAuxEffect(i10);
            }
            if (i10 != 0) {
                this.f17253v.setAuxEffectSendLevel(f10);
            }
        }
        this.Y = tVar;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void k(AudioSink.a aVar) {
        this.f17250s = aVar;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public int l(v0 v0Var) {
        if (MimeTypes.AUDIO_RAW.equals(v0Var.f19157l)) {
            if (!s0.o0(v0Var.A)) {
                q.i("DefaultAudioSink", "Invalid PCM encoding: " + v0Var.A);
                return 0;
            }
            int i10 = v0Var.A;
            if (i10 == 2 || (this.f17232c && i10 == 4)) {
                return 2;
            }
            return 1;
        } else if ((this.f17233c0 || !e0(v0Var, this.f17254w)) && !this.f17228a.h(v0Var)) {
            return 0;
        } else {
            return 2;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void m(v0 v0Var, int i10, @Nullable int[] iArr) throws AudioSink.ConfigurationException {
        int i11;
        AudioProcessor[] audioProcessorArr;
        int i12;
        int intValue;
        int i13;
        int i14;
        int i15;
        int i16;
        double d10;
        int i17;
        int a10;
        AudioProcessor[] audioProcessorArr2;
        int[] iArr2;
        if (MimeTypes.AUDIO_RAW.equals(v0Var.f19157l)) {
            b7.a.a(s0.o0(v0Var.A));
            int Y = s0.Y(v0Var.A, v0Var.f19170y);
            if (d0(v0Var.A)) {
                audioProcessorArr2 = this.f17238g;
            } else {
                audioProcessorArr2 = this.f17237f;
            }
            this.f17236e.j(v0Var.B, v0Var.C);
            if (s0.f2506a < 21 && v0Var.f19170y == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i18 = 0; i18 < 6; i18++) {
                    iArr2[i18] = i18;
                }
            } else {
                iArr2 = iArr;
            }
            this.f17234d.h(iArr2);
            AudioProcessor.a aVar = new AudioProcessor.a(v0Var.f19171z, v0Var.f19170y, v0Var.A);
            for (AudioProcessor audioProcessor : audioProcessorArr2) {
                try {
                    AudioProcessor.a a11 = audioProcessor.a(aVar);
                    if (audioProcessor.isActive()) {
                        aVar = a11;
                    }
                } catch (AudioProcessor.UnhandledAudioFormatException e10) {
                    throw new AudioSink.ConfigurationException(e10, v0Var);
                }
            }
            int i19 = aVar.f17213c;
            int i20 = aVar.f17211a;
            int D = s0.D(aVar.f17212b);
            audioProcessorArr = audioProcessorArr2;
            i14 = s0.Y(i19, aVar.f17212b);
            i15 = i19;
            i12 = i20;
            intValue = D;
            i13 = Y;
            i16 = 0;
        } else {
            AudioProcessor[] audioProcessorArr3 = new AudioProcessor[0];
            int i21 = v0Var.f19171z;
            if (e0(v0Var, this.f17254w)) {
                i11 = 1;
                audioProcessorArr = audioProcessorArr3;
                i12 = i21;
                i15 = u.d((String) b7.a.e(v0Var.f19157l), v0Var.f19154i);
                i13 = -1;
                i14 = -1;
                intValue = s0.D(v0Var.f19170y);
            } else {
                Pair<Integer, Integer> f10 = this.f17228a.f(v0Var);
                if (f10 != null) {
                    int intValue2 = ((Integer) f10.first).intValue();
                    i11 = 2;
                    audioProcessorArr = audioProcessorArr3;
                    i12 = i21;
                    intValue = ((Integer) f10.second).intValue();
                    i13 = -1;
                    i14 = -1;
                    i15 = intValue2;
                } else {
                    throw new AudioSink.ConfigurationException("Unable to configure passthrough for: " + v0Var, v0Var);
                }
            }
            i16 = i11;
        }
        if (i15 != 0) {
            if (intValue != 0) {
                if (i10 != 0) {
                    a10 = i10;
                    i17 = i15;
                } else {
                    e eVar = this.f17247p;
                    int E = E(i12, intValue, i15);
                    if (this.f17242k) {
                        d10 = 8.0d;
                    } else {
                        d10 = 1.0d;
                    }
                    i17 = i15;
                    a10 = eVar.a(E, i15, i16, i14, i12, d10);
                }
                this.f17233c0 = false;
                g gVar = new g(v0Var, i13, i16, i14, i12, intValue, i17, a10, audioProcessorArr);
                if (N()) {
                    this.f17251t = gVar;
                    return;
                } else {
                    this.f17252u = gVar;
                    return;
                }
            }
            throw new AudioSink.ConfigurationException("Invalid output channel config (mode=" + i16 + ") for: " + v0Var, v0Var);
        }
        throw new AudioSink.ConfigurationException("Invalid output encoding (mode=" + i16 + ") for: " + v0Var, v0Var);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void pause() {
        this.V = false;
        if (N() && this.f17240i.p()) {
            this.f17253v.pause();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void play() {
        this.V = true;
        if (N()) {
            this.f17240i.u();
            this.f17253v.play();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void playToEndOfStream() throws AudioSink.WriteException {
        if (!this.T && N() && A()) {
            R();
            this.T = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void reset() {
        flush();
        for (AudioProcessor audioProcessor : this.f17237f) {
            audioProcessor.reset();
        }
        for (AudioProcessor audioProcessor2 : this.f17238g) {
            audioProcessor2.reset();
        }
        this.V = false;
        this.f17233c0 = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setAudioSessionId(int i10) {
        boolean z10;
        if (this.X != i10) {
            this.X = i10;
            if (i10 != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.W = z10;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    @RequiresApi(23)
    public void setPreferredDevice(@Nullable AudioDeviceInfo audioDeviceInfo) {
        d dVar;
        if (audioDeviceInfo == null) {
            dVar = null;
        } else {
            dVar = new d(audioDeviceInfo);
        }
        this.Z = dVar;
        AudioTrack audioTrack = this.f17253v;
        if (audioTrack != null) {
            b.a(audioTrack, dVar);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setVolume(float f10) {
        if (this.K != f10) {
            this.K = f10;
            Y();
        }
    }

    private DefaultAudioSink(f fVar) {
        this.f17228a = fVar.f17260a;
        q5.i iVar = fVar.f17261b;
        this.f17230b = iVar;
        int i10 = s0.f2506a;
        this.f17232c = i10 >= 21 && fVar.f17262c;
        this.f17242k = i10 >= 23 && fVar.f17263d;
        this.f17243l = i10 >= 29 ? fVar.f17264e : 0;
        this.f17247p = fVar.f17265f;
        b7.g gVar = new b7.g(b7.d.f2436a);
        this.f17239h = gVar;
        gVar.e();
        this.f17240i = new com.google.android.exoplayer2.audio.d(new k());
        com.google.android.exoplayer2.audio.f fVar2 = new com.google.android.exoplayer2.audio.f();
        this.f17234d = fVar2;
        n nVar = new n();
        this.f17236e = nVar;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new com.google.android.exoplayer2.audio.j(), fVar2, nVar);
        Collections.addAll(arrayList, iVar.getAudioProcessors());
        this.f17237f = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[0]);
        this.f17238g = new AudioProcessor[]{new com.google.android.exoplayer2.audio.h()};
        this.K = 1.0f;
        this.f17254w = com.google.android.exoplayer2.audio.a.f17292g;
        this.X = 0;
        this.Y = new t(0, 0.0f);
        k1 k1Var = k1.f17819d;
        this.f17256y = new i(k1Var, false, 0L, 0L);
        this.f17257z = k1Var;
        this.S = -1;
        this.L = new AudioProcessor[0];
        this.M = new ByteBuffer[0];
        this.f17241j = new ArrayDeque<>();
        this.f17245n = new j<>(100L);
        this.f17246o = new j<>(100L);
        this.f17248q = fVar.f17266g;
    }
}
