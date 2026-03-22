package io.bidmachine.media3.exoplayer.dash;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import cn.m0;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import en.d;
import en.g;
import en.o;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.StreamKey;
import io.bidmachine.media3.exoplayer.dash.DashMediaSource;
import io.bidmachine.media3.exoplayer.dash.a;
import io.bidmachine.media3.exoplayer.dash.d;
import io.bidmachine.media3.exoplayer.dash.f;
import io.bidmachine.media3.exoplayer.drm.i;
import io.bidmachine.media3.exoplayer.source.r;
import io.bidmachine.media3.exoplayer.source.s;
import io.bidmachine.media3.exoplayer.source.t;
import io.bidmachine.media3.exoplayer.upstream.Loader;
import io.bidmachine.media3.exoplayer.upstream.b;
import io.bidmachine.media3.exoplayer.upstream.c;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.RoundingMode;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kn.j;
import wn.e;
import wn.k;
import xn.b;
import yo.r;
import zm.a0;
import zm.q;
/* loaded from: classes8.dex */
public final class DashMediaSource extends io.bidmachine.media3.exoplayer.source.a {
    private Loader A;
    @Nullable
    private o B;
    private IOException C;
    private Handler D;
    private q.g E;
    private Uri F;
    private Uri G;
    private kn.c H;
    private boolean I;
    private long J;
    private long K;
    private long L;
    private int M;
    private long N;
    private int O;
    @GuardedBy("this")
    private q P;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f55640h;

    /* renamed from: i  reason: collision with root package name */
    private final d.a f55641i;

    /* renamed from: j  reason: collision with root package name */
    private final a.InterfaceC0800a f55642j;

    /* renamed from: k  reason: collision with root package name */
    private final sn.e f55643k;

    /* renamed from: l  reason: collision with root package name */
    private final i f55644l;

    /* renamed from: m  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.upstream.b f55645m;

    /* renamed from: n  reason: collision with root package name */
    private final jn.b f55646n;

    /* renamed from: o  reason: collision with root package name */
    private final long f55647o;

    /* renamed from: p  reason: collision with root package name */
    private final long f55648p;

    /* renamed from: q  reason: collision with root package name */
    private final s.a f55649q;

    /* renamed from: r  reason: collision with root package name */
    private final c.a<? extends kn.c> f55650r;

    /* renamed from: s  reason: collision with root package name */
    private final e f55651s;

    /* renamed from: t  reason: collision with root package name */
    private final Object f55652t;

    /* renamed from: u  reason: collision with root package name */
    private final SparseArray<io.bidmachine.media3.exoplayer.dash.c> f55653u;

    /* renamed from: v  reason: collision with root package name */
    private final Runnable f55654v;

    /* renamed from: w  reason: collision with root package name */
    private final Runnable f55655w;

    /* renamed from: x  reason: collision with root package name */
    private final f.b f55656x;

    /* renamed from: y  reason: collision with root package name */
    private final k f55657y;

    /* renamed from: z  reason: collision with root package name */
    private en.d f55658z;

    /* loaded from: classes8.dex */
    public static final class Factory implements t {

        /* renamed from: l  reason: collision with root package name */
        public static final /* synthetic */ int f55659l = 0;

        /* renamed from: c  reason: collision with root package name */
        private final a.InterfaceC0800a f55660c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final d.a f55661d;

        /* renamed from: e  reason: collision with root package name */
        private e.a f55662e;

        /* renamed from: f  reason: collision with root package name */
        private ln.k f55663f;

        /* renamed from: g  reason: collision with root package name */
        private sn.e f55664g;

        /* renamed from: h  reason: collision with root package name */
        private io.bidmachine.media3.exoplayer.upstream.b f55665h;

        /* renamed from: i  reason: collision with root package name */
        private long f55666i;

        /* renamed from: j  reason: collision with root package name */
        private long f55667j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private c.a<? extends kn.c> f55668k;

        public Factory(d.a aVar) {
            this(new d.a(aVar), aVar);
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        /* renamed from: h */
        public DashMediaSource d(q qVar) {
            rn.c cVar;
            cn.a.e(qVar.f71992b);
            c.a aVar = this.f55668k;
            if (aVar == null) {
                aVar = new kn.d();
            }
            List<StreamKey> list = qVar.f71992b.f72087d;
            if (!list.isEmpty()) {
                cVar = new rn.c(aVar, list);
            } else {
                cVar = aVar;
            }
            e.a aVar2 = this.f55662e;
            if (aVar2 != null) {
                aVar2.a(qVar);
            }
            return new DashMediaSource(qVar, null, this.f55661d, cVar, this.f55660c, this.f55664g, null, this.f55663f.a(qVar), this.f55665h, this.f55666i, this.f55667j, null);
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        @Deprecated
        /* renamed from: i */
        public Factory c(boolean z10) {
            this.f55660c.c(z10);
            return this;
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        /* renamed from: j */
        public Factory b(int i10) {
            this.f55660c.b(i10);
            return this;
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        /* renamed from: k */
        public Factory g(e.a aVar) {
            this.f55662e = (e.a) cn.a.e(aVar);
            return this;
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        /* renamed from: l */
        public Factory e(ln.k kVar) {
            this.f55663f = (ln.k) cn.a.f(kVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        /* renamed from: m */
        public Factory f(io.bidmachine.media3.exoplayer.upstream.b bVar) {
            this.f55665h = (io.bidmachine.media3.exoplayer.upstream.b) cn.a.f(bVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        /* renamed from: n */
        public Factory a(r.a aVar) {
            this.f55660c.a((r.a) cn.a.e(aVar));
            return this;
        }

        public Factory(a.InterfaceC0800a interfaceC0800a, @Nullable d.a aVar) {
            this.f55660c = (a.InterfaceC0800a) cn.a.e(interfaceC0800a);
            this.f55661d = aVar;
            this.f55663f = new io.bidmachine.media3.exoplayer.drm.g();
            this.f55665h = new io.bidmachine.media3.exoplayer.upstream.a();
            this.f55666i = 30000L;
            this.f55667j = 5000000L;
            this.f55664g = new sn.f();
            c(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public class a implements b.InterfaceC0970b {
        a() {
        }

        @Override // xn.b.InterfaceC0970b
        public void a(IOException iOException) {
            DashMediaSource.this.X(iOException);
        }

        @Override // xn.b.InterfaceC0970b
        public void onInitialized() {
            DashMediaSource.this.Y(xn.b.i());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class b extends a0 {

        /* renamed from: e  reason: collision with root package name */
        private final long f55670e;

        /* renamed from: f  reason: collision with root package name */
        private final long f55671f;

        /* renamed from: g  reason: collision with root package name */
        private final long f55672g;

        /* renamed from: h  reason: collision with root package name */
        private final int f55673h;

        /* renamed from: i  reason: collision with root package name */
        private final long f55674i;

        /* renamed from: j  reason: collision with root package name */
        private final long f55675j;

        /* renamed from: k  reason: collision with root package name */
        private final long f55676k;

        /* renamed from: l  reason: collision with root package name */
        private final kn.c f55677l;

        /* renamed from: m  reason: collision with root package name */
        private final q f55678m;
        @Nullable

        /* renamed from: n  reason: collision with root package name */
        private final q.g f55679n;

        public b(long j10, long j11, long j12, int i10, long j13, long j14, long j15, kn.c cVar, q qVar, @Nullable q.g gVar) {
            boolean z10;
            boolean z11 = cVar.f60808d;
            if (gVar != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.g(z11 == z10);
            this.f55670e = j10;
            this.f55671f = j11;
            this.f55672g = j12;
            this.f55673h = i10;
            this.f55674i = j13;
            this.f55675j = j14;
            this.f55676k = j15;
            this.f55677l = cVar;
            this.f55678m = qVar;
            this.f55679n = gVar;
        }

        private long s(long j10) {
            long j11 = this.f55676k;
            if (!t(this.f55677l)) {
                return j11;
            }
            if (j10 > 0) {
                j11 += j10;
                if (j11 > this.f55675j) {
                    return -9223372036854775807L;
                }
            }
            long j12 = this.f55674i + j11;
            long f10 = this.f55677l.f(0);
            int i10 = 0;
            while (i10 < this.f55677l.d() - 1 && j12 >= f10) {
                j12 -= f10;
                i10++;
                f10 = this.f55677l.f(i10);
            }
            kn.g c10 = this.f55677l.c(i10);
            int a10 = c10.a(2);
            if (a10 == -1) {
                return j11;
            }
            jn.e k10 = c10.f60843c.get(a10).f60797c.get(0).k();
            if (k10 != null && k10.e(f10) != 0) {
                return (j11 + k10.getTimeUs(k10.d(j12, f10))) - j12;
            }
            return j11;
        }

        private static boolean t(kn.c cVar) {
            if (cVar.f60808d && cVar.f60809e != -9223372036854775807L && cVar.f60806b == -9223372036854775807L) {
                return true;
            }
            return false;
        }

        @Override // zm.a0
        public int b(Object obj) {
            int intValue;
            if (!(obj instanceof Integer) || (intValue = ((Integer) obj).intValue() - this.f55673h) < 0 || intValue >= i()) {
                return -1;
            }
            return intValue;
        }

        @Override // zm.a0
        public a0.b g(int i10, a0.b bVar, boolean z10) {
            String str;
            cn.a.c(i10, 0, i());
            Integer num = null;
            if (z10) {
                str = this.f55677l.c(i10).f60841a;
            } else {
                str = null;
            }
            if (z10) {
                num = Integer.valueOf(this.f55673h + i10);
            }
            return bVar.s(str, num, 0, this.f55677l.f(i10), m0.S0(this.f55677l.c(i10).f60842b - this.f55677l.c(0).f60842b) - this.f55674i);
        }

        @Override // zm.a0
        public int i() {
            return this.f55677l.d();
        }

        @Override // zm.a0
        public Object m(int i10) {
            cn.a.c(i10, 0, i());
            return Integer.valueOf(this.f55673h + i10);
        }

        @Override // zm.a0
        public a0.c o(int i10, a0.c cVar, long j10) {
            cn.a.c(i10, 0, 1);
            long s10 = s(j10);
            Object obj = a0.c.f71747q;
            q qVar = this.f55678m;
            kn.c cVar2 = this.f55677l;
            return cVar.g(obj, qVar, cVar2, this.f55670e, this.f55671f, this.f55672g, true, t(cVar2), this.f55679n, s10, this.f55675j, 0, i() - 1, this.f55674i);
        }

        @Override // zm.a0
        public int p() {
            return 1;
        }
    }

    /* loaded from: classes8.dex */
    private final class c implements f.b {
        private c() {
        }

        @Override // io.bidmachine.media3.exoplayer.dash.f.b
        public void a(long j10) {
            DashMediaSource.this.P(j10);
        }

        @Override // io.bidmachine.media3.exoplayer.dash.f.b
        public void b() {
            DashMediaSource.this.Q();
        }

        /* synthetic */ c(DashMediaSource dashMediaSource, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public static final class d implements c.a<Long> {

        /* renamed from: a  reason: collision with root package name */
        private static final Pattern f55681a = Pattern.compile("(.+?)(Z|((\\+|-|−)(\\d\\d)(:?(\\d\\d))?))");

        d() {
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.c.a
        /* renamed from: a */
        public Long parse(Uri uri, InputStream inputStream) throws IOException {
            long j10;
            long parseLong;
            String readLine = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8)).readLine();
            try {
                Matcher matcher = f55681a.matcher(readLine);
                if (matcher.matches()) {
                    String group = matcher.group(1);
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
                    simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                    long time = simpleDateFormat.parse(group).getTime();
                    if (!"Z".equals(matcher.group(2))) {
                        if ("+".equals(matcher.group(4))) {
                            j10 = 1;
                        } else {
                            j10 = -1;
                        }
                        long parseLong2 = Long.parseLong(matcher.group(5));
                        String group2 = matcher.group(7);
                        if (TextUtils.isEmpty(group2)) {
                            parseLong = 0;
                        } else {
                            parseLong = Long.parseLong(group2);
                        }
                        time -= j10 * (((parseLong2 * 60) + parseLong) * ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
                    }
                    return Long.valueOf(time);
                }
                throw ParserException.e("Couldn't parse timestamp: " + readLine, null);
            } catch (ParseException e10) {
                throw ParserException.e(null, e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public final class e implements Loader.b<io.bidmachine.media3.exoplayer.upstream.c<kn.c>> {
        private e() {
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
        /* renamed from: a */
        public void h(io.bidmachine.media3.exoplayer.upstream.c<kn.c> cVar, long j10, long j11, boolean z10) {
            DashMediaSource.this.R(cVar, j10, j11);
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
        /* renamed from: b */
        public void f(io.bidmachine.media3.exoplayer.upstream.c<kn.c> cVar, long j10, long j11) {
            DashMediaSource.this.S(cVar, j10, j11);
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
        /* renamed from: c */
        public Loader.c j(io.bidmachine.media3.exoplayer.upstream.c<kn.c> cVar, long j10, long j11, IOException iOException, int i10) {
            return DashMediaSource.this.T(cVar, j10, j11, iOException, i10);
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
        /* renamed from: d */
        public void g(io.bidmachine.media3.exoplayer.upstream.c<kn.c> cVar, long j10, long j11, int i10) {
            DashMediaSource.this.U(cVar, j10, j11, i10);
        }

        /* synthetic */ e(DashMediaSource dashMediaSource, a aVar) {
            this();
        }
    }

    /* loaded from: classes8.dex */
    final class f implements k {
        f() {
        }

        private void a() throws IOException {
            if (DashMediaSource.this.C == null) {
                return;
            }
            throw DashMediaSource.this.C;
        }

        @Override // wn.k
        public void maybeThrowError() throws IOException {
            DashMediaSource.this.A.maybeThrowError();
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public final class g implements Loader.b<io.bidmachine.media3.exoplayer.upstream.c<Long>> {
        private g() {
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
        /* renamed from: a */
        public void h(io.bidmachine.media3.exoplayer.upstream.c<Long> cVar, long j10, long j11, boolean z10) {
            DashMediaSource.this.R(cVar, j10, j11);
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
        /* renamed from: b */
        public void f(io.bidmachine.media3.exoplayer.upstream.c<Long> cVar, long j10, long j11) {
            DashMediaSource.this.V(cVar, j10, j11);
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
        /* renamed from: c */
        public Loader.c j(io.bidmachine.media3.exoplayer.upstream.c<Long> cVar, long j10, long j11, IOException iOException, int i10) {
            return DashMediaSource.this.W(cVar, j10, j11, iOException);
        }

        /* synthetic */ g(DashMediaSource dashMediaSource, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class h implements c.a<Long> {
        private h() {
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.c.a
        /* renamed from: a */
        public Long parse(Uri uri, InputStream inputStream) throws IOException {
            return Long.valueOf(m0.a1(new BufferedReader(new InputStreamReader(inputStream)).readLine()));
        }

        /* synthetic */ h(a aVar) {
            this();
        }
    }

    static {
        zm.r.a("media3.exoplayer.dash");
    }

    /* synthetic */ DashMediaSource(q qVar, kn.c cVar, d.a aVar, c.a aVar2, a.InterfaceC0800a interfaceC0800a, sn.e eVar, wn.e eVar2, i iVar, io.bidmachine.media3.exoplayer.upstream.b bVar, long j10, long j11, a aVar3) {
        this(qVar, cVar, aVar, aVar2, interfaceC0800a, eVar, eVar2, iVar, bVar, j10, j11);
    }

    private static long H(kn.g gVar, long j10, long j11) {
        long S0 = m0.S0(gVar.f60842b);
        boolean L = L(gVar);
        long j12 = Long.MAX_VALUE;
        for (int i10 = 0; i10 < gVar.f60843c.size(); i10++) {
            kn.a aVar = gVar.f60843c.get(i10);
            List<j> list = aVar.f60797c;
            int i11 = aVar.f60796b;
            boolean z10 = true;
            z10 = (i11 == 1 || i11 == 2) ? false : false;
            if ((!L || !z10) && !list.isEmpty()) {
                jn.e k10 = list.get(0).k();
                if (k10 == null) {
                    return S0 + j10;
                }
                long i12 = k10.i(j10, j11);
                if (i12 == 0) {
                    return S0;
                }
                long b10 = (k10.b(j10, j11) + i12) - 1;
                j12 = Math.min(j12, k10.a(b10, j10) + k10.getTimeUs(b10) + S0);
            }
        }
        return j12;
    }

    private static long I(kn.g gVar, long j10, long j11) {
        long S0 = m0.S0(gVar.f60842b);
        boolean L = L(gVar);
        long j12 = S0;
        for (int i10 = 0; i10 < gVar.f60843c.size(); i10++) {
            kn.a aVar = gVar.f60843c.get(i10);
            List<j> list = aVar.f60797c;
            int i11 = aVar.f60796b;
            boolean z10 = true;
            z10 = (i11 == 1 || i11 == 2) ? false : false;
            if ((!L || !z10) && !list.isEmpty()) {
                jn.e k10 = list.get(0).k();
                if (k10 == null) {
                    return S0;
                }
                if (k10.i(j10, j11) == 0) {
                    return S0;
                }
                j12 = Math.max(j12, k10.getTimeUs(k10.b(j10, j11)) + S0);
            }
        }
        return j12;
    }

    private static long J(kn.c cVar, long j10) {
        jn.e k10;
        int d10 = cVar.d() - 1;
        kn.g c10 = cVar.c(d10);
        long S0 = m0.S0(c10.f60842b);
        long f10 = cVar.f(d10);
        long S02 = m0.S0(j10);
        long S03 = m0.S0(cVar.f60805a);
        long S04 = m0.S0(cVar.f60809e);
        S04 = (S04 == -9223372036854775807L || S04 >= 5000000) ? 5000000L : 5000000L;
        for (int i10 = 0; i10 < c10.f60843c.size(); i10++) {
            List<j> list = c10.f60843c.get(i10).f60797c;
            if (!list.isEmpty() && (k10 = list.get(0).k()) != null) {
                long c11 = ((S03 + S0) + k10.c(f10, S02)) - S02;
                if (c11 > 0 && (c11 < S04 - 100000 || (c11 > S04 && c11 < S04 + 100000))) {
                    S04 = c11;
                }
            }
        }
        return j7.e.b(S04, 1000L, RoundingMode.CEILING);
    }

    private long K() {
        return Math.min((this.M - 1) * 1000, 5000);
    }

    private static boolean L(kn.g gVar) {
        for (int i10 = 0; i10 < gVar.f60843c.size(); i10++) {
            int i11 = gVar.f60843c.get(i10).f60796b;
            if (i11 == 1 || i11 == 2) {
                return true;
            }
        }
        return false;
    }

    private static boolean M(kn.g gVar) {
        for (int i10 = 0; i10 < gVar.f60843c.size(); i10++) {
            jn.e k10 = gVar.f60843c.get(i10).f60797c.get(0).k();
            if (k10 == null || k10.h()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N() {
        Z(false);
    }

    private void O() {
        xn.b.l(this.A, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X(IOException iOException) {
        cn.r.d("DashMediaSource", "Failed to resolve time offset.", iOException);
        this.L = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        Z(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y(long j10) {
        this.L = j10;
        Z(true);
    }

    private void Z(boolean z10) {
        boolean z11;
        kn.g gVar;
        long j10;
        long j11;
        q.g gVar2;
        boolean z12;
        for (int i10 = 0; i10 < this.f55653u.size(); i10++) {
            int keyAt = this.f55653u.keyAt(i10);
            if (keyAt >= this.O) {
                this.f55653u.valueAt(i10).G(this.H, keyAt - this.O);
            }
        }
        kn.g c10 = this.H.c(0);
        int d10 = this.H.d() - 1;
        kn.g c11 = this.H.c(d10);
        long f10 = this.H.f(d10);
        long S0 = m0.S0(m0.h0(this.L));
        long I = I(c10, this.H.f(0), S0);
        long H = H(c11, f10, S0);
        if (this.H.f60808d && !M(c11)) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11) {
            long j12 = this.H.f60810f;
            if (j12 != -9223372036854775807L) {
                I = Math.max(I, H - m0.S0(j12));
            }
        }
        long j13 = H - I;
        kn.c cVar = this.H;
        if (cVar.f60808d) {
            if (cVar.f60805a != -9223372036854775807L) {
                z12 = true;
            } else {
                z12 = false;
            }
            cn.a.g(z12);
            long S02 = (S0 - m0.S0(this.H.f60805a)) - I;
            g0(S02, j13);
            long u12 = this.H.f60805a + m0.u1(I);
            long S03 = S02 - m0.S0(this.E.f72066a);
            long min = Math.min(this.f55648p, j13 / 2);
            j10 = u12;
            if (S03 < min) {
                j11 = min;
            } else {
                j11 = S03;
            }
            gVar = c10;
        } else {
            gVar = c10;
            j10 = -9223372036854775807L;
            j11 = 0;
        }
        long S04 = I - m0.S0(gVar.f60842b);
        kn.c cVar2 = this.H;
        long j14 = cVar2.f60805a;
        long j15 = this.L;
        int i11 = this.O;
        q a10 = a();
        if (this.H.f60808d) {
            gVar2 = this.E;
        } else {
            gVar2 = null;
        }
        z(new b(j14, j10, j15, i11, S04, j13, j11, cVar2, a10, gVar2));
        if (!this.f55640h) {
            this.D.removeCallbacks(this.f55655w);
            if (z11) {
                this.D.postDelayed(this.f55655w, J(this.H, m0.h0(this.L)));
            }
            if (this.I) {
                f0();
            } else if (z10) {
                kn.c cVar3 = this.H;
                if (cVar3.f60808d) {
                    long j16 = cVar3.f60809e;
                    if (j16 != -9223372036854775807L) {
                        if (j16 == 0) {
                            j16 = 5000;
                        }
                        d0(Math.max(0L, (this.J + j16) - SystemClock.elapsedRealtime()));
                    }
                }
            }
        }
    }

    private void a0(kn.o oVar) {
        String str = oVar.f60895a;
        if (!Objects.equals(str, "urn:mpeg:dash:utc:direct:2014") && !Objects.equals(str, "urn:mpeg:dash:utc:direct:2012")) {
            if (!Objects.equals(str, "urn:mpeg:dash:utc:http-iso:2014") && !Objects.equals(str, "urn:mpeg:dash:utc:http-iso:2012")) {
                if (!Objects.equals(str, "urn:mpeg:dash:utc:http-xsdate:2014") && !Objects.equals(str, "urn:mpeg:dash:utc:http-xsdate:2012")) {
                    if (!Objects.equals(str, "urn:mpeg:dash:utc:ntp:2014") && !Objects.equals(str, "urn:mpeg:dash:utc:ntp:2012")) {
                        X(new IOException("Unsupported UTC timing scheme"));
                        return;
                    } else {
                        O();
                        return;
                    }
                }
                c0(oVar, new h(null));
                return;
            }
            c0(oVar, new d());
            return;
        }
        b0(oVar);
    }

    private void b0(kn.o oVar) {
        try {
            Y(m0.a1(oVar.f60896b) - this.K);
        } catch (ParserException e10) {
            X(e10);
        }
    }

    private void c0(kn.o oVar, c.a<Long> aVar) {
        e0(new io.bidmachine.media3.exoplayer.upstream.c(this.f55658z, Uri.parse(oVar.f60896b), 5, aVar), new g(this, null), 1);
    }

    private void d0(long j10) {
        this.D.postDelayed(this.f55654v, j10);
    }

    private <T> void e0(io.bidmachine.media3.exoplayer.upstream.c<T> cVar, Loader.b<io.bidmachine.media3.exoplayer.upstream.c<T>> bVar, int i10) {
        this.A.m(cVar, bVar, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0() {
        Uri uri;
        this.D.removeCallbacks(this.f55654v);
        if (this.A.h()) {
            return;
        }
        if (this.A.i()) {
            this.I = true;
            return;
        }
        synchronized (this.f55652t) {
            uri = this.F;
        }
        this.I = false;
        e0(new io.bidmachine.media3.exoplayer.upstream.c(this.f55658z, new g.b().i(uri).b(1).a(), 4, this.f55650r), this.f55651s, this.f55645m.b(4));
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void g0(long r19, long r21) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.dash.DashMediaSource.g0(long, long):void");
    }

    @Override // io.bidmachine.media3.exoplayer.source.a
    protected void A() {
        this.I = false;
        this.f55658z = null;
        Loader loader = this.A;
        if (loader != null) {
            loader.k();
            this.A = null;
        }
        this.J = 0L;
        this.K = 0L;
        this.F = this.G;
        this.C = null;
        Handler handler = this.D;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.D = null;
        }
        this.L = -9223372036854775807L;
        this.M = 0;
        this.N = -9223372036854775807L;
        this.f55653u.clear();
        this.f55646n.i();
        this.f55644l.release();
    }

    void P(long j10) {
        long j11 = this.N;
        if (j11 == -9223372036854775807L || j11 < j10) {
            this.N = j10;
        }
    }

    void Q() {
        this.D.removeCallbacks(this.f55655w);
        f0();
    }

    void R(io.bidmachine.media3.exoplayer.upstream.c<?> cVar, long j10, long j11) {
        sn.i iVar = new sn.i(cVar.f57123a, cVar.f57124b, cVar.d(), cVar.b(), j10, j11, cVar.a());
        this.f55645m.a(cVar.f57123a);
        this.f55649q.s(iVar, cVar.f57125c);
    }

    void S(io.bidmachine.media3.exoplayer.upstream.c<kn.c> cVar, long j10, long j11) {
        int d10;
        sn.i iVar = new sn.i(cVar.f57123a, cVar.f57124b, cVar.d(), cVar.b(), j10, j11, cVar.a());
        this.f55645m.a(cVar.f57123a);
        this.f55649q.v(iVar, cVar.f57125c);
        kn.c c10 = cVar.c();
        kn.c cVar2 = this.H;
        if (cVar2 == null) {
            d10 = 0;
        } else {
            d10 = cVar2.d();
        }
        long j12 = c10.c(0).f60842b;
        int i10 = 0;
        while (i10 < d10 && this.H.c(i10).f60842b < j12) {
            i10++;
        }
        if (c10.f60808d) {
            if (d10 - i10 > c10.d()) {
                cn.r.h("DashMediaSource", "Loaded out of sync manifest");
            } else {
                long j13 = this.N;
                if (j13 != -9223372036854775807L && c10.f60812h * 1000 <= j13) {
                    cn.r.h("DashMediaSource", "Loaded stale dynamic manifest: " + c10.f60812h + ", " + this.N);
                } else {
                    this.M = 0;
                }
            }
            int i11 = this.M;
            this.M = i11 + 1;
            if (i11 < this.f55645m.b(cVar.f57125c)) {
                d0(K());
                return;
            } else {
                this.C = new DashManifestStaleException();
                return;
            }
        }
        this.H = c10;
        this.I = c10.f60808d & this.I;
        this.J = j10 - j11;
        this.K = j10;
        this.O += i10;
        synchronized (this.f55652t) {
            try {
                if (cVar.f57124b.f51378a == this.F) {
                    Uri uri = this.H.f60815k;
                    if (uri == null) {
                        uri = cVar.d();
                    }
                    this.F = uri;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        kn.c cVar3 = this.H;
        if (cVar3.f60808d && this.L == -9223372036854775807L) {
            kn.o oVar = cVar3.f60813i;
            if (oVar != null) {
                a0(oVar);
                return;
            } else {
                O();
                return;
            }
        }
        Z(true);
    }

    Loader.c T(io.bidmachine.media3.exoplayer.upstream.c<kn.c> cVar, long j10, long j11, IOException iOException, int i10) {
        Loader.c g10;
        sn.i iVar = new sn.i(cVar.f57123a, cVar.f57124b, cVar.d(), cVar.b(), j10, j11, cVar.a());
        long d10 = this.f55645m.d(new b.c(iVar, new sn.j(cVar.f57125c), iOException, i10));
        if (d10 == -9223372036854775807L) {
            g10 = Loader.f57095g;
        } else {
            g10 = Loader.g(false, d10);
        }
        boolean c10 = g10.c();
        this.f55649q.z(iVar, cVar.f57125c, iOException, !c10);
        if (!c10) {
            this.f55645m.a(cVar.f57123a);
        }
        return g10;
    }

    void U(io.bidmachine.media3.exoplayer.upstream.c<kn.c> cVar, long j10, long j11, int i10) {
        sn.i iVar;
        if (i10 == 0) {
            iVar = new sn.i(cVar.f57123a, cVar.f57124b, j10);
        } else {
            iVar = new sn.i(cVar.f57123a, cVar.f57124b, cVar.d(), cVar.b(), j10, j11, cVar.a());
        }
        this.f55649q.B(iVar, cVar.f57125c, i10);
    }

    void V(io.bidmachine.media3.exoplayer.upstream.c<Long> cVar, long j10, long j11) {
        sn.i iVar = new sn.i(cVar.f57123a, cVar.f57124b, cVar.d(), cVar.b(), j10, j11, cVar.a());
        this.f55645m.a(cVar.f57123a);
        this.f55649q.v(iVar, cVar.f57125c);
        Y(cVar.c().longValue() - j10);
    }

    Loader.c W(io.bidmachine.media3.exoplayer.upstream.c<Long> cVar, long j10, long j11, IOException iOException) {
        this.f55649q.z(new sn.i(cVar.f57123a, cVar.f57124b, cVar.d(), cVar.b(), j10, j11, cVar.a()), cVar.f57125c, iOException, true);
        this.f55645m.a(cVar.f57123a);
        X(iOException);
        return Loader.f57094f;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public synchronized q a() {
        return this.P;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public synchronized void d(q qVar) {
        this.P = qVar;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public io.bidmachine.media3.exoplayer.source.q f(r.b bVar, wn.b bVar2, long j10) {
        int intValue = ((Integer) bVar.f56990a).intValue() - this.O;
        s.a t10 = t(bVar);
        io.bidmachine.media3.exoplayer.dash.c cVar = new io.bidmachine.media3.exoplayer.dash.c(intValue + this.O, this.H, this.f55646n, intValue, this.f55642j, this.B, null, this.f55644l, r(bVar), this.f55645m, t10, this.L, this.f55657y, bVar2, this.f55643k, this.f55656x, w());
        this.f55653u.put(cVar.f55685a, cVar);
        return cVar;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public void m(io.bidmachine.media3.exoplayer.source.q qVar) {
        io.bidmachine.media3.exoplayer.dash.c cVar = (io.bidmachine.media3.exoplayer.dash.c) qVar;
        cVar.C();
        this.f55653u.remove(cVar.f55685a);
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        this.f55657y.maybeThrowError();
    }

    @Override // io.bidmachine.media3.exoplayer.source.a
    protected void y(@Nullable o oVar) {
        this.B = oVar;
        this.f55644l.c(Looper.myLooper(), w());
        this.f55644l.prepare();
        if (this.f55640h) {
            Z(false);
            return;
        }
        this.f55658z = this.f55641i.createDataSource();
        this.A = new Loader("DashMediaSource");
        this.D = m0.A();
        f0();
    }

    private DashMediaSource(q qVar, @Nullable kn.c cVar, @Nullable d.a aVar, @Nullable c.a<? extends kn.c> aVar2, a.InterfaceC0800a interfaceC0800a, sn.e eVar, @Nullable wn.e eVar2, i iVar, io.bidmachine.media3.exoplayer.upstream.b bVar, long j10, long j11) {
        this.P = qVar;
        this.E = qVar.f71994d;
        this.F = ((q.h) cn.a.e(qVar.f71992b)).f72084a;
        this.G = qVar.f71992b.f72084a;
        this.H = cVar;
        this.f55641i = aVar;
        this.f55650r = aVar2;
        this.f55642j = interfaceC0800a;
        this.f55644l = iVar;
        this.f55645m = bVar;
        this.f55647o = j10;
        this.f55648p = j11;
        this.f55643k = eVar;
        this.f55646n = new jn.b();
        boolean z10 = cVar != null;
        this.f55640h = z10;
        this.f55649q = t(null);
        this.f55652t = new Object();
        this.f55653u = new SparseArray<>();
        this.f55656x = new c(this, null);
        this.N = -9223372036854775807L;
        this.L = -9223372036854775807L;
        if (z10) {
            cn.a.g(true ^ cVar.f60808d);
            this.f55651s = null;
            this.f55654v = null;
            this.f55655w = null;
            this.f55657y = new k.a();
            return;
        }
        this.f55651s = new e(this, null);
        this.f55657y = new f();
        this.f55654v = new Runnable() { // from class: jn.c
            @Override // java.lang.Runnable
            public final void run() {
                DashMediaSource.this.f0();
            }
        };
        this.f55655w = new Runnable() { // from class: jn.d
            @Override // java.lang.Runnable
            public final void run() {
                DashMediaSource.this.N();
            }
        };
    }
}
