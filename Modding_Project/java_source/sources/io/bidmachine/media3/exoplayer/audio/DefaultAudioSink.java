package io.bidmachine.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioRouting;
import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.work.PeriodicWorkRequest;
import cn.m0;
import cn.r;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.y;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import hn.b2;
import in.s;
import io.bidmachine.media3.common.audio.AudioProcessor;
import io.bidmachine.media3.exoplayer.ExoPlayer;
import io.bidmachine.media3.exoplayer.audio.AudioSink;
import io.bidmachine.media3.exoplayer.audio.DefaultAudioSink;
import io.bidmachine.media3.exoplayer.audio.b;
import io.bidmachine.media3.exoplayer.audio.g;
import io.bidmachine.media3.exoplayer.audio.k;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import zm.u;
import zm.v;
/* loaded from: classes8.dex */
public final class DefaultAudioSink implements AudioSink {

    /* renamed from: l0  reason: collision with root package name */
    public static boolean f55412l0 = false;

    /* renamed from: m0  reason: collision with root package name */
    private static final Object f55413m0 = new Object();
    @Nullable
    @GuardedBy("releaseExecutorLock")

    /* renamed from: n0  reason: collision with root package name */
    private static ScheduledExecutorService f55414n0;
    @GuardedBy("releaseExecutorLock")

    /* renamed from: o0  reason: collision with root package name */
    private static int f55415o0;
    @Nullable
    private k A;
    private zm.c B;
    @Nullable
    private j C;
    private j D;
    private v E;
    private boolean F;
    @Nullable
    private ByteBuffer G;
    private int H;
    private long I;
    private long J;
    private long K;
    private long L;
    private int M;
    private boolean N;
    private boolean O;
    private long P;
    private float Q;
    @Nullable
    private ByteBuffer R;
    private int S;
    @Nullable
    private ByteBuffer T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private int Z;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Context f55416a;

    /* renamed from: a0  reason: collision with root package name */
    private zm.d f55417a0;

    /* renamed from: b  reason: collision with root package name */
    private final an.e f55418b;
    @Nullable

    /* renamed from: b0  reason: collision with root package name */
    private io.bidmachine.media3.exoplayer.audio.c f55419b0;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f55420c;

    /* renamed from: c0  reason: collision with root package name */
    private boolean f55421c0;

    /* renamed from: d  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.audio.h f55422d;

    /* renamed from: d0  reason: collision with root package name */
    private long f55423d0;

    /* renamed from: e  reason: collision with root package name */
    private final o f55424e;

    /* renamed from: e0  reason: collision with root package name */
    private long f55425e0;

    /* renamed from: f  reason: collision with root package name */
    private final ImmutableList<AudioProcessor> f55426f;

    /* renamed from: f0  reason: collision with root package name */
    private boolean f55427f0;

    /* renamed from: g  reason: collision with root package name */
    private final ImmutableList<AudioProcessor> f55428g;

    /* renamed from: g0  reason: collision with root package name */
    private boolean f55429g0;

    /* renamed from: h  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.audio.g f55430h;
    @Nullable

    /* renamed from: h0  reason: collision with root package name */
    private Looper f55431h0;

    /* renamed from: i  reason: collision with root package name */
    private final ArrayDeque<j> f55432i;

    /* renamed from: i0  reason: collision with root package name */
    private long f55433i0;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f55434j;

    /* renamed from: j0  reason: collision with root package name */
    private long f55435j0;

    /* renamed from: k  reason: collision with root package name */
    private int f55436k;

    /* renamed from: k0  reason: collision with root package name */
    private Handler f55437k0;

    /* renamed from: l  reason: collision with root package name */
    private n f55438l;

    /* renamed from: m  reason: collision with root package name */
    private final l<AudioSink.InitializationException> f55439m;

    /* renamed from: n  reason: collision with root package name */
    private final l<AudioSink.WriteException> f55440n;

    /* renamed from: o  reason: collision with root package name */
    private final e f55441o;

    /* renamed from: p  reason: collision with root package name */
    private final d f55442p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private final ExoPlayer.a f55443q;

    /* renamed from: r  reason: collision with root package name */
    private final f f55444r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private b2 f55445s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private AudioSink.b f55446t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private h f55447u;

    /* renamed from: v  reason: collision with root package name */
    private h f55448v;

    /* renamed from: w  reason: collision with root package name */
    private io.bidmachine.media3.common.audio.a f55449w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private AudioTrack f55450x;

    /* renamed from: y  reason: collision with root package name */
    private io.bidmachine.media3.exoplayer.audio.a f55451y;

    /* renamed from: z  reason: collision with root package name */
    private io.bidmachine.media3.exoplayer.audio.b f55452z;

    /* loaded from: classes8.dex */
    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(23)
    /* loaded from: classes8.dex */
    public static final class b {
        public static long a(AudioTrack audioTrack, h hVar) {
            if (hVar.f55467c == 0) {
                return hVar.d(audioTrack.getBufferSizeInFrames());
            }
            return m0.h1(audioTrack.getBufferSizeInFrames(), 1000000L, io.bidmachine.media3.exoplayer.audio.k.d(hVar.f55471g), RoundingMode.DOWN);
        }

        public static void b(AudioTrack audioTrack, @Nullable io.bidmachine.media3.exoplayer.audio.c cVar) {
            AudioDeviceInfo audioDeviceInfo;
            if (cVar == null) {
                audioDeviceInfo = null;
            } else {
                audioDeviceInfo = cVar.f55520a;
            }
            audioTrack.setPreferredDevice(audioDeviceInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(31)
    /* loaded from: classes8.dex */
    public static final class c {
        public static void a(AudioTrack audioTrack, b2 b2Var) {
            LogSessionId logSessionId;
            boolean equals;
            LogSessionId a10 = b2Var.a();
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            equals = a10.equals(logSessionId);
            if (!equals) {
                audioTrack.setLogSessionId(a10);
            }
        }
    }

    /* loaded from: classes8.dex */
    public interface d {
        io.bidmachine.media3.exoplayer.audio.d a(io.bidmachine.media3.common.a aVar, zm.c cVar);
    }

    /* loaded from: classes8.dex */
    public interface e {

        /* renamed from: a  reason: collision with root package name */
        public static final e f55453a = new k.a().h();

        int a(int i10, int i11, int i12, int i13, int i14, int i15, double d10);
    }

    /* loaded from: classes8.dex */
    public interface f {

        /* renamed from: a  reason: collision with root package name */
        public static final f f55454a = new io.bidmachine.media3.exoplayer.audio.l();

        AudioTrack a(AudioSink.a aVar, zm.c cVar, int i10);
    }

    /* loaded from: classes8.dex */
    public static final class g {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f55455a;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private an.e f55457c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f55458d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f55459e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f55460f;

        /* renamed from: i  reason: collision with root package name */
        private d f55463i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private ExoPlayer.a f55464j;

        /* renamed from: b  reason: collision with root package name */
        private io.bidmachine.media3.exoplayer.audio.a f55456b = io.bidmachine.media3.exoplayer.audio.a.f55496c;

        /* renamed from: g  reason: collision with root package name */
        private e f55461g = e.f55453a;

        /* renamed from: h  reason: collision with root package name */
        private f f55462h = f.f55454a;

        public g(Context context) {
            this.f55455a = context;
        }

        public DefaultAudioSink j() {
            cn.a.g(!this.f55460f);
            this.f55460f = true;
            if (this.f55457c == null) {
                this.f55457c = new i(new AudioProcessor[0]);
            }
            if (this.f55463i == null) {
                this.f55463i = new io.bidmachine.media3.exoplayer.audio.i(this.f55455a);
            }
            return new DefaultAudioSink(this);
        }

        public g k(boolean z10) {
            this.f55459e = z10;
            return this;
        }

        public g l(boolean z10) {
            this.f55458d = z10;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final io.bidmachine.media3.common.a f55465a;

        /* renamed from: b  reason: collision with root package name */
        public final int f55466b;

        /* renamed from: c  reason: collision with root package name */
        public final int f55467c;

        /* renamed from: d  reason: collision with root package name */
        public final int f55468d;

        /* renamed from: e  reason: collision with root package name */
        public final int f55469e;

        /* renamed from: f  reason: collision with root package name */
        public final int f55470f;

        /* renamed from: g  reason: collision with root package name */
        public final int f55471g;

        /* renamed from: h  reason: collision with root package name */
        public final int f55472h;

        /* renamed from: i  reason: collision with root package name */
        public final io.bidmachine.media3.common.audio.a f55473i;

        /* renamed from: j  reason: collision with root package name */
        public final boolean f55474j;

        /* renamed from: k  reason: collision with root package name */
        public final boolean f55475k;

        /* renamed from: l  reason: collision with root package name */
        public final boolean f55476l;

        public h(io.bidmachine.media3.common.a aVar, int i10, int i11, int i12, int i13, int i14, int i15, int i16, io.bidmachine.media3.common.audio.a aVar2, boolean z10, boolean z11, boolean z12) {
            this.f55465a = aVar;
            this.f55466b = i10;
            this.f55467c = i11;
            this.f55468d = i12;
            this.f55469e = i13;
            this.f55470f = i14;
            this.f55471g = i15;
            this.f55472h = i16;
            this.f55473i = aVar2;
            this.f55474j = z10;
            this.f55475k = z11;
            this.f55476l = z12;
        }

        public AudioSink.a a() {
            int i10 = this.f55471g;
            int i11 = this.f55469e;
            int i12 = this.f55470f;
            boolean z10 = this.f55476l;
            boolean z11 = true;
            if (this.f55467c != 1) {
                z11 = false;
            }
            return new AudioSink.a(i10, i11, i12, z10, z11, this.f55472h);
        }

        public boolean b(h hVar) {
            if (hVar.f55467c == this.f55467c && hVar.f55471g == this.f55471g && hVar.f55469e == this.f55469e && hVar.f55470f == this.f55470f && hVar.f55468d == this.f55468d && hVar.f55474j == this.f55474j && hVar.f55475k == this.f55475k) {
                return true;
            }
            return false;
        }

        public h c(int i10) {
            return new h(this.f55465a, this.f55466b, this.f55467c, this.f55468d, this.f55469e, this.f55470f, this.f55471g, i10, this.f55473i, this.f55474j, this.f55475k, this.f55476l);
        }

        public long d(long j10) {
            return m0.e1(j10, this.f55469e);
        }

        public long e(long j10) {
            return m0.e1(j10, this.f55465a.F);
        }

        public boolean f() {
            if (this.f55467c == 1) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes8.dex */
    public static class i implements an.e {

        /* renamed from: a  reason: collision with root package name */
        private final AudioProcessor[] f55477a;

        /* renamed from: b  reason: collision with root package name */
        private final s f55478b;

        /* renamed from: c  reason: collision with root package name */
        private final io.bidmachine.media3.common.audio.d f55479c;

        public i(AudioProcessor... audioProcessorArr) {
            this(audioProcessorArr, new s(), new io.bidmachine.media3.common.audio.d());
        }

        @Override // an.e
        public boolean a(boolean z10) {
            this.f55478b.y(z10);
            return z10;
        }

        @Override // an.e
        public v b(v vVar) {
            this.f55479c.e(vVar.f72208a);
            this.f55479c.d(vVar.f72209b);
            return vVar;
        }

        @Override // an.e
        public AudioProcessor[] getAudioProcessors() {
            return this.f55477a;
        }

        @Override // an.e
        public long getMediaDuration(long j10) {
            if (this.f55479c.isActive()) {
                return this.f55479c.c(j10);
            }
            return j10;
        }

        @Override // an.e
        public long getSkippedOutputFrameCount() {
            return this.f55478b.p();
        }

        public i(AudioProcessor[] audioProcessorArr, s sVar, io.bidmachine.media3.common.audio.d dVar) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.f55477a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.f55478b = sVar;
            this.f55479c = dVar;
            audioProcessorArr2[audioProcessorArr.length] = sVar;
            audioProcessorArr2[audioProcessorArr.length + 1] = dVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class j {

        /* renamed from: a  reason: collision with root package name */
        public final v f55480a;

        /* renamed from: b  reason: collision with root package name */
        public final long f55481b;

        /* renamed from: c  reason: collision with root package name */
        public final long f55482c;

        /* renamed from: d  reason: collision with root package name */
        public long f55483d;

        private j(v vVar, long j10, long j11) {
            this.f55480a = vVar;
            this.f55481b = j10;
            this.f55482c = j11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(24)
    /* loaded from: classes8.dex */
    public static final class k {

        /* renamed from: a  reason: collision with root package name */
        private final AudioTrack f55484a;

        /* renamed from: b  reason: collision with root package name */
        private final io.bidmachine.media3.exoplayer.audio.b f55485b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private AudioRouting.OnRoutingChangedListener f55486c = new AudioRouting.OnRoutingChangedListener() { // from class: io.bidmachine.media3.exoplayer.audio.j
            @Override // android.media.AudioRouting.OnRoutingChangedListener
            public final void onRoutingChanged(AudioRouting audioRouting) {
                DefaultAudioSink.k.this.b(audioRouting);
            }
        };

        public k(AudioTrack audioTrack, io.bidmachine.media3.exoplayer.audio.b bVar) {
            this.f55484a = audioTrack;
            this.f55485b = bVar;
            audioTrack.addOnRoutingChangedListener(this.f55486c, new Handler(Looper.myLooper()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(AudioRouting audioRouting) {
            AudioDeviceInfo routedDevice;
            if (this.f55486c != null && (routedDevice = audioRouting.getRoutedDevice()) != null) {
                this.f55485b.i(routedDevice);
            }
        }

        public void c() {
            this.f55484a.removeOnRoutingChangedListener((AudioRouting.OnRoutingChangedListener) cn.a.e(this.f55486c));
            this.f55486c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class l<T extends Exception> {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private T f55487a;

        /* renamed from: b  reason: collision with root package name */
        private long f55488b = -9223372036854775807L;

        /* renamed from: c  reason: collision with root package name */
        private long f55489c = -9223372036854775807L;

        public void a() {
            this.f55487a = null;
            this.f55488b = -9223372036854775807L;
            this.f55489c = -9223372036854775807L;
        }

        public boolean b() {
            if (this.f55487a == null) {
                return false;
            }
            if (!DefaultAudioSink.B() && SystemClock.elapsedRealtime() >= this.f55489c) {
                return false;
            }
            return true;
        }

        public void c(T t10) throws Exception {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f55487a == null) {
                this.f55487a = t10;
            }
            if (this.f55488b == -9223372036854775807L && !DefaultAudioSink.B()) {
                this.f55488b = 200 + elapsedRealtime;
            }
            long j10 = this.f55488b;
            if (j10 != -9223372036854775807L && elapsedRealtime >= j10) {
                T t11 = this.f55487a;
                if (t11 != t10) {
                    t11.addSuppressed(t10);
                }
                T t12 = this.f55487a;
                a();
                throw t12;
            }
            this.f55489c = elapsedRealtime + 50;
        }
    }

    /* loaded from: classes8.dex */
    private final class m implements g.a {
        private m() {
        }

        @Override // io.bidmachine.media3.exoplayer.audio.g.a
        public void c(long j10) {
            if (DefaultAudioSink.this.f55446t != null) {
                DefaultAudioSink.this.f55446t.c(j10);
            }
        }

        @Override // io.bidmachine.media3.exoplayer.audio.g.a
        public void onInvalidLatency(long j10) {
            r.h("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j10);
        }

        @Override // io.bidmachine.media3.exoplayer.audio.g.a
        public void onPositionFramesMismatch(long j10, long j11, long j12, long j13) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j10 + ", " + j11 + ", " + j12 + ", " + j13 + ", " + DefaultAudioSink.this.M() + ", " + DefaultAudioSink.this.N();
            if (!DefaultAudioSink.f55412l0) {
                r.h("DefaultAudioSink", str);
                return;
            }
            throw new InvalidAudioTrackTimestampException(str);
        }

        @Override // io.bidmachine.media3.exoplayer.audio.g.a
        public void onSystemTimeUsMismatch(long j10, long j11, long j12, long j13) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j10 + ", " + j11 + ", " + j12 + ", " + j13 + ", " + DefaultAudioSink.this.M() + ", " + DefaultAudioSink.this.N();
            if (!DefaultAudioSink.f55412l0) {
                r.h("DefaultAudioSink", str);
                return;
            }
            throw new InvalidAudioTrackTimestampException(str);
        }

        @Override // io.bidmachine.media3.exoplayer.audio.g.a
        public void onUnderrun(int i10, long j10) {
            if (DefaultAudioSink.this.f55446t != null) {
                DefaultAudioSink.this.f55446t.onUnderrun(i10, j10, SystemClock.elapsedRealtime() - DefaultAudioSink.this.f55425e0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(29)
    /* loaded from: classes8.dex */
    public final class n {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f55491a = new Handler(Looper.myLooper());

        /* renamed from: b  reason: collision with root package name */
        private final AudioTrack$StreamEventCallback f55492b;

        /* loaded from: classes8.dex */
        class a extends AudioTrack$StreamEventCallback {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ DefaultAudioSink f55494a;

            a(DefaultAudioSink defaultAudioSink) {
                this.f55494a = defaultAudioSink;
            }

            public void onDataRequest(AudioTrack audioTrack, int i10) {
                if (audioTrack.equals(DefaultAudioSink.this.f55450x) && DefaultAudioSink.this.f55446t != null && DefaultAudioSink.this.X) {
                    DefaultAudioSink.this.f55446t.e();
                }
            }

            public void onPresentationEnded(AudioTrack audioTrack) {
                if (audioTrack.equals(DefaultAudioSink.this.f55450x)) {
                    DefaultAudioSink.this.W = true;
                }
            }

            public void onTearDown(AudioTrack audioTrack) {
                if (audioTrack.equals(DefaultAudioSink.this.f55450x) && DefaultAudioSink.this.f55446t != null && DefaultAudioSink.this.X) {
                    DefaultAudioSink.this.f55446t.e();
                }
            }
        }

        public n() {
            this.f55492b = new a(DefaultAudioSink.this);
        }

        public void a(AudioTrack audioTrack) {
            Handler handler = this.f55491a;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new androidx.emoji2.text.a(handler), this.f55492b);
        }

        public void b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.f55492b);
            this.f55491a.removeCallbacksAndMessages(null);
        }
    }

    static /* synthetic */ boolean B() {
        return P();
    }

    private void C(long j10) {
        v vVar;
        boolean z10;
        if (!n0()) {
            if (l0()) {
                vVar = this.f55418b.b(this.E);
            } else {
                vVar = v.f72205d;
            }
            this.E = vVar;
        } else {
            vVar = v.f72205d;
        }
        v vVar2 = vVar;
        if (l0()) {
            z10 = this.f55418b.a(this.F);
        } else {
            z10 = false;
        }
        this.F = z10;
        this.f55432i.add(new j(vVar2, Math.max(0L, j10), this.f55448v.d(N())));
        k0();
        AudioSink.b bVar = this.f55446t;
        if (bVar != null) {
            bVar.a(this.F);
        }
    }

    private long D(long j10) {
        while (!this.f55432i.isEmpty() && j10 >= this.f55432i.getFirst().f55482c) {
            this.D = this.f55432i.remove();
        }
        j jVar = this.D;
        long j11 = j10 - jVar.f55482c;
        long g02 = m0.g0(j11, jVar.f55480a.f72208a);
        if (this.f55432i.isEmpty()) {
            long mediaDuration = this.f55418b.getMediaDuration(j11);
            j jVar2 = this.D;
            long j12 = jVar2.f55481b + mediaDuration;
            jVar2.f55483d = mediaDuration - g02;
            return j12;
        }
        j jVar3 = this.D;
        return jVar3.f55481b + g02 + jVar3.f55483d;
    }

    private long E(long j10) {
        long skippedOutputFrameCount = this.f55418b.getSkippedOutputFrameCount();
        long d10 = j10 + this.f55448v.d(skippedOutputFrameCount);
        long j11 = this.f55433i0;
        if (skippedOutputFrameCount > j11) {
            long d11 = this.f55448v.d(skippedOutputFrameCount - j11);
            this.f55433i0 = skippedOutputFrameCount;
            O(d11);
        }
        return d10;
    }

    private AudioTrack F(AudioSink.a aVar, zm.c cVar, int i10, io.bidmachine.media3.common.a aVar2) throws AudioSink.InitializationException {
        try {
            AudioTrack a10 = this.f55444r.a(aVar, cVar, i10);
            int state = a10.getState();
            if (state == 1) {
                return a10;
            }
            try {
                a10.release();
            } catch (Exception unused) {
            }
            throw new AudioSink.InitializationException(state, aVar.f55407b, aVar.f55408c, aVar.f55406a, aVar2, aVar.f55410e, null);
        } catch (IllegalArgumentException | UnsupportedOperationException e10) {
            throw new AudioSink.InitializationException(0, aVar.f55407b, aVar.f55408c, aVar.f55406a, aVar2, aVar.f55410e, e10);
        }
    }

    private AudioTrack G(h hVar) throws AudioSink.InitializationException {
        try {
            AudioTrack F = F(hVar.a(), this.B, this.Z, hVar.f55465a);
            ExoPlayer.a aVar = this.f55443q;
            if (aVar != null) {
                aVar.y(T(F));
            }
            return F;
        } catch (AudioSink.InitializationException e10) {
            AudioSink.b bVar = this.f55446t;
            if (bVar != null) {
                bVar.b(e10);
            }
            throw e10;
        }
    }

    private AudioTrack H() throws AudioSink.InitializationException {
        try {
            return G((h) cn.a.e(this.f55448v));
        } catch (AudioSink.InitializationException e10) {
            h hVar = this.f55448v;
            if (hVar.f55472h > 1000000) {
                h c10 = hVar.c(TTVideoEngineInterface.PLAYER_TIME_BASE);
                try {
                    AudioTrack G = G(c10);
                    this.f55448v = c10;
                    return G;
                } catch (AudioSink.InitializationException e11) {
                    e10.addSuppressed(e11);
                    W();
                    throw e10;
                }
            }
            W();
            throw e10;
        }
    }

    private void I(long j10) throws AudioSink.WriteException {
        int o02;
        AudioSink.b bVar;
        boolean z10;
        if (this.T == null || this.f55440n.b()) {
            return;
        }
        int remaining = this.T.remaining();
        boolean z11 = false;
        if (this.f55421c0) {
            if (j10 != -9223372036854775807L) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.g(z10);
            if (j10 == Long.MIN_VALUE) {
                j10 = this.f55423d0;
            } else {
                this.f55423d0 = j10;
            }
            o02 = p0(this.f55450x, this.T, remaining, j10);
        } else {
            o02 = o0(this.f55450x, this.T, remaining);
        }
        this.f55425e0 = SystemClock.elapsedRealtime();
        if (o02 < 0) {
            if (R(o02)) {
                if (N() <= 0) {
                    if (T(this.f55450x)) {
                        W();
                    }
                }
                z11 = true;
            }
            AudioSink.WriteException writeException = new AudioSink.WriteException(o02, this.f55448v.f55465a, z11);
            AudioSink.b bVar2 = this.f55446t;
            if (bVar2 != null) {
                bVar2.b(writeException);
            }
            if (writeException.f55404b && this.f55416a != null) {
                this.f55451y = io.bidmachine.media3.exoplayer.audio.a.f55496c;
                throw writeException;
            } else {
                this.f55440n.c(writeException);
                return;
            }
        }
        this.f55440n.a();
        if (T(this.f55450x)) {
            if (this.L > 0) {
                this.f55429g0 = false;
            }
            if (this.X && (bVar = this.f55446t) != null && o02 < remaining && !this.f55429g0) {
                bVar.d();
            }
        }
        int i10 = this.f55448v.f55467c;
        if (i10 == 0) {
            this.K += o02;
        }
        if (o02 == remaining) {
            if (i10 != 0) {
                if (this.T == this.R) {
                    z11 = true;
                }
                cn.a.g(z11);
                this.L += this.M * this.S;
            }
            this.T = null;
        }
    }

    private boolean J() throws AudioSink.WriteException {
        if (!this.f55449w.f()) {
            I(Long.MIN_VALUE);
            if (this.T != null) {
                return false;
            }
            return true;
        }
        this.f55449w.h();
        c0(Long.MIN_VALUE);
        if (!this.f55449w.e()) {
            return false;
        }
        ByteBuffer byteBuffer = this.T;
        if (byteBuffer != null && byteBuffer.hasRemaining()) {
            return false;
        }
        return true;
    }

    private static int K(int i10, int i11, int i12) {
        boolean z10;
        int minBufferSize = AudioTrack.getMinBufferSize(i10, i11, i12);
        if (minBufferSize != -2) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        return minBufferSize;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    private static int L(int r2, java.nio.ByteBuffer r3) {
        /*
            r0 = 20
            if (r2 == r0) goto L63
            r0 = 30
            if (r2 == r0) goto L5e
            r0 = -1
            r1 = 1024(0x400, float:1.435E-42)
            switch(r2) {
                case 5: goto L59;
                case 6: goto L59;
                case 7: goto L5e;
                case 8: goto L5e;
                case 9: goto L44;
                case 10: goto L43;
                case 11: goto L40;
                case 12: goto L40;
                default: goto Le;
            }
        Le:
            switch(r2) {
                case 14: goto L31;
                case 15: goto L2e;
                case 16: goto L2d;
                case 17: goto L28;
                case 18: goto L59;
                default: goto L11;
            }
        L11:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Unexpected audio encoding: "
            r0.append(r1)
            r0.append(r2)
            java.lang.String r2 = r0.toString()
            r3.<init>(r2)
            throw r3
        L28:
            int r2 = ao.c.e(r3)
            return r2
        L2d:
            return r1
        L2e:
            r2 = 512(0x200, float:7.175E-43)
            return r2
        L31:
            int r2 = ao.b.b(r3)
            if (r2 != r0) goto L39
            r2 = 0
            goto L3f
        L39:
            int r2 = ao.b.i(r3, r2)
            int r2 = r2 * 16
        L3f:
            return r2
        L40:
            r2 = 2048(0x800, float:2.87E-42)
            return r2
        L43:
            return r1
        L44:
            int r2 = r3.position()
            int r2 = cn.m0.P(r3, r2)
            int r2 = ao.f0.m(r2)
            if (r2 == r0) goto L53
            return r2
        L53:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            r2.<init>()
            throw r2
        L59:
            int r2 = ao.b.e(r3)
            return r2
        L5e:
            int r2 = ao.o.f(r3)
            return r2
        L63:
            int r2 = ao.h0.h(r3)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.L(int, java.nio.ByteBuffer):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long M() {
        h hVar = this.f55448v;
        if (hVar.f55467c == 0) {
            return this.I / hVar.f55466b;
        }
        return this.J;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long N() {
        h hVar = this.f55448v;
        if (hVar.f55467c == 0) {
            return m0.l(this.K, hVar.f55468d);
        }
        return this.L;
    }

    private void O(long j10) {
        this.f55435j0 += j10;
        if (this.f55437k0 == null) {
            this.f55437k0 = new Handler(Looper.myLooper());
        }
        this.f55437k0.removeCallbacksAndMessages(null);
        this.f55437k0.postDelayed(new Runnable() { // from class: in.p
            @Override // java.lang.Runnable
            public final void run() {
                DefaultAudioSink.this.Y();
            }
        }, 100L);
    }

    private static boolean P() {
        boolean z10;
        synchronized (f55413m0) {
            if (f55415o0 > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    private boolean Q() throws AudioSink.InitializationException {
        boolean z10;
        io.bidmachine.media3.exoplayer.audio.b bVar;
        b2 b2Var;
        if (this.f55439m.b()) {
            return false;
        }
        AudioTrack H = H();
        this.f55450x = H;
        if (T(H)) {
            d0(this.f55450x);
            h hVar = this.f55448v;
            if (hVar.f55475k) {
                AudioTrack audioTrack = this.f55450x;
                io.bidmachine.media3.common.a aVar = hVar.f55465a;
                audioTrack.setOffloadDelayPadding(aVar.H, aVar.I);
            }
        }
        int i10 = m0.f3614a;
        if (i10 >= 31 && (b2Var = this.f55445s) != null) {
            c.a(this.f55450x, b2Var);
        }
        this.Z = this.f55450x.getAudioSessionId();
        io.bidmachine.media3.exoplayer.audio.g gVar = this.f55430h;
        AudioTrack audioTrack2 = this.f55450x;
        h hVar2 = this.f55448v;
        if (hVar2.f55467c == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        gVar.s(audioTrack2, z10, hVar2.f55471g, hVar2.f55468d, hVar2.f55472h);
        j0();
        int i11 = this.f55417a0.f71836a;
        if (i11 != 0) {
            this.f55450x.attachAuxEffect(i11);
            this.f55450x.setAuxEffectSendLevel(this.f55417a0.f71837b);
        }
        io.bidmachine.media3.exoplayer.audio.c cVar = this.f55419b0;
        if (cVar != null && i10 >= 23) {
            b.b(this.f55450x, cVar);
            io.bidmachine.media3.exoplayer.audio.b bVar2 = this.f55452z;
            if (bVar2 != null) {
                bVar2.i(this.f55419b0.f55520a);
            }
        }
        if (i10 >= 24 && (bVar = this.f55452z) != null) {
            this.A = new k(this.f55450x, bVar);
        }
        this.O = true;
        AudioSink.b bVar3 = this.f55446t;
        if (bVar3 != null) {
            bVar3.n(this.f55448v.a());
        }
        return true;
    }

    private static boolean R(int i10) {
        if ((m0.f3614a >= 24 && i10 == -6) || i10 == -32) {
            return true;
        }
        return false;
    }

    private boolean S() {
        if (this.f55450x != null) {
            return true;
        }
        return false;
    }

    private static boolean T(AudioTrack audioTrack) {
        boolean isOffloadedPlayback;
        if (m0.f3614a >= 29) {
            isOffloadedPlayback = audioTrack.isOffloadedPlayback();
            if (isOffloadedPlayback) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void V(AudioTrack audioTrack, final AudioSink.b bVar, Handler handler, final AudioSink.a aVar) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (bVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: in.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioSink.b.this.l(aVar);
                    }
                });
            }
            synchronized (f55413m0) {
                try {
                    int i10 = f55415o0 - 1;
                    f55415o0 = i10;
                    if (i10 == 0) {
                        f55414n0.shutdown();
                        f55414n0 = null;
                    }
                } finally {
                }
            }
        } catch (Throwable th2) {
            if (bVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: in.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioSink.b.this.l(aVar);
                    }
                });
            }
            synchronized (f55413m0) {
                try {
                    int i11 = f55415o0 - 1;
                    f55415o0 = i11;
                    if (i11 == 0) {
                        f55414n0.shutdown();
                        f55414n0 = null;
                    }
                    throw th2;
                } finally {
                }
            }
        }
    }

    private void W() {
        if (!this.f55448v.f()) {
            return;
        }
        this.f55427f0 = true;
    }

    private ByteBuffer X(ByteBuffer byteBuffer) {
        if (this.f55448v.f55467c != 0) {
            return byteBuffer;
        }
        int F = (int) m0.F(m0.S0(20L), this.f55448v.f55469e);
        long N = N();
        if (N >= F) {
            return byteBuffer;
        }
        h hVar = this.f55448v;
        return in.r.a(byteBuffer, hVar.f55471g, hVar.f55468d, (int) N, F);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y() {
        if (this.f55435j0 >= PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
            this.f55446t.f();
            this.f55435j0 = 0L;
        }
    }

    private void Z() {
        if (this.f55452z == null && this.f55416a != null) {
            this.f55431h0 = Looper.myLooper();
            io.bidmachine.media3.exoplayer.audio.b bVar = new io.bidmachine.media3.exoplayer.audio.b(this.f55416a, new b.f() { // from class: in.n
                @Override // io.bidmachine.media3.exoplayer.audio.b.f
                public final void a(io.bidmachine.media3.exoplayer.audio.a aVar) {
                    DefaultAudioSink.this.a0(aVar);
                }
            }, this.B, this.f55419b0);
            this.f55452z = bVar;
            this.f55451y = bVar.g();
        }
        cn.a.e(this.f55451y);
    }

    private void b0() {
        if (!this.V) {
            this.V = true;
            this.f55430h.g(N());
            if (T(this.f55450x)) {
                this.W = false;
            }
            this.f55450x.stop();
            this.H = 0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003a, code lost:
        r0 = r2.R;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003c, code lost:
        if (r0 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0042, code lost:
        if (r0.hasRemaining() != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0045, code lost:
        r2.f55449w.i(r2.R);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c0(long r3) throws io.bidmachine.media3.exoplayer.audio.AudioSink.WriteException {
        /*
            r2 = this;
            r2.I(r3)
            java.nio.ByteBuffer r0 = r2.T
            if (r0 == 0) goto L8
            return
        L8:
            io.bidmachine.media3.common.audio.a r0 = r2.f55449w
            boolean r0 = r0.f()
            if (r0 != 0) goto L1b
            java.nio.ByteBuffer r0 = r2.R
            if (r0 == 0) goto L1a
            r2.i0(r0)
            r2.I(r3)
        L1a:
            return
        L1b:
            io.bidmachine.media3.common.audio.a r0 = r2.f55449w
            boolean r0 = r0.e()
            if (r0 != 0) goto L4d
        L23:
            io.bidmachine.media3.common.audio.a r0 = r2.f55449w
            java.nio.ByteBuffer r0 = r0.d()
            boolean r1 = r0.hasRemaining()
            if (r1 == 0) goto L3a
            r2.i0(r0)
            r2.I(r3)
            java.nio.ByteBuffer r0 = r2.T
            if (r0 == 0) goto L23
            return
        L3a:
            java.nio.ByteBuffer r0 = r2.R
            if (r0 == 0) goto L4d
            boolean r0 = r0.hasRemaining()
            if (r0 != 0) goto L45
            goto L4d
        L45:
            io.bidmachine.media3.common.audio.a r0 = r2.f55449w
            java.nio.ByteBuffer r1 = r2.R
            r0.i(r1)
            goto L1b
        L4d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.c0(long):void");
    }

    @RequiresApi(29)
    private void d0(AudioTrack audioTrack) {
        if (this.f55438l == null) {
            this.f55438l = new n();
        }
        this.f55438l.a(audioTrack);
    }

    private static void e0(final AudioTrack audioTrack, @Nullable final AudioSink.b bVar, final AudioSink.a aVar) {
        final Handler handler = new Handler(Looper.myLooper());
        synchronized (f55413m0) {
            try {
                if (f55414n0 == null) {
                    f55414n0 = m0.U0("ExoPlayer:AudioTrackReleaseThread");
                }
                f55415o0++;
                f55414n0.schedule(new Runnable() { // from class: in.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultAudioSink.V(audioTrack, bVar, handler, aVar);
                    }
                }, 20L, TimeUnit.MILLISECONDS);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void f0() {
        this.I = 0L;
        this.J = 0L;
        this.K = 0L;
        this.L = 0L;
        this.f55429g0 = false;
        this.M = 0;
        this.D = new j(this.E, 0L, 0L);
        this.P = 0L;
        this.C = null;
        this.f55432i.clear();
        this.R = null;
        this.S = 0;
        this.T = null;
        this.V = false;
        this.U = false;
        this.W = false;
        this.G = null;
        this.H = 0;
        this.f55424e.i();
        k0();
    }

    private void g0(v vVar) {
        j jVar = new j(vVar, -9223372036854775807L, -9223372036854775807L);
        if (S()) {
            this.C = jVar;
        } else {
            this.D = jVar;
        }
    }

    @RequiresApi(23)
    private void h0() {
        if (S()) {
            try {
                this.f55450x.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(this.E.f72208a).setPitch(this.E.f72209b).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e10) {
                r.i("DefaultAudioSink", "Failed to set playback params", e10);
            }
            v vVar = new v(this.f55450x.getPlaybackParams().getSpeed(), this.f55450x.getPlaybackParams().getPitch());
            this.E = vVar;
            this.f55430h.t(vVar.f72208a);
        }
    }

    private void i0(ByteBuffer byteBuffer) {
        boolean z10;
        if (this.T == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        this.T = X(byteBuffer);
    }

    private void j0() {
        if (S()) {
            this.f55450x.setVolume(this.Q);
        }
    }

    private void k0() {
        io.bidmachine.media3.common.audio.a aVar = this.f55448v.f55473i;
        this.f55449w = aVar;
        aVar.b();
    }

    private boolean l0() {
        if (!this.f55421c0) {
            h hVar = this.f55448v;
            if (hVar.f55467c == 0 && !m0(hVar.f55465a.G)) {
                return true;
            }
        }
        return false;
    }

    private boolean m0(int i10) {
        if (this.f55420c && m0.F0(i10)) {
            return true;
        }
        return false;
    }

    private boolean n0() {
        h hVar = this.f55448v;
        if (hVar != null && hVar.f55474j && m0.f3614a >= 23) {
            return true;
        }
        return false;
    }

    private static int o0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i10) {
        return audioTrack.write(byteBuffer, i10, 1);
    }

    private int p0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i10, long j10) {
        if (m0.f3614a >= 26) {
            return audioTrack.write(byteBuffer, i10, 1, j10 * 1000);
        }
        if (this.G == null) {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            this.G = allocate;
            allocate.order(ByteOrder.BIG_ENDIAN);
            this.G.putInt(1431633921);
        }
        if (this.H == 0) {
            this.G.putInt(4, i10);
            this.G.putLong(8, j10 * 1000);
            this.G.position(0);
            this.H = i10;
        }
        int remaining = this.G.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.G, remaining, 1);
            if (write < 0) {
                this.H = 0;
                return write;
            } else if (write < remaining) {
                return 0;
            }
        }
        int o02 = o0(audioTrack, byteBuffer, i10);
        if (o02 < 0) {
            this.H = 0;
            return o02;
        }
        this.H -= o02;
        return o02;
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public boolean a(io.bidmachine.media3.common.a aVar) {
        if (m(aVar) != 0) {
            return true;
        }
        return false;
    }

    public void a0(io.bidmachine.media3.exoplayer.audio.a aVar) {
        String name;
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f55431h0;
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
        io.bidmachine.media3.exoplayer.audio.a aVar2 = this.f55451y;
        if (aVar2 != null && !aVar.equals(aVar2)) {
            this.f55451y = aVar;
            AudioSink.b bVar = this.f55446t;
            if (bVar != null) {
                bVar.g();
            }
        }
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void b(v vVar) {
        this.E = new v(m0.o(vVar.f72208a, 0.1f, 8.0f), m0.o(vVar.f72209b, 0.1f, 8.0f));
        if (n0()) {
            h0();
        } else {
            g0(vVar);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void c() {
        cn.a.g(this.Y);
        if (!this.f55421c0) {
            this.f55421c0 = true;
            flush();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public boolean d(ByteBuffer byteBuffer, long j10, int i10) throws AudioSink.InitializationException, AudioSink.WriteException {
        boolean z10;
        boolean z11;
        ByteBuffer byteBuffer2 = this.R;
        if (byteBuffer2 != null && byteBuffer != byteBuffer2) {
            z10 = false;
        } else {
            z10 = true;
        }
        cn.a.a(z10);
        if (this.f55447u != null) {
            if (!J()) {
                return false;
            }
            if (!this.f55447u.b(this.f55448v)) {
                b0();
                if (hasPendingData()) {
                    return false;
                }
                flush();
            } else {
                this.f55448v = this.f55447u;
                this.f55447u = null;
                AudioTrack audioTrack = this.f55450x;
                if (audioTrack != null && T(audioTrack) && this.f55448v.f55475k) {
                    if (this.f55450x.getPlayState() == 3) {
                        this.f55450x.setOffloadEndOfStream();
                        this.f55430h.a();
                    }
                    AudioTrack audioTrack2 = this.f55450x;
                    io.bidmachine.media3.common.a aVar = this.f55448v.f55465a;
                    audioTrack2.setOffloadDelayPadding(aVar.H, aVar.I);
                    this.f55429g0 = true;
                }
            }
            C(j10);
        }
        if (!S()) {
            try {
                if (!Q()) {
                    return false;
                }
            } catch (AudioSink.InitializationException e10) {
                if (!e10.f55399b) {
                    this.f55439m.c(e10);
                    return false;
                }
                throw e10;
            }
        }
        this.f55439m.a();
        if (this.O) {
            this.P = Math.max(0L, j10);
            this.N = false;
            this.O = false;
            if (n0()) {
                h0();
            }
            C(j10);
            if (this.X) {
                play();
            }
        }
        if (!this.f55430h.k(N())) {
            return false;
        }
        if (this.R == null) {
            if (byteBuffer.order() == ByteOrder.LITTLE_ENDIAN) {
                z11 = true;
            } else {
                z11 = false;
            }
            cn.a.a(z11);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            h hVar = this.f55448v;
            if (hVar.f55467c != 0 && this.M == 0) {
                int L = L(hVar.f55471g, byteBuffer);
                this.M = L;
                if (L == 0) {
                    return true;
                }
            }
            if (this.C != null) {
                if (!J()) {
                    return false;
                }
                C(j10);
                this.C = null;
            }
            long e11 = this.P + this.f55448v.e(M() - this.f55424e.h());
            if (!this.N && Math.abs(e11 - j10) > 200000) {
                AudioSink.b bVar = this.f55446t;
                if (bVar != null) {
                    bVar.b(new AudioSink.UnexpectedDiscontinuityException(j10, e11));
                }
                this.N = true;
            }
            if (this.N) {
                if (!J()) {
                    return false;
                }
                long j11 = j10 - e11;
                this.P += j11;
                this.N = false;
                C(j10);
                AudioSink.b bVar2 = this.f55446t;
                if (bVar2 != null && j11 != 0) {
                    bVar2.onPositionDiscontinuity();
                }
            }
            if (this.f55448v.f55467c == 0) {
                this.I += byteBuffer.remaining();
            } else {
                this.J += this.M * i10;
            }
            this.R = byteBuffer;
            this.S = i10;
        }
        c0(j10);
        if (!this.R.hasRemaining()) {
            this.R = null;
            this.S = 0;
            return true;
        } else if (!this.f55430h.j(N())) {
            return false;
        } else {
            r.h("DefaultAudioSink", "Resetting stalled audio track");
            flush();
            return true;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void disableTunneling() {
        if (this.f55421c0) {
            this.f55421c0 = false;
            flush();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void f(boolean z10) {
        v vVar;
        this.F = z10;
        if (n0()) {
            vVar = v.f72205d;
        } else {
            vVar = this.E;
        }
        g0(vVar);
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void flush() {
        k kVar;
        if (S()) {
            f0();
            if (this.f55430h.i()) {
                this.f55450x.pause();
            }
            if (T(this.f55450x)) {
                ((n) cn.a.e(this.f55438l)).b(this.f55450x);
            }
            AudioSink.a a10 = this.f55448v.a();
            h hVar = this.f55447u;
            if (hVar != null) {
                this.f55448v = hVar;
                this.f55447u = null;
            }
            this.f55430h.q();
            if (m0.f3614a >= 24 && (kVar = this.A) != null) {
                kVar.c();
                this.A = null;
            }
            e0(this.f55450x, this.f55446t, a10);
            this.f55450x = null;
        }
        this.f55440n.a();
        this.f55439m.a();
        this.f55433i0 = 0L;
        this.f55435j0 = 0L;
        Handler handler = this.f55437k0;
        if (handler != null) {
            ((Handler) cn.a.e(handler)).removeCallbacksAndMessages(null);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public long g() {
        long d10;
        if (!S()) {
            return -9223372036854775807L;
        }
        if (m0.f3614a >= 23) {
            return b.a(this.f55450x, this.f55448v);
        }
        h hVar = this.f55448v;
        if (hVar.f55467c == 0) {
            d10 = hVar.f55469e * hVar.f55468d;
        } else {
            d10 = io.bidmachine.media3.exoplayer.audio.k.d(hVar.f55471g);
        }
        return m0.h1(this.f55448v.f55472h, 1000000L, d10, RoundingMode.DOWN);
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public long getCurrentPositionUs(boolean z10) {
        if (S() && !this.O) {
            return E(D(Math.min(this.f55430h.c(), this.f55448v.d(N()))));
        }
        return Long.MIN_VALUE;
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public v getPlaybackParameters() {
        return this.E;
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    @RequiresApi(29)
    public void h(int i10) {
        boolean z10;
        if (m0.f3614a >= 29) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        this.f55436k = i10;
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void handleDiscontinuity() {
        this.N = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
        if (r3.W != false) goto L13;
     */
    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hasPendingData() {
        /*
            r3 = this;
            boolean r0 = r3.S()
            if (r0 == 0) goto L26
            int r0 = cn.m0.f3614a
            r1 = 29
            if (r0 < r1) goto L18
            android.media.AudioTrack r0 = r3.f55450x
            boolean r0 = q5.y.a(r0)
            if (r0 == 0) goto L18
            boolean r0 = r3.W
            if (r0 != 0) goto L26
        L18:
            io.bidmachine.media3.exoplayer.audio.g r0 = r3.f55430h
            long r1 = r3.N()
            boolean r0 = r0.h(r1)
            if (r0 == 0) goto L26
            r0 = 1
            goto L27
        L26:
            r0 = 0
        L27:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.hasPendingData():boolean");
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void i(AudioSink.b bVar) {
        this.f55446t = bVar;
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public boolean isEnded() {
        if (S() && (!this.U || hasPendingData())) {
            return false;
        }
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public io.bidmachine.media3.exoplayer.audio.d j(io.bidmachine.media3.common.a aVar) {
        if (this.f55427f0) {
            return io.bidmachine.media3.exoplayer.audio.d.f55521d;
        }
        return this.f55442p.a(aVar, this.B);
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void k(zm.d dVar) {
        if (this.f55417a0.equals(dVar)) {
            return;
        }
        int i10 = dVar.f71836a;
        float f10 = dVar.f71837b;
        AudioTrack audioTrack = this.f55450x;
        if (audioTrack != null) {
            if (this.f55417a0.f71836a != i10) {
                audioTrack.attachAuxEffect(i10);
            }
            if (i10 != 0) {
                this.f55450x.setAuxEffectSendLevel(f10);
            }
        }
        this.f55417a0 = dVar;
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void l(@Nullable b2 b2Var) {
        this.f55445s = b2Var;
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public int m(io.bidmachine.media3.common.a aVar) {
        Z();
        if (MimeTypes.AUDIO_RAW.equals(aVar.f55174o)) {
            if (!m0.G0(aVar.G)) {
                r.h("DefaultAudioSink", "Invalid PCM encoding: " + aVar.G);
                return 0;
            }
            int i10 = aVar.G;
            if (i10 == 2 || (this.f55420c && i10 == 4)) {
                return 2;
            }
            return 1;
        } else if (!this.f55451y.j(aVar, this.B)) {
            return 0;
        } else {
            return 2;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void n(zm.c cVar) {
        if (this.B.equals(cVar)) {
            return;
        }
        this.B = cVar;
        if (this.f55421c0) {
            return;
        }
        io.bidmachine.media3.exoplayer.audio.b bVar = this.f55452z;
        if (bVar != null) {
            bVar.h(cVar);
        }
        flush();
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void o(io.bidmachine.media3.common.a aVar, int i10, @Nullable int[] iArr) throws AudioSink.ConfigurationException {
        io.bidmachine.media3.exoplayer.audio.d dVar;
        io.bidmachine.media3.common.audio.a aVar2;
        int i11;
        int i12;
        boolean z10;
        int i13;
        int intValue;
        int i14;
        boolean z11;
        int i15;
        int i16;
        double d10;
        int i17;
        int i18;
        int i19;
        int i20;
        int a10;
        Z();
        if (MimeTypes.AUDIO_RAW.equals(aVar.f55174o)) {
            cn.a.a(m0.G0(aVar.G));
            i11 = m0.k0(aVar.G, aVar.E);
            ImmutableList.a aVar3 = new ImmutableList.a();
            if (m0(aVar.G)) {
                aVar3.j(this.f55428g);
            } else {
                aVar3.j(this.f55426f);
                aVar3.i(this.f55418b.getAudioProcessors());
            }
            io.bidmachine.media3.common.audio.a aVar4 = new io.bidmachine.media3.common.audio.a(aVar3.k());
            if (aVar4.equals(this.f55449w)) {
                aVar4 = this.f55449w;
            }
            this.f55424e.j(aVar.H, aVar.I);
            this.f55422d.h(iArr);
            try {
                AudioProcessor.a a11 = aVar4.a(new AudioProcessor.a(aVar));
                int i21 = a11.f55217c;
                int i22 = a11.f55215a;
                int M = m0.M(a11.f55216b);
                i15 = 0;
                z10 = false;
                i12 = m0.k0(i21, a11.f55216b);
                aVar2 = aVar4;
                i13 = i22;
                intValue = M;
                z11 = this.f55434j;
                i14 = i21;
            } catch (AudioProcessor.UnhandledAudioFormatException e10) {
                throw new AudioSink.ConfigurationException(e10, aVar);
            }
        } else {
            io.bidmachine.media3.common.audio.a aVar5 = new io.bidmachine.media3.common.audio.a(ImmutableList.A());
            int i23 = aVar.F;
            if (this.f55436k != 0) {
                dVar = j(aVar);
            } else {
                dVar = io.bidmachine.media3.exoplayer.audio.d.f55521d;
            }
            if (this.f55436k != 0 && dVar.f55522a) {
                int f10 = u.f((String) cn.a.e(aVar.f55174o), aVar.f55170k);
                int M2 = m0.M(aVar.E);
                aVar2 = aVar5;
                i15 = 1;
                z11 = true;
                i11 = -1;
                i12 = -1;
                i13 = i23;
                z10 = dVar.f55523b;
                i14 = f10;
                intValue = M2;
            } else {
                Pair<Integer, Integer> h10 = this.f55451y.h(aVar, this.B);
                if (h10 != null) {
                    int intValue2 = ((Integer) h10.first).intValue();
                    aVar2 = aVar5;
                    i11 = -1;
                    i12 = -1;
                    z10 = false;
                    i13 = i23;
                    intValue = ((Integer) h10.second).intValue();
                    i14 = intValue2;
                    z11 = this.f55434j;
                    i15 = 2;
                } else {
                    throw new AudioSink.ConfigurationException("Unable to configure passthrough for: " + aVar, aVar);
                }
            }
        }
        if (i14 != 0) {
            if (intValue != 0) {
                int i24 = aVar.f55169j;
                if (MimeTypes.AUDIO_DTS_EXPRESS.equals(aVar.f55174o) && i24 == -1) {
                    i24 = 768000;
                }
                int i25 = i24;
                if (i10 != 0) {
                    a10 = i10;
                    i17 = i14;
                    i18 = intValue;
                    i19 = i12;
                    i20 = i13;
                } else {
                    e eVar = this.f55441o;
                    int K = K(i13, intValue, i14);
                    if (i12 != -1) {
                        i16 = i12;
                    } else {
                        i16 = 1;
                    }
                    if (z11) {
                        d10 = 8.0d;
                    } else {
                        d10 = 1.0d;
                    }
                    i17 = i14;
                    i18 = intValue;
                    i19 = i12;
                    i20 = i13;
                    a10 = eVar.a(K, i14, i15, i16, i13, i25, d10);
                }
                this.f55427f0 = false;
                h hVar = new h(aVar, i11, i15, i19, i20, i18, i17, a10, aVar2, z11, z10, this.f55421c0);
                if (S()) {
                    this.f55447u = hVar;
                    return;
                } else {
                    this.f55448v = hVar;
                    return;
                }
            }
            throw new AudioSink.ConfigurationException("Invalid output channel config (mode=" + i15 + ") for: " + aVar, aVar);
        }
        throw new AudioSink.ConfigurationException("Invalid output encoding (mode=" + i15 + ") for: " + aVar, aVar);
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void p(cn.h hVar) {
        this.f55430h.u(hVar);
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void pause() {
        this.X = false;
        if (S()) {
            if (this.f55430h.p() || T(this.f55450x)) {
                this.f55450x.pause();
            }
        }
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void play() {
        this.X = true;
        if (S()) {
            this.f55430h.v();
            this.f55450x.play();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void playToEndOfStream() throws AudioSink.WriteException {
        if (!this.U && S() && J()) {
            b0();
            this.U = true;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    @RequiresApi(29)
    public void q(int i10, int i11) {
        h hVar;
        AudioTrack audioTrack = this.f55450x;
        if (audioTrack != null && T(audioTrack) && (hVar = this.f55448v) != null && hVar.f55475k) {
            this.f55450x.setOffloadDelayPadding(i10, i11);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void release() {
        io.bidmachine.media3.exoplayer.audio.b bVar = this.f55452z;
        if (bVar != null) {
            bVar.j();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void reset() {
        flush();
        y<AudioProcessor> it = this.f55426f.iterator();
        while (it.hasNext()) {
            it.next().reset();
        }
        y<AudioProcessor> it2 = this.f55428g.iterator();
        while (it2.hasNext()) {
            it2.next().reset();
        }
        io.bidmachine.media3.common.audio.a aVar = this.f55449w;
        if (aVar != null) {
            aVar.j();
        }
        this.X = false;
        this.f55427f0 = false;
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void setAudioSessionId(int i10) {
        boolean z10;
        if (this.Z != i10) {
            this.Z = i10;
            if (i10 != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.Y = z10;
            flush();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    @RequiresApi(23)
    public void setPreferredDevice(@Nullable AudioDeviceInfo audioDeviceInfo) {
        io.bidmachine.media3.exoplayer.audio.c cVar;
        if (audioDeviceInfo == null) {
            cVar = null;
        } else {
            cVar = new io.bidmachine.media3.exoplayer.audio.c(audioDeviceInfo);
        }
        this.f55419b0 = cVar;
        io.bidmachine.media3.exoplayer.audio.b bVar = this.f55452z;
        if (bVar != null) {
            bVar.i(audioDeviceInfo);
        }
        AudioTrack audioTrack = this.f55450x;
        if (audioTrack != null) {
            b.b(audioTrack, this.f55419b0);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.audio.AudioSink
    public void setVolume(float f10) {
        if (this.Q != f10) {
            this.Q = f10;
            j0();
        }
    }

    private DefaultAudioSink(g gVar) {
        Context context = gVar.f55455a;
        this.f55416a = context;
        this.B = zm.c.f71814g;
        this.f55451y = context != null ? null : gVar.f55456b;
        this.f55418b = gVar.f55457c;
        this.f55420c = gVar.f55458d;
        this.f55434j = m0.f3614a >= 23 && gVar.f55459e;
        this.f55436k = 0;
        this.f55441o = gVar.f55461g;
        this.f55442p = (d) cn.a.e(gVar.f55463i);
        this.f55430h = new io.bidmachine.media3.exoplayer.audio.g(new m());
        io.bidmachine.media3.exoplayer.audio.h hVar = new io.bidmachine.media3.exoplayer.audio.h();
        this.f55422d = hVar;
        o oVar = new o();
        this.f55424e = oVar;
        this.f55426f = ImmutableList.D(new io.bidmachine.media3.common.audio.e(), hVar, oVar);
        this.f55428g = ImmutableList.D(new io.bidmachine.media3.exoplayer.audio.n(), hVar, oVar);
        this.Q = 1.0f;
        this.Z = 0;
        this.f55417a0 = new zm.d(0, 0.0f);
        v vVar = v.f72205d;
        this.D = new j(vVar, 0L, 0L);
        this.E = vVar;
        this.F = false;
        this.f55432i = new ArrayDeque<>();
        this.f55439m = new l<>();
        this.f55440n = new l<>();
        this.f55443q = gVar.f55464j;
        this.f55444r = gVar.f55462h;
    }
}
