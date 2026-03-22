package hn;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.common.collect.ImmutableList;
import com.huawei.hms.support.api.entity.auth.AuthCode;
import com.ss.ttm.player.MediaPlayer;
import hn.a2;
import hn.b;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.PlaybackException;
import io.bidmachine.media3.datasource.FileDataSource;
import io.bidmachine.media3.datasource.HttpDataSource$HttpDataSourceException;
import io.bidmachine.media3.datasource.HttpDataSource$InvalidContentTypeException;
import io.bidmachine.media3.datasource.HttpDataSource$InvalidResponseCodeException;
import io.bidmachine.media3.datasource.UdpDataSource;
import io.bidmachine.media3.exoplayer.ExoPlaybackException;
import io.bidmachine.media3.exoplayer.audio.AudioSink;
import io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager;
import io.bidmachine.media3.exoplayer.drm.DrmSession;
import io.bidmachine.media3.exoplayer.drm.UnsupportedDrmException;
import io.bidmachine.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer;
import io.bidmachine.media3.exoplayer.source.r;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Executor;
import p5.i3;
import p5.m2;
import p5.m3;
import p5.x2;
import zm.a0;
import zm.e0;
import zm.q;
import zm.w;
/* compiled from: MediaMetricsListener.java */
@RequiresApi(31)
/* loaded from: classes8.dex */
public final class z1 implements hn.b, a2.a {
    private int A;
    private boolean B;

    /* renamed from: a  reason: collision with root package name */
    private final Context f53135a;

    /* renamed from: c  reason: collision with root package name */
    private final a2 f53137c;

    /* renamed from: d  reason: collision with root package name */
    private final PlaybackSession f53138d;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private String f53144j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private PlaybackMetrics.Builder f53145k;

    /* renamed from: l  reason: collision with root package name */
    private int f53146l;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private PlaybackException f53149o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private b f53150p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private b f53151q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private b f53152r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private io.bidmachine.media3.common.a f53153s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private io.bidmachine.media3.common.a f53154t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private io.bidmachine.media3.common.a f53155u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f53156v;

    /* renamed from: w  reason: collision with root package name */
    private int f53157w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f53158x;

    /* renamed from: y  reason: collision with root package name */
    private int f53159y;

    /* renamed from: z  reason: collision with root package name */
    private int f53160z;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f53136b = cn.b.a();

    /* renamed from: f  reason: collision with root package name */
    private final a0.c f53140f = new a0.c();

    /* renamed from: g  reason: collision with root package name */
    private final a0.b f53141g = new a0.b();

    /* renamed from: i  reason: collision with root package name */
    private final HashMap<String, Long> f53143i = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private final HashMap<String, Long> f53142h = new HashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private final long f53139e = SystemClock.elapsedRealtime();

    /* renamed from: m  reason: collision with root package name */
    private int f53147m = 0;

    /* renamed from: n  reason: collision with root package name */
    private int f53148n = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaMetricsListener.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f53161a;

        /* renamed from: b  reason: collision with root package name */
        public final int f53162b;

        public a(int i10, int i11) {
            this.f53161a = i10;
            this.f53162b = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaMetricsListener.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final io.bidmachine.media3.common.a f53163a;

        /* renamed from: b  reason: collision with root package name */
        public final int f53164b;

        /* renamed from: c  reason: collision with root package name */
        public final String f53165c;

        public b(io.bidmachine.media3.common.a aVar, int i10, String str) {
            this.f53163a = aVar;
            this.f53164b = i10;
            this.f53165c = str;
        }
    }

    private z1(Context context, PlaybackSession playbackSession) {
        this.f53135a = context.getApplicationContext();
        this.f53138d = playbackSession;
        t1 t1Var = new t1();
        this.f53137c = t1Var;
        t1Var.b(this);
    }

    private boolean D0(@Nullable b bVar) {
        if (bVar != null && bVar.f53165c.equals(this.f53137c.a())) {
            return true;
        }
        return false;
    }

    @Nullable
    public static z1 E0(Context context) {
        PlaybackSession createPlaybackSession;
        MediaMetricsManager a10 = m3.a(context.getSystemService("media_metrics"));
        if (a10 != null) {
            createPlaybackSession = a10.createPlaybackSession();
            return new z1(context, createPlaybackSession);
        }
        return null;
    }

    private void F0() {
        long longValue;
        long longValue2;
        int i10;
        final PlaybackMetrics build;
        PlaybackMetrics.Builder builder = this.f53145k;
        if (builder != null && this.B) {
            builder.setAudioUnderrunCount(this.A);
            this.f53145k.setVideoFramesDropped(this.f53159y);
            this.f53145k.setVideoFramesPlayed(this.f53160z);
            Long l10 = this.f53142h.get(this.f53144j);
            PlaybackMetrics.Builder builder2 = this.f53145k;
            if (l10 == null) {
                longValue = 0;
            } else {
                longValue = l10.longValue();
            }
            builder2.setNetworkTransferDurationMillis(longValue);
            Long l11 = this.f53143i.get(this.f53144j);
            PlaybackMetrics.Builder builder3 = this.f53145k;
            if (l11 == null) {
                longValue2 = 0;
            } else {
                longValue2 = l11.longValue();
            }
            builder3.setNetworkBytesRead(longValue2);
            PlaybackMetrics.Builder builder4 = this.f53145k;
            if (l11 != null && l11.longValue() > 0) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            builder4.setStreamSource(i10);
            build = this.f53145k.build();
            this.f53136b.execute(new Runnable() { // from class: hn.v1
                @Override // java.lang.Runnable
                public final void run() {
                    z1.this.P0(build);
                }
            });
        }
        this.f53145k = null;
        this.f53144j = null;
        this.A = 0;
        this.f53159y = 0;
        this.f53160z = 0;
        this.f53153s = null;
        this.f53154t = null;
        this.f53155u = null;
        this.B = false;
    }

    @SuppressLint({"SwitchIntDef"})
    private static int G0(int i10) {
        switch (cn.m0.b0(i10)) {
            case 6002:
                return 24;
            case 6003:
                return 28;
            case AuthCode.StatusCode.PERMISSION_NOT_EXIST /* 6004 */:
                return 25;
            case AuthCode.StatusCode.PERMISSION_NOT_AUTHORIZED /* 6005 */:
                return 26;
            default:
                return 27;
        }
    }

    @Nullable
    private static DrmInitData H0(ImmutableList<e0.a> immutableList) {
        DrmInitData drmInitData;
        com.google.common.collect.y<e0.a> it = immutableList.iterator();
        while (it.hasNext()) {
            e0.a next = it.next();
            for (int i10 = 0; i10 < next.f71923a; i10++) {
                if (next.g(i10) && (drmInitData = next.b(i10).f55178s) != null) {
                    return drmInitData;
                }
            }
        }
        return null;
    }

    private static int I0(DrmInitData drmInitData) {
        for (int i10 = 0; i10 < drmInitData.f55105d; i10++) {
            UUID uuid = drmInitData.e(i10).f55107b;
            if (uuid.equals(zm.f.f71931d)) {
                return 3;
            }
            if (uuid.equals(zm.f.f71932e)) {
                return 2;
            }
            if (uuid.equals(zm.f.f71930c)) {
                return 6;
            }
        }
        return 1;
    }

    private static a J0(PlaybackException playbackException, Context context, boolean z10) {
        int i10;
        boolean z11;
        int i11;
        if (playbackException.f55122a == 1001) {
            return new a(20, 0);
        }
        if (playbackException instanceof ExoPlaybackException) {
            ExoPlaybackException exoPlaybackException = (ExoPlaybackException) playbackException;
            if (exoPlaybackException.f55353j == 1) {
                z11 = true;
            } else {
                z11 = false;
            }
            i10 = exoPlaybackException.f55357n;
        } else {
            i10 = 0;
            z11 = false;
        }
        Throwable th2 = (Throwable) cn.a.e(playbackException.getCause());
        if (th2 instanceof IOException) {
            if (th2 instanceof HttpDataSource$InvalidResponseCodeException) {
                return new a(5, ((HttpDataSource$InvalidResponseCodeException) th2).f55324d);
            }
            if (!(th2 instanceof HttpDataSource$InvalidContentTypeException) && !(th2 instanceof ParserException)) {
                boolean z12 = th2 instanceof HttpDataSource$HttpDataSourceException;
                if (!z12 && !(th2 instanceof UdpDataSource.UdpDataSourceException)) {
                    if (playbackException.f55122a == 1002) {
                        return new a(21, 0);
                    }
                    if (th2 instanceof DrmSession.DrmSessionException) {
                        Throwable th3 = (Throwable) cn.a.e(th2.getCause());
                        if (th3 instanceof MediaDrm.MediaDrmStateException) {
                            int c02 = cn.m0.c0(((MediaDrm.MediaDrmStateException) th3).getDiagnosticInfo());
                            return new a(G0(c02), c02);
                        } else if (cn.m0.f3614a >= 23 && (th3 instanceof MediaDrmResetException)) {
                            return new a(27, 0);
                        } else {
                            if (th3 instanceof NotProvisionedException) {
                                return new a(24, 0);
                            }
                            if (th3 instanceof DeniedByServerException) {
                                return new a(29, 0);
                            }
                            if (th3 instanceof UnsupportedDrmException) {
                                return new a(23, 0);
                            }
                            if (th3 instanceof DefaultDrmSessionManager.MissingSchemeDataException) {
                                return new a(28, 0);
                            }
                            return new a(30, 0);
                        }
                    } else if ((th2 instanceof FileDataSource.FileDataSourceException) && (th2.getCause() instanceof FileNotFoundException)) {
                        Throwable cause = ((Throwable) cn.a.e(th2.getCause())).getCause();
                        if ((cause instanceof ErrnoException) && ((ErrnoException) cause).errno == OsConstants.EACCES) {
                            return new a(32, 0);
                        }
                        return new a(31, 0);
                    } else {
                        return new a(9, 0);
                    }
                } else if (cn.w.e(context).g() == 1) {
                    return new a(3, 0);
                } else {
                    Throwable cause2 = th2.getCause();
                    if (cause2 instanceof UnknownHostException) {
                        return new a(6, 0);
                    }
                    if (cause2 instanceof SocketTimeoutException) {
                        return new a(7, 0);
                    }
                    if (z12 && ((HttpDataSource$HttpDataSourceException) th2).f55322c == 1) {
                        return new a(4, 0);
                    }
                    return new a(8, 0);
                }
            }
            if (z10) {
                i11 = 10;
            } else {
                i11 = 11;
            }
            return new a(i11, 0);
        } else if (z11 && (i10 == 0 || i10 == 1)) {
            return new a(35, 0);
        } else {
            if (z11 && i10 == 3) {
                return new a(15, 0);
            }
            if (z11 && i10 == 2) {
                return new a(23, 0);
            }
            if (th2 instanceof MediaCodecRenderer.DecoderInitializationException) {
                return new a(13, cn.m0.c0(((MediaCodecRenderer.DecoderInitializationException) th2).f56503d));
            }
            if (th2 instanceof MediaCodecDecoderException) {
                return new a(14, ((MediaCodecDecoderException) th2).f56464c);
            }
            if (th2 instanceof OutOfMemoryError) {
                return new a(14, 0);
            }
            if (th2 instanceof AudioSink.InitializationException) {
                return new a(17, ((AudioSink.InitializationException) th2).f55398a);
            }
            if (th2 instanceof AudioSink.WriteException) {
                return new a(18, ((AudioSink.WriteException) th2).f55403a);
            }
            if (th2 instanceof MediaCodec.CryptoException) {
                int errorCode = ((MediaCodec.CryptoException) th2).getErrorCode();
                return new a(G0(errorCode), errorCode);
            }
            return new a(22, 0);
        }
    }

    private static Pair<String, String> K0(String str) {
        String str2;
        String[] m12 = cn.m0.m1(str, "-");
        String str3 = m12[0];
        if (m12.length >= 2) {
            str2 = m12[1];
        } else {
            str2 = null;
        }
        return Pair.create(str3, str2);
    }

    private static int M0(Context context) {
        switch (cn.w.e(context).g()) {
            case 0:
                return 0;
            case 1:
                return 9;
            case 2:
                return 2;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
            case 8:
            default:
                return 1;
            case 7:
                return 3;
            case 9:
                return 8;
            case 10:
                return 7;
        }
    }

    private static int N0(zm.q qVar) {
        q.h hVar = qVar.f71992b;
        if (hVar == null) {
            return 0;
        }
        int A0 = cn.m0.A0(hVar.f72084a, hVar.f72085b);
        if (A0 != 0) {
            if (A0 != 1) {
                if (A0 != 2) {
                    return 1;
                }
                return 4;
            }
            return 5;
        }
        return 3;
    }

    private static int O0(int i10) {
        if (i10 == 1) {
            return 2;
        }
        if (i10 == 2) {
            return 3;
        }
        if (i10 != 3) {
            return 1;
        }
        return 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void P0(PlaybackMetrics playbackMetrics) {
        this.f53138d.reportPlaybackMetrics(playbackMetrics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q0(NetworkEvent networkEvent) {
        this.f53138d.reportNetworkEvent(networkEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R0(PlaybackErrorEvent playbackErrorEvent) {
        this.f53138d.reportPlaybackErrorEvent(playbackErrorEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S0(PlaybackStateEvent playbackStateEvent) {
        this.f53138d.reportPlaybackStateEvent(playbackStateEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T0(TrackChangeEvent trackChangeEvent) {
        this.f53138d.reportTrackChangeEvent(trackChangeEvent);
    }

    private void U0(b.C0769b c0769b) {
        for (int i10 = 0; i10 < c0769b.d(); i10++) {
            int b10 = c0769b.b(i10);
            b.a c10 = c0769b.c(b10);
            if (b10 == 0) {
                this.f53137c.d(c10);
            } else if (b10 == 11) {
                this.f53137c.e(c10, this.f53146l);
            } else {
                this.f53137c.f(c10);
            }
        }
    }

    private void V0(long j10) {
        NetworkEvent.Builder networkType;
        NetworkEvent.Builder timeSinceCreatedMillis;
        final NetworkEvent build;
        int M0 = M0(this.f53135a);
        if (M0 != this.f53148n) {
            this.f53148n = M0;
            networkType = x2.a().setNetworkType(M0);
            timeSinceCreatedMillis = networkType.setTimeSinceCreatedMillis(j10 - this.f53139e);
            build = timeSinceCreatedMillis.build();
            this.f53136b.execute(new Runnable() { // from class: hn.u1
                @Override // java.lang.Runnable
                public final void run() {
                    z1.this.Q0(build);
                }
            });
        }
    }

    private void W0(long j10) {
        boolean z10;
        PlaybackErrorEvent.Builder timeSinceCreatedMillis;
        PlaybackErrorEvent.Builder errorCode;
        PlaybackErrorEvent.Builder subErrorCode;
        PlaybackErrorEvent.Builder exception;
        final PlaybackErrorEvent build;
        PlaybackException playbackException = this.f53149o;
        if (playbackException == null) {
            return;
        }
        Context context = this.f53135a;
        if (this.f53157w == 4) {
            z10 = true;
        } else {
            z10 = false;
        }
        a J0 = J0(playbackException, context, z10);
        timeSinceCreatedMillis = p5.b2.a().setTimeSinceCreatedMillis(j10 - this.f53139e);
        errorCode = timeSinceCreatedMillis.setErrorCode(J0.f53161a);
        subErrorCode = errorCode.setSubErrorCode(J0.f53162b);
        exception = subErrorCode.setException(playbackException);
        build = exception.build();
        this.f53136b.execute(new Runnable() { // from class: hn.y1
            @Override // java.lang.Runnable
            public final void run() {
                z1.this.R0(build);
            }
        });
        this.B = true;
        this.f53149o = null;
    }

    private void X0(zm.w wVar, b.C0769b c0769b, long j10) {
        PlaybackStateEvent.Builder state;
        PlaybackStateEvent.Builder timeSinceCreatedMillis;
        final PlaybackStateEvent build;
        if (wVar.getPlaybackState() != 2) {
            this.f53156v = false;
        }
        if (wVar.d() == null) {
            this.f53158x = false;
        } else if (c0769b.a(10)) {
            this.f53158x = true;
        }
        int f12 = f1(wVar);
        if (this.f53147m != f12) {
            this.f53147m = f12;
            this.B = true;
            state = p5.q1.a().setState(this.f53147m);
            timeSinceCreatedMillis = state.setTimeSinceCreatedMillis(j10 - this.f53139e);
            build = timeSinceCreatedMillis.build();
            this.f53136b.execute(new Runnable() { // from class: hn.x1
                @Override // java.lang.Runnable
                public final void run() {
                    z1.this.S0(build);
                }
            });
        }
    }

    private void Y0(zm.w wVar, b.C0769b c0769b, long j10) {
        if (c0769b.a(2)) {
            zm.e0 e10 = wVar.e();
            boolean c10 = e10.c(2);
            boolean c11 = e10.c(1);
            boolean c12 = e10.c(3);
            if (c10 || c11 || c12) {
                if (!c10) {
                    d1(j10, null, 0);
                }
                if (!c11) {
                    Z0(j10, null, 0);
                }
                if (!c12) {
                    b1(j10, null, 0);
                }
            }
        }
        if (D0(this.f53150p)) {
            b bVar = this.f53150p;
            io.bidmachine.media3.common.a aVar = bVar.f53163a;
            if (aVar.f55182w != -1) {
                d1(j10, aVar, bVar.f53164b);
                this.f53150p = null;
            }
        }
        if (D0(this.f53151q)) {
            b bVar2 = this.f53151q;
            Z0(j10, bVar2.f53163a, bVar2.f53164b);
            this.f53151q = null;
        }
        if (D0(this.f53152r)) {
            b bVar3 = this.f53152r;
            b1(j10, bVar3.f53163a, bVar3.f53164b);
            this.f53152r = null;
        }
    }

    private void Z0(long j10, @Nullable io.bidmachine.media3.common.a aVar, int i10) {
        if (Objects.equals(this.f53154t, aVar)) {
            return;
        }
        if (this.f53154t == null && i10 == 0) {
            i10 = 1;
        }
        this.f53154t = aVar;
        e1(0, j10, aVar, i10);
    }

    private void a1(zm.w wVar, b.C0769b c0769b) {
        DrmInitData H0;
        if (c0769b.a(0)) {
            b.a c10 = c0769b.c(0);
            if (this.f53145k != null) {
                c1(c10.f52928b, c10.f52930d);
            }
        }
        if (c0769b.a(2) && this.f53145k != null && (H0 = H0(wVar.e().a())) != null) {
            p5.s1.a(cn.m0.i(this.f53145k)).setDrmType(I0(H0));
        }
        if (c0769b.a(1011)) {
            this.A++;
        }
    }

    private void b1(long j10, @Nullable io.bidmachine.media3.common.a aVar, int i10) {
        if (Objects.equals(this.f53155u, aVar)) {
            return;
        }
        if (this.f53155u == null && i10 == 0) {
            i10 = 1;
        }
        this.f53155u = aVar;
        e1(2, j10, aVar, i10);
    }

    private void c1(zm.a0 a0Var, @Nullable r.b bVar) {
        int b10;
        int i10;
        PlaybackMetrics.Builder builder = this.f53145k;
        if (bVar == null || (b10 = a0Var.b(bVar.f56990a)) == -1) {
            return;
        }
        a0Var.f(b10, this.f53141g);
        a0Var.n(this.f53141g.f71742c, this.f53140f);
        builder.setStreamType(N0(this.f53140f.f71759c));
        a0.c cVar = this.f53140f;
        if (cVar.f71769m != -9223372036854775807L && !cVar.f71767k && !cVar.f71765i && !cVar.f()) {
            builder.setMediaDurationMillis(this.f53140f.d());
        }
        if (this.f53140f.f()) {
            i10 = 2;
        } else {
            i10 = 1;
        }
        builder.setPlaybackType(i10);
        this.B = true;
    }

    private void d1(long j10, @Nullable io.bidmachine.media3.common.a aVar, int i10) {
        if (Objects.equals(this.f53153s, aVar)) {
            return;
        }
        if (this.f53153s == null && i10 == 0) {
            i10 = 1;
        }
        this.f53153s = aVar;
        e1(1, j10, aVar, i10);
    }

    private void e1(int i10, long j10, @Nullable io.bidmachine.media3.common.a aVar, int i11) {
        TrackChangeEvent.Builder timeSinceCreatedMillis;
        final TrackChangeEvent build;
        timeSinceCreatedMillis = m2.a(i10).setTimeSinceCreatedMillis(j10 - this.f53139e);
        if (aVar != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(O0(i11));
            String str = aVar.f55173n;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = aVar.f55174o;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = aVar.f55170k;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i12 = aVar.f55169j;
            if (i12 != -1) {
                timeSinceCreatedMillis.setBitrate(i12);
            }
            int i13 = aVar.f55181v;
            if (i13 != -1) {
                timeSinceCreatedMillis.setWidth(i13);
            }
            int i14 = aVar.f55182w;
            if (i14 != -1) {
                timeSinceCreatedMillis.setHeight(i14);
            }
            int i15 = aVar.E;
            if (i15 != -1) {
                timeSinceCreatedMillis.setChannelCount(i15);
            }
            int i16 = aVar.F;
            if (i16 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i16);
            }
            String str4 = aVar.f55163d;
            if (str4 != null) {
                Pair<String, String> K0 = K0(str4);
                timeSinceCreatedMillis.setLanguage((String) K0.first);
                Object obj = K0.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f10 = aVar.f55183x;
            if (f10 != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f10);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.B = true;
        build = timeSinceCreatedMillis.build();
        this.f53136b.execute(new Runnable() { // from class: hn.w1
            @Override // java.lang.Runnable
            public final void run() {
                z1.this.T0(build);
            }
        });
    }

    private int f1(zm.w wVar) {
        int playbackState = wVar.getPlaybackState();
        if (this.f53156v) {
            return 5;
        }
        if (this.f53158x) {
            return 13;
        }
        if (playbackState == 4) {
            return 11;
        }
        if (playbackState == 2) {
            int i10 = this.f53147m;
            if (i10 == 0 || i10 == 2 || i10 == 12) {
                return 2;
            }
            if (!wVar.getPlayWhenReady()) {
                return 7;
            }
            if (wVar.r() != 0) {
                return 10;
            }
            return 6;
        } else if (playbackState == 3) {
            if (!wVar.getPlayWhenReady()) {
                return 4;
            }
            if (wVar.r() == 0) {
                return 3;
            }
            return 9;
        } else if (playbackState == 1 && this.f53147m != 0) {
            return 12;
        } else {
            return this.f53147m;
        }
    }

    public LogSessionId L0() {
        LogSessionId sessionId;
        sessionId = this.f53138d.getSessionId();
        return sessionId;
    }

    @Override // hn.b
    public void U(b.a aVar, PlaybackException playbackException) {
        this.f53149o = playbackException;
    }

    @Override // hn.b
    public void X(b.a aVar, zm.i0 i0Var) {
        b bVar = this.f53150p;
        if (bVar != null) {
            io.bidmachine.media3.common.a aVar2 = bVar.f53163a;
            if (aVar2.f55182w == -1) {
                this.f53150p = new b(aVar2.b().B0(i0Var.f71959a).d0(i0Var.f71960b).N(), bVar.f53164b, bVar.f53165c);
            }
        }
    }

    @Override // hn.b
    public void Z(b.a aVar, w.e eVar, w.e eVar2, int i10) {
        if (i10 == 1) {
            this.f53156v = true;
        }
        this.f53146l = i10;
    }

    @Override // hn.b
    public void f(b.a aVar, sn.i iVar, sn.j jVar, IOException iOException, boolean z10) {
        this.f53157w = jVar.f66496a;
    }

    @Override // hn.b
    public void i0(b.a aVar, int i10, long j10, long j11) {
        long longValue;
        r.b bVar = aVar.f52930d;
        if (bVar != null) {
            String g10 = this.f53137c.g(aVar.f52928b, (r.b) cn.a.e(bVar));
            Long l10 = this.f53143i.get(g10);
            Long l11 = this.f53142h.get(g10);
            HashMap<String, Long> hashMap = this.f53143i;
            long j12 = 0;
            if (l10 == null) {
                longValue = 0;
            } else {
                longValue = l10.longValue();
            }
            hashMap.put(g10, Long.valueOf(longValue + j10));
            HashMap<String, Long> hashMap2 = this.f53142h;
            if (l11 != null) {
                j12 = l11.longValue();
            }
            hashMap2.put(g10, Long.valueOf(j12 + i10));
        }
    }

    @Override // hn.b
    public void p0(zm.w wVar, b.C0769b c0769b) {
        if (c0769b.d() == 0) {
            return;
        }
        U0(c0769b);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        a1(wVar, c0769b);
        W0(elapsedRealtime);
        Y0(wVar, c0769b, elapsedRealtime);
        V0(elapsedRealtime);
        X0(wVar, c0769b, elapsedRealtime);
        if (c0769b.a(MediaPlayer.MEDIA_PLAYER_OPTION_THIRDPARTY_AVDICTIONARY_PTR)) {
            this.f53137c.c(c0769b.c(MediaPlayer.MEDIA_PLAYER_OPTION_THIRDPARTY_AVDICTIONARY_PTR));
        }
    }

    @Override // hn.b
    public void q(b.a aVar, gn.b bVar) {
        this.f53159y += bVar.f52427g;
        this.f53160z += bVar.f52425e;
    }

    @Override // hn.a2.a
    public void s(b.a aVar, String str, boolean z10) {
        r.b bVar = aVar.f52930d;
        if ((bVar == null || !bVar.b()) && str.equals(this.f53144j)) {
            F0();
        }
        this.f53142h.remove(str);
        this.f53143i.remove(str);
    }

    @Override // hn.b
    public void u0(b.a aVar, sn.j jVar) {
        if (aVar.f52930d == null) {
            return;
        }
        b bVar = new b((io.bidmachine.media3.common.a) cn.a.e(jVar.f66498c), jVar.f66499d, this.f53137c.g(aVar.f52928b, (r.b) cn.a.e(aVar.f52930d)));
        int i10 = jVar.f66497b;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        this.f53152r = bVar;
                        return;
                    }
                    return;
                }
            } else {
                this.f53151q = bVar;
                return;
            }
        }
        this.f53150p = bVar;
    }

    @Override // hn.a2.a
    public void x(b.a aVar, String str) {
        PlaybackMetrics.Builder playerName;
        PlaybackMetrics.Builder playerVersion;
        r.b bVar = aVar.f52930d;
        if (bVar != null && bVar.b()) {
            return;
        }
        F0();
        this.f53144j = str;
        playerName = i3.a().setPlayerName("AndroidXMedia3");
        playerVersion = playerName.setPlayerVersion("1.7.1");
        this.f53145k = playerVersion;
        c1(aVar.f52928b, aVar.f52930d);
    }

    @Override // hn.a2.a
    public void J(b.a aVar, String str) {
    }

    @Override // hn.a2.a
    public void G(b.a aVar, String str, String str2) {
    }
}
