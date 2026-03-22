package p5;

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
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.UnsupportedDrmException;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.HttpDataSource$HttpDataSourceException;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidContentTypeException;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.android.exoplayer2.upstream.UdpDataSource;
import com.google.android.exoplayer2.v1;
import com.google.android.exoplayer2.y0;
import com.google.common.collect.ImmutableList;
import com.huawei.hms.support.api.entity.auth.AuthCode;
import com.ss.ttm.player.MediaPlayer;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.UUID;
import p5.b;
import p5.s3;
/* compiled from: MediaMetricsListener.java */
@RequiresApi(31)
/* loaded from: classes4.dex */
public final class r3 implements p5.b, s3.a {
    private boolean A;

    /* renamed from: a  reason: collision with root package name */
    private final Context f64659a;

    /* renamed from: b  reason: collision with root package name */
    private final s3 f64660b;

    /* renamed from: c  reason: collision with root package name */
    private final PlaybackSession f64661c;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private String f64667i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private PlaybackMetrics.Builder f64668j;

    /* renamed from: k  reason: collision with root package name */
    private int f64669k;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private PlaybackException f64672n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private b f64673o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private b f64674p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private b f64675q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private com.google.android.exoplayer2.v0 f64676r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private com.google.android.exoplayer2.v0 f64677s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private com.google.android.exoplayer2.v0 f64678t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f64679u;

    /* renamed from: v  reason: collision with root package name */
    private int f64680v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f64681w;

    /* renamed from: x  reason: collision with root package name */
    private int f64682x;

    /* renamed from: y  reason: collision with root package name */
    private int f64683y;

    /* renamed from: z  reason: collision with root package name */
    private int f64684z;

    /* renamed from: e  reason: collision with root package name */
    private final u1.d f64663e = new u1.d();

    /* renamed from: f  reason: collision with root package name */
    private final u1.b f64664f = new u1.b();

    /* renamed from: h  reason: collision with root package name */
    private final HashMap<String, Long> f64666h = new HashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<String, Long> f64665g = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final long f64662d = SystemClock.elapsedRealtime();

    /* renamed from: l  reason: collision with root package name */
    private int f64670l = 0;

    /* renamed from: m  reason: collision with root package name */
    private int f64671m = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaMetricsListener.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f64685a;

        /* renamed from: b  reason: collision with root package name */
        public final int f64686b;

        public a(int i10, int i11) {
            this.f64685a = i10;
            this.f64686b = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaMetricsListener.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final com.google.android.exoplayer2.v0 f64687a;

        /* renamed from: b  reason: collision with root package name */
        public final int f64688b;

        /* renamed from: c  reason: collision with root package name */
        public final String f64689c;

        public b(com.google.android.exoplayer2.v0 v0Var, int i10, String str) {
            this.f64687a = v0Var;
            this.f64688b = i10;
            this.f64689c = str;
        }
    }

    private r3(Context context, PlaybackSession playbackSession) {
        this.f64659a = context.getApplicationContext();
        this.f64661c = playbackSession;
        p1 p1Var = new p1();
        this.f64660b = p1Var;
        p1Var.c(this);
    }

    @Nullable
    public static r3 A0(Context context) {
        PlaybackSession createPlaybackSession;
        MediaMetricsManager a10 = m3.a(context.getSystemService("media_metrics"));
        if (a10 != null) {
            createPlaybackSession = a10.createPlaybackSession();
            return new r3(context, createPlaybackSession);
        }
        return null;
    }

    private void B0() {
        long longValue;
        long longValue2;
        int i10;
        PlaybackMetrics build;
        PlaybackMetrics.Builder builder = this.f64668j;
        if (builder != null && this.A) {
            builder.setAudioUnderrunCount(this.f64684z);
            this.f64668j.setVideoFramesDropped(this.f64682x);
            this.f64668j.setVideoFramesPlayed(this.f64683y);
            Long l10 = this.f64665g.get(this.f64667i);
            PlaybackMetrics.Builder builder2 = this.f64668j;
            if (l10 == null) {
                longValue = 0;
            } else {
                longValue = l10.longValue();
            }
            builder2.setNetworkTransferDurationMillis(longValue);
            Long l11 = this.f64666h.get(this.f64667i);
            PlaybackMetrics.Builder builder3 = this.f64668j;
            if (l11 == null) {
                longValue2 = 0;
            } else {
                longValue2 = l11.longValue();
            }
            builder3.setNetworkBytesRead(longValue2);
            PlaybackMetrics.Builder builder4 = this.f64668j;
            if (l11 != null && l11.longValue() > 0) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            builder4.setStreamSource(i10);
            PlaybackSession playbackSession = this.f64661c;
            build = this.f64668j.build();
            playbackSession.reportPlaybackMetrics(build);
        }
        this.f64668j = null;
        this.f64667i = null;
        this.f64684z = 0;
        this.f64682x = 0;
        this.f64683y = 0;
        this.f64676r = null;
        this.f64677s = null;
        this.f64678t = null;
        this.A = false;
    }

    @SuppressLint({"SwitchIntDef"})
    private static int C0(int i10) {
        switch (b7.s0.P(i10)) {
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
    private static DrmInitData D0(ImmutableList<v1.a> immutableList) {
        DrmInitData drmInitData;
        com.google.common.collect.y<v1.a> it = immutableList.iterator();
        while (it.hasNext()) {
            v1.a next = it.next();
            for (int i10 = 0; i10 < next.f19202a; i10++) {
                if (next.g(i10) && (drmInitData = next.c(i10).f19160o) != null) {
                    return drmInitData;
                }
            }
        }
        return null;
    }

    private static int E0(DrmInitData drmInitData) {
        for (int i10 = 0; i10 < drmInitData.f17557d; i10++) {
            UUID uuid = drmInitData.c(i10).f17559b;
            if (uuid.equals(o5.l.f63099d)) {
                return 3;
            }
            if (uuid.equals(o5.l.f63100e)) {
                return 2;
            }
            if (uuid.equals(o5.l.f63098c)) {
                return 6;
            }
        }
        return 1;
    }

    private static a F0(PlaybackException playbackException, Context context, boolean z10) {
        int i10;
        boolean z11;
        int i11;
        if (playbackException.f17187a == 1001) {
            return new a(20, 0);
        }
        if (playbackException instanceof ExoPlaybackException) {
            ExoPlaybackException exoPlaybackException = (ExoPlaybackException) playbackException;
            if (exoPlaybackException.f17173d == 1) {
                z11 = true;
            } else {
                z11 = false;
            }
            i10 = exoPlaybackException.f17177h;
        } else {
            i10 = 0;
            z11 = false;
        }
        Throwable th2 = (Throwable) b7.a.e(playbackException.getCause());
        if (th2 instanceof IOException) {
            if (th2 instanceof HttpDataSource$InvalidResponseCodeException) {
                return new a(5, ((HttpDataSource$InvalidResponseCodeException) th2).f19075d);
            }
            if (!(th2 instanceof HttpDataSource$InvalidContentTypeException) && !(th2 instanceof ParserException)) {
                boolean z12 = th2 instanceof HttpDataSource$HttpDataSourceException;
                if (!z12 && !(th2 instanceof UdpDataSource.UdpDataSourceException)) {
                    if (playbackException.f17187a == 1002) {
                        return new a(21, 0);
                    }
                    if (th2 instanceof DrmSession.DrmSessionException) {
                        Throwable th3 = (Throwable) b7.a.e(th2.getCause());
                        int i12 = b7.s0.f2506a;
                        if (i12 >= 21 && (th3 instanceof MediaDrm.MediaDrmStateException)) {
                            int Q = b7.s0.Q(((MediaDrm.MediaDrmStateException) th3).getDiagnosticInfo());
                            return new a(C0(Q), Q);
                        } else if (i12 >= 23 && (th3 instanceof MediaDrmResetException)) {
                            return new a(27, 0);
                        } else {
                            if (i12 >= 18 && (th3 instanceof NotProvisionedException)) {
                                return new a(24, 0);
                            }
                            if (i12 >= 18 && (th3 instanceof DeniedByServerException)) {
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
                        Throwable cause = ((Throwable) b7.a.e(th2.getCause())).getCause();
                        if (b7.s0.f2506a >= 21 && (cause instanceof ErrnoException) && ((ErrnoException) cause).errno == OsConstants.EACCES) {
                            return new a(32, 0);
                        }
                        return new a(31, 0);
                    } else {
                        return new a(9, 0);
                    }
                } else if (b7.x.d(context).f() == 1) {
                    return new a(3, 0);
                } else {
                    Throwable cause2 = th2.getCause();
                    if (cause2 instanceof UnknownHostException) {
                        return new a(6, 0);
                    }
                    if (cause2 instanceof SocketTimeoutException) {
                        return new a(7, 0);
                    }
                    if (z12 && ((HttpDataSource$HttpDataSourceException) th2).f19073c == 1) {
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
                return new a(13, b7.s0.Q(((MediaCodecRenderer.DecoderInitializationException) th2).f17904d));
            }
            if (th2 instanceof MediaCodecDecoderException) {
                return new a(14, b7.s0.Q(((MediaCodecDecoderException) th2).f17861b));
            }
            if (th2 instanceof OutOfMemoryError) {
                return new a(14, 0);
            }
            if (th2 instanceof AudioSink.InitializationException) {
                return new a(17, ((AudioSink.InitializationException) th2).f17216a);
            }
            if (th2 instanceof AudioSink.WriteException) {
                return new a(18, ((AudioSink.WriteException) th2).f17221a);
            }
            if (b7.s0.f2506a >= 16 && (th2 instanceof MediaCodec.CryptoException)) {
                int errorCode = ((MediaCodec.CryptoException) th2).getErrorCode();
                return new a(C0(errorCode), errorCode);
            }
            return new a(22, 0);
        }
    }

    private static Pair<String, String> G0(String str) {
        String str2;
        String[] H0 = b7.s0.H0(str, "-");
        String str3 = H0[0];
        if (H0.length >= 2) {
            str2 = H0[1];
        } else {
            str2 = null;
        }
        return Pair.create(str3, str2);
    }

    private static int I0(Context context) {
        switch (b7.x.d(context).f()) {
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

    private static int J0(com.google.android.exoplayer2.y0 y0Var) {
        y0.h hVar = y0Var.f19334b;
        if (hVar == null) {
            return 0;
        }
        int k02 = b7.s0.k0(hVar.f19397a, hVar.f19398b);
        if (k02 != 0) {
            if (k02 != 1) {
                if (k02 != 2) {
                    return 1;
                }
                return 4;
            }
            return 5;
        }
        return 3;
    }

    private static int K0(int i10) {
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

    private void L0(b.C0896b c0896b) {
        for (int i10 = 0; i10 < c0896b.d(); i10++) {
            int b10 = c0896b.b(i10);
            b.a c10 = c0896b.c(b10);
            if (b10 == 0) {
                this.f64660b.b(c10);
            } else if (b10 == 11) {
                this.f64660b.d(c10, this.f64669k);
            } else {
                this.f64660b.g(c10);
            }
        }
    }

    private void M0(long j10) {
        NetworkEvent.Builder networkType;
        NetworkEvent.Builder timeSinceCreatedMillis;
        NetworkEvent build;
        int I0 = I0(this.f64659a);
        if (I0 != this.f64671m) {
            this.f64671m = I0;
            PlaybackSession playbackSession = this.f64661c;
            networkType = x2.a().setNetworkType(I0);
            timeSinceCreatedMillis = networkType.setTimeSinceCreatedMillis(j10 - this.f64662d);
            build = timeSinceCreatedMillis.build();
            playbackSession.reportNetworkEvent(build);
        }
    }

    private void N0(long j10) {
        boolean z10;
        PlaybackErrorEvent.Builder timeSinceCreatedMillis;
        PlaybackErrorEvent.Builder errorCode;
        PlaybackErrorEvent.Builder subErrorCode;
        PlaybackErrorEvent.Builder exception;
        PlaybackErrorEvent build;
        PlaybackException playbackException = this.f64672n;
        if (playbackException == null) {
            return;
        }
        Context context = this.f64659a;
        if (this.f64680v == 4) {
            z10 = true;
        } else {
            z10 = false;
        }
        a F0 = F0(playbackException, context, z10);
        PlaybackSession playbackSession = this.f64661c;
        timeSinceCreatedMillis = b2.a().setTimeSinceCreatedMillis(j10 - this.f64662d);
        errorCode = timeSinceCreatedMillis.setErrorCode(F0.f64685a);
        subErrorCode = errorCode.setSubErrorCode(F0.f64686b);
        exception = subErrorCode.setException(playbackException);
        build = exception.build();
        playbackSession.reportPlaybackErrorEvent(build);
        this.A = true;
        this.f64672n = null;
    }

    private void O0(com.google.android.exoplayer2.l1 l1Var, b.C0896b c0896b, long j10) {
        PlaybackStateEvent.Builder state;
        PlaybackStateEvent.Builder timeSinceCreatedMillis;
        PlaybackStateEvent build;
        if (l1Var.getPlaybackState() != 2) {
            this.f64679u = false;
        }
        if (l1Var.d() == null) {
            this.f64681w = false;
        } else if (c0896b.a(10)) {
            this.f64681w = true;
        }
        int W0 = W0(l1Var);
        if (this.f64670l != W0) {
            this.f64670l = W0;
            this.A = true;
            PlaybackSession playbackSession = this.f64661c;
            state = q1.a().setState(this.f64670l);
            timeSinceCreatedMillis = state.setTimeSinceCreatedMillis(j10 - this.f64662d);
            build = timeSinceCreatedMillis.build();
            playbackSession.reportPlaybackStateEvent(build);
        }
    }

    private void P0(com.google.android.exoplayer2.l1 l1Var, b.C0896b c0896b, long j10) {
        if (c0896b.a(2)) {
            com.google.android.exoplayer2.v1 e10 = l1Var.e();
            boolean d10 = e10.d(2);
            boolean d11 = e10.d(1);
            boolean d12 = e10.d(3);
            if (d10 || d11 || d12) {
                if (!d10) {
                    U0(j10, null, 0);
                }
                if (!d11) {
                    Q0(j10, null, 0);
                }
                if (!d12) {
                    S0(j10, null, 0);
                }
            }
        }
        if (z0(this.f64673o)) {
            b bVar = this.f64673o;
            com.google.android.exoplayer2.v0 v0Var = bVar.f64687a;
            if (v0Var.f19163r != -1) {
                U0(j10, v0Var, bVar.f64688b);
                this.f64673o = null;
            }
        }
        if (z0(this.f64674p)) {
            b bVar2 = this.f64674p;
            Q0(j10, bVar2.f64687a, bVar2.f64688b);
            this.f64674p = null;
        }
        if (z0(this.f64675q)) {
            b bVar3 = this.f64675q;
            S0(j10, bVar3.f64687a, bVar3.f64688b);
            this.f64675q = null;
        }
    }

    private void Q0(long j10, @Nullable com.google.android.exoplayer2.v0 v0Var, int i10) {
        if (b7.s0.c(this.f64677s, v0Var)) {
            return;
        }
        if (this.f64677s == null && i10 == 0) {
            i10 = 1;
        }
        this.f64677s = v0Var;
        V0(0, j10, v0Var, i10);
    }

    private void R0(com.google.android.exoplayer2.l1 l1Var, b.C0896b c0896b) {
        DrmInitData D0;
        if (c0896b.a(0)) {
            b.a c10 = c0896b.c(0);
            if (this.f64668j != null) {
                T0(c10.f64518b, c10.f64520d);
            }
        }
        if (c0896b.a(2) && this.f64668j != null && (D0 = D0(l1Var.e().b())) != null) {
            s1.a(b7.s0.j(this.f64668j)).setDrmType(E0(D0));
        }
        if (c0896b.a(1011)) {
            this.f64684z++;
        }
    }

    private void S0(long j10, @Nullable com.google.android.exoplayer2.v0 v0Var, int i10) {
        if (b7.s0.c(this.f64678t, v0Var)) {
            return;
        }
        if (this.f64678t == null && i10 == 0) {
            i10 = 1;
        }
        this.f64678t = v0Var;
        V0(2, j10, v0Var, i10);
    }

    private void T0(com.google.android.exoplayer2.u1 u1Var, @Nullable o.b bVar) {
        int f10;
        int i10;
        PlaybackMetrics.Builder builder = this.f64668j;
        if (bVar == null || (f10 = u1Var.f(bVar.f62787a)) == -1) {
            return;
        }
        u1Var.j(f10, this.f64664f);
        u1Var.r(this.f64664f.f18537c, this.f64663e);
        builder.setStreamType(J0(this.f64663e.f18552c));
        u1.d dVar = this.f64663e;
        if (dVar.f18563n != -9223372036854775807L && !dVar.f18561l && !dVar.f18558i && !dVar.i()) {
            builder.setMediaDurationMillis(this.f64663e.g());
        }
        if (this.f64663e.i()) {
            i10 = 2;
        } else {
            i10 = 1;
        }
        builder.setPlaybackType(i10);
        this.A = true;
    }

    private void U0(long j10, @Nullable com.google.android.exoplayer2.v0 v0Var, int i10) {
        if (b7.s0.c(this.f64676r, v0Var)) {
            return;
        }
        if (this.f64676r == null && i10 == 0) {
            i10 = 1;
        }
        this.f64676r = v0Var;
        V0(1, j10, v0Var, i10);
    }

    private void V0(int i10, long j10, @Nullable com.google.android.exoplayer2.v0 v0Var, int i11) {
        TrackChangeEvent.Builder timeSinceCreatedMillis;
        TrackChangeEvent build;
        timeSinceCreatedMillis = m2.a(i10).setTimeSinceCreatedMillis(j10 - this.f64662d);
        if (v0Var != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(K0(i11));
            String str = v0Var.f19156k;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = v0Var.f19157l;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = v0Var.f19154i;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i12 = v0Var.f19153h;
            if (i12 != -1) {
                timeSinceCreatedMillis.setBitrate(i12);
            }
            int i13 = v0Var.f19162q;
            if (i13 != -1) {
                timeSinceCreatedMillis.setWidth(i13);
            }
            int i14 = v0Var.f19163r;
            if (i14 != -1) {
                timeSinceCreatedMillis.setHeight(i14);
            }
            int i15 = v0Var.f19170y;
            if (i15 != -1) {
                timeSinceCreatedMillis.setChannelCount(i15);
            }
            int i16 = v0Var.f19171z;
            if (i16 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i16);
            }
            String str4 = v0Var.f19148c;
            if (str4 != null) {
                Pair<String, String> G0 = G0(str4);
                timeSinceCreatedMillis.setLanguage((String) G0.first);
                Object obj = G0.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f10 = v0Var.f19164s;
            if (f10 != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f10);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.A = true;
        PlaybackSession playbackSession = this.f64661c;
        build = timeSinceCreatedMillis.build();
        playbackSession.reportTrackChangeEvent(build);
    }

    private int W0(com.google.android.exoplayer2.l1 l1Var) {
        int playbackState = l1Var.getPlaybackState();
        if (this.f64679u) {
            return 5;
        }
        if (this.f64681w) {
            return 13;
        }
        if (playbackState == 4) {
            return 11;
        }
        if (playbackState == 2) {
            int i10 = this.f64670l;
            if (i10 == 0 || i10 == 2) {
                return 2;
            }
            if (!l1Var.getPlayWhenReady()) {
                return 7;
            }
            if (l1Var.r() != 0) {
                return 10;
            }
            return 6;
        } else if (playbackState == 3) {
            if (!l1Var.getPlayWhenReady()) {
                return 4;
            }
            if (l1Var.r() == 0) {
                return 3;
            }
            return 9;
        } else if (playbackState == 1 && this.f64670l != 0) {
            return 12;
        } else {
            return this.f64670l;
        }
    }

    private boolean z0(@Nullable b bVar) {
        if (bVar != null && bVar.f64689c.equals(this.f64660b.a())) {
            return true;
        }
        return false;
    }

    @Override // p5.b
    public void D(b.a aVar, int i10, long j10, long j11) {
        long longValue;
        o.b bVar = aVar.f64520d;
        if (bVar != null) {
            String f10 = this.f64660b.f(aVar.f64518b, (o.b) b7.a.e(bVar));
            Long l10 = this.f64666h.get(f10);
            Long l11 = this.f64665g.get(f10);
            HashMap<String, Long> hashMap = this.f64666h;
            long j12 = 0;
            if (l10 == null) {
                longValue = 0;
            } else {
                longValue = l10.longValue();
            }
            hashMap.put(f10, Long.valueOf(longValue + j10));
            HashMap<String, Long> hashMap2 = this.f64665g;
            if (l11 != null) {
                j12 = l11.longValue();
            }
            hashMap2.put(f10, Long.valueOf(j12 + i10));
        }
    }

    @Override // p5.b
    public void G(b.a aVar, l1.e eVar, l1.e eVar2, int i10) {
        if (i10 == 1) {
            this.f64679u = true;
        }
        this.f64669k = i10;
    }

    public LogSessionId H0() {
        LogSessionId sessionId;
        sessionId = this.f64661c.getSessionId();
        return sessionId;
    }

    @Override // p5.b
    public void M(b.a aVar, r5.e eVar) {
        this.f64682x += eVar.f65579g;
        this.f64683y += eVar.f65577e;
    }

    @Override // p5.b
    public void N(b.a aVar, PlaybackException playbackException) {
        this.f64672n = playbackException;
    }

    @Override // p5.b
    public void Q(b.a aVar, n6.i iVar) {
        if (aVar.f64520d == null) {
            return;
        }
        b bVar = new b((com.google.android.exoplayer2.v0) b7.a.e(iVar.f62782c), iVar.f62783d, this.f64660b.f(aVar.f64518b, (o.b) b7.a.e(aVar.f64520d)));
        int i10 = iVar.f62781b;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        this.f64675q = bVar;
                        return;
                    }
                    return;
                }
            } else {
                this.f64674p = bVar;
                return;
            }
        }
        this.f64673o = bVar;
    }

    @Override // p5.b
    public void T(com.google.android.exoplayer2.l1 l1Var, b.C0896b c0896b) {
        if (c0896b.d() == 0) {
            return;
        }
        L0(c0896b);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        R0(l1Var, c0896b);
        N0(elapsedRealtime);
        P0(l1Var, c0896b, elapsedRealtime);
        M0(elapsedRealtime);
        O0(l1Var, c0896b, elapsedRealtime);
        if (c0896b.a(MediaPlayer.MEDIA_PLAYER_OPTION_THIRDPARTY_AVDICTIONARY_PTR)) {
            this.f64660b.e(c0896b.c(MediaPlayer.MEDIA_PLAYER_OPTION_THIRDPARTY_AVDICTIONARY_PTR));
        }
    }

    @Override // p5.b
    public void b0(b.a aVar, c7.z zVar) {
        b bVar = this.f64673o;
        if (bVar != null) {
            com.google.android.exoplayer2.v0 v0Var = bVar.f64687a;
            if (v0Var.f19163r == -1) {
                this.f64673o = new b(v0Var.b().j0(zVar.f3331a).Q(zVar.f3332b).E(), bVar.f64688b, bVar.f64689c);
            }
        }
    }

    @Override // p5.b
    public void c(b.a aVar, n6.h hVar, n6.i iVar, IOException iOException, boolean z10) {
        this.f64680v = iVar.f62780a;
    }

    @Override // p5.s3.a
    public void f(b.a aVar, String str, boolean z10) {
        o.b bVar = aVar.f64520d;
        if ((bVar == null || !bVar.b()) && str.equals(this.f64667i)) {
            B0();
        }
        this.f64665g.remove(str);
        this.f64666h.remove(str);
    }

    @Override // p5.s3.a
    public void y0(b.a aVar, String str) {
        PlaybackMetrics.Builder playerName;
        PlaybackMetrics.Builder playerVersion;
        o.b bVar = aVar.f64520d;
        if (bVar != null && bVar.b()) {
            return;
        }
        B0();
        this.f64667i = str;
        playerName = i3.a().setPlayerName("ExoPlayerLib");
        playerVersion = playerName.setPlayerVersion("2.18.2");
        this.f64668j = playerVersion;
        T0(aVar.f64518b, aVar.f64520d);
    }

    @Override // p5.s3.a
    public void x0(b.a aVar, String str) {
    }

    @Override // p5.s3.a
    public void u0(b.a aVar, String str, String str2) {
    }
}
