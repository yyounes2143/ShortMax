package io.bidmachine.media3.exoplayer.hls.playlist;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import cn.m0;
import com.google.common.collect.l;
import en.g;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.datasource.HttpDataSource$InvalidResponseCodeException;
import io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistParser;
import io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import io.bidmachine.media3.exoplayer.hls.playlist.a;
import io.bidmachine.media3.exoplayer.hls.playlist.c;
import io.bidmachine.media3.exoplayer.hls.playlist.d;
import io.bidmachine.media3.exoplayer.source.s;
import io.bidmachine.media3.exoplayer.upstream.Loader;
import io.bidmachine.media3.exoplayer.upstream.b;
import io.bidmachine.media3.exoplayer.upstream.c;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import nn.e;
import sn.i;
import sn.j;
/* compiled from: DefaultHlsPlaylistTracker.java */
/* loaded from: classes8.dex */
public final class a implements HlsPlaylistTracker, Loader.b<io.bidmachine.media3.exoplayer.upstream.c<nn.d>> {

    /* renamed from: p  reason: collision with root package name */
    public static final HlsPlaylistTracker.a f56174p = new HlsPlaylistTracker.a() { // from class: nn.b
        @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker.a
        public final HlsPlaylistTracker a(mn.d dVar, io.bidmachine.media3.exoplayer.upstream.b bVar, e eVar, wn.e eVar2) {
            return new io.bidmachine.media3.exoplayer.hls.playlist.a(dVar, bVar, eVar, eVar2);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final mn.d f56175a;

    /* renamed from: b  reason: collision with root package name */
    private final e f56176b;

    /* renamed from: c  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.upstream.b f56177c;

    /* renamed from: d  reason: collision with root package name */
    private final HashMap<Uri, c> f56178d;

    /* renamed from: e  reason: collision with root package name */
    private final CopyOnWriteArrayList<HlsPlaylistTracker.b> f56179e;

    /* renamed from: f  reason: collision with root package name */
    private final double f56180f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private s.a f56181g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Loader f56182h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Handler f56183i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private HlsPlaylistTracker.c f56184j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private d f56185k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private Uri f56186l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private io.bidmachine.media3.exoplayer.hls.playlist.c f56187m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f56188n;

    /* renamed from: o  reason: collision with root package name */
    private long f56189o;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultHlsPlaylistTracker.java */
    /* loaded from: classes8.dex */
    public class b implements HlsPlaylistTracker.b {
        private b() {
        }

        @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker.b
        public void c() {
            a.this.f56179e.remove(this);
        }

        @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker.b
        public boolean d(Uri uri, b.c cVar, boolean z10) {
            c cVar2;
            if (a.this.f56187m == null) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                List<d.b> list = ((d) m0.i(a.this.f56185k)).f56268e;
                int i10 = 0;
                for (int i11 = 0; i11 < list.size(); i11++) {
                    c cVar3 = (c) a.this.f56178d.get(list.get(i11).f56281a);
                    if (cVar3 != null && elapsedRealtime < cVar3.f56198h) {
                        i10++;
                    }
                }
                b.C0807b c10 = a.this.f56177c.c(new b.a(1, 0, a.this.f56185k.f56268e.size(), i10), cVar);
                if (c10 != null && c10.f57117a == 2 && (cVar2 = (c) a.this.f56178d.get(uri)) != null) {
                    cVar2.l(c10.f57118b);
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultHlsPlaylistTracker.java */
    /* loaded from: classes8.dex */
    public final class c implements Loader.b<io.bidmachine.media3.exoplayer.upstream.c<nn.d>> {

        /* renamed from: a  reason: collision with root package name */
        private final Uri f56191a;

        /* renamed from: b  reason: collision with root package name */
        private final Loader f56192b = new Loader("DefaultHlsPlaylistTracker:MediaPlaylist");

        /* renamed from: c  reason: collision with root package name */
        private final en.d f56193c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private io.bidmachine.media3.exoplayer.hls.playlist.c f56194d;

        /* renamed from: e  reason: collision with root package name */
        private long f56195e;

        /* renamed from: f  reason: collision with root package name */
        private long f56196f;

        /* renamed from: g  reason: collision with root package name */
        private long f56197g;

        /* renamed from: h  reason: collision with root package name */
        private long f56198h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f56199i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private IOException f56200j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f56201k;

        public c(Uri uri) {
            this.f56191a = uri;
            this.f56193c = a.this.f56175a.a(4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean l(long j10) {
            this.f56198h = SystemClock.elapsedRealtime() + j10;
            if (this.f56191a.equals(a.this.f56186l) && !a.this.P()) {
                return true;
            }
            return false;
        }

        private Uri m() {
            String str;
            io.bidmachine.media3.exoplayer.hls.playlist.c cVar = this.f56194d;
            if (cVar != null) {
                c.h hVar = cVar.f56223v;
                if (hVar.f56261a != -9223372036854775807L || hVar.f56265e) {
                    Uri.Builder buildUpon = this.f56191a.buildUpon();
                    io.bidmachine.media3.exoplayer.hls.playlist.c cVar2 = this.f56194d;
                    if (cVar2.f56223v.f56265e) {
                        buildUpon.appendQueryParameter("_HLS_msn", String.valueOf(cVar2.f56212k + cVar2.f56219r.size()));
                        io.bidmachine.media3.exoplayer.hls.playlist.c cVar3 = this.f56194d;
                        if (cVar3.f56215n != -9223372036854775807L) {
                            List<c.d> list = cVar3.f56220s;
                            int size = list.size();
                            if (!list.isEmpty() && ((c.d) l.d(list)).f56244m) {
                                size--;
                            }
                            buildUpon.appendQueryParameter("_HLS_part", String.valueOf(size));
                        }
                    }
                    c.h hVar2 = this.f56194d.f56223v;
                    if (hVar2.f56261a != -9223372036854775807L) {
                        if (hVar2.f56262b) {
                            str = "v2";
                        } else {
                            str = "YES";
                        }
                        buildUpon.appendQueryParameter("_HLS_skip", str);
                    }
                    return buildUpon.build();
                }
            }
            return this.f56191a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(Uri uri) {
            this.f56199i = false;
            s(uri);
        }

        private void s(Uri uri) {
            c.a<nn.d> a10 = a.this.f56176b.a(a.this.f56185k, this.f56194d);
            g a11 = new g.b().i(uri).b(1).a();
            a.v(a.this);
            io.bidmachine.media3.exoplayer.upstream.c cVar = new io.bidmachine.media3.exoplayer.upstream.c(this.f56193c, a11, 4, a10);
            this.f56192b.m(cVar, this, a.this.f56177c.b(cVar.f57125c));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t(final Uri uri) {
            this.f56198h = 0L;
            if (!this.f56199i && !this.f56192b.i() && !this.f56192b.h()) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (elapsedRealtime < this.f56197g) {
                    this.f56199i = true;
                    a.this.f56183i.postDelayed(new Runnable() { // from class: io.bidmachine.media3.exoplayer.hls.playlist.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            a.c.this.q(uri);
                        }
                    }, this.f56197g - elapsedRealtime);
                    return;
                }
                s(uri);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void z(io.bidmachine.media3.exoplayer.hls.playlist.c cVar, i iVar) {
            io.bidmachine.media3.exoplayer.hls.playlist.c cVar2;
            boolean z10;
            long j10;
            io.bidmachine.media3.exoplayer.hls.playlist.c cVar3 = this.f56194d;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f56195e = elapsedRealtime;
            io.bidmachine.media3.exoplayer.hls.playlist.c J = a.this.J(cVar3, cVar);
            this.f56194d = J;
            IOException iOException = null;
            if (J != cVar3) {
                this.f56200j = null;
                this.f56196f = elapsedRealtime;
                a.this.W(this.f56191a, J);
            } else if (!J.f56216o) {
                if (cVar.f56212k + cVar.f56219r.size() < this.f56194d.f56212k) {
                    iOException = new HlsPlaylistTracker.PlaylistResetException(this.f56191a);
                    z10 = true;
                } else {
                    z10 = false;
                    if (elapsedRealtime - this.f56196f > m0.u1(cVar2.f56214m) * a.this.f56180f) {
                        iOException = new HlsPlaylistTracker.PlaylistStuckException(this.f56191a);
                    }
                }
                if (iOException != null) {
                    this.f56200j = iOException;
                    a.this.R(this.f56191a, new b.c(iVar, new j(4), iOException, 1), z10);
                }
            }
            io.bidmachine.media3.exoplayer.hls.playlist.c cVar4 = this.f56194d;
            if (!cVar4.f56223v.f56265e) {
                if (cVar4 != cVar3) {
                    j10 = cVar4.f56214m;
                } else {
                    j10 = cVar4.f56214m / 2;
                }
            } else {
                j10 = 0;
            }
            this.f56197g = (elapsedRealtime + m0.u1(j10)) - iVar.f66494f;
            if (!this.f56194d.f56216o) {
                if (this.f56191a.equals(a.this.f56186l) || this.f56201k) {
                    t(m());
                }
            }
        }

        public void A() {
            this.f56192b.k();
        }

        public void B(boolean z10) {
            this.f56201k = z10;
        }

        @Nullable
        public io.bidmachine.media3.exoplayer.hls.playlist.c n() {
            return this.f56194d;
        }

        public boolean o() {
            return this.f56201k;
        }

        public boolean p() {
            int i10;
            if (this.f56194d == null) {
                return false;
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long max = Math.max(30000L, m0.u1(this.f56194d.f56222u));
            io.bidmachine.media3.exoplayer.hls.playlist.c cVar = this.f56194d;
            if (!cVar.f56216o && (i10 = cVar.f56205d) != 2 && i10 != 1 && this.f56195e + max <= elapsedRealtime) {
                return false;
            }
            return true;
        }

        public void r(boolean z10) {
            Uri uri;
            if (z10) {
                uri = m();
            } else {
                uri = this.f56191a;
            }
            t(uri);
        }

        public void u() throws IOException {
            this.f56192b.maybeThrowError();
            IOException iOException = this.f56200j;
            if (iOException == null) {
                return;
            }
            throw iOException;
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
        /* renamed from: v */
        public void h(io.bidmachine.media3.exoplayer.upstream.c<nn.d> cVar, long j10, long j11, boolean z10) {
            i iVar = new i(cVar.f57123a, cVar.f57124b, cVar.d(), cVar.b(), j10, j11, cVar.a());
            a.this.f56177c.a(cVar.f57123a);
            a.this.f56181g.s(iVar, 4);
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
        /* renamed from: w */
        public void f(io.bidmachine.media3.exoplayer.upstream.c<nn.d> cVar, long j10, long j11) {
            nn.d c10 = cVar.c();
            i iVar = new i(cVar.f57123a, cVar.f57124b, cVar.d(), cVar.b(), j10, j11, cVar.a());
            if (c10 instanceof io.bidmachine.media3.exoplayer.hls.playlist.c) {
                z((io.bidmachine.media3.exoplayer.hls.playlist.c) c10, iVar);
                a.this.f56181g.v(iVar, 4);
            } else {
                this.f56200j = ParserException.e("Loaded playlist has unexpected type.", null);
                a.this.f56181g.z(iVar, 4, this.f56200j, true);
            }
            a.this.f56177c.a(cVar.f57123a);
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
        /* renamed from: x */
        public Loader.c j(io.bidmachine.media3.exoplayer.upstream.c<nn.d> cVar, long j10, long j11, IOException iOException, int i10) {
            boolean z10;
            int i11;
            Loader.c cVar2;
            i iVar = new i(cVar.f57123a, cVar.f57124b, cVar.d(), cVar.b(), j10, j11, cVar.a());
            if (cVar.d().getQueryParameter("_HLS_msn") != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            boolean z11 = iOException instanceof HlsPlaylistParser.DeltaUpdateException;
            if (z10 || z11) {
                if (iOException instanceof HttpDataSource$InvalidResponseCodeException) {
                    i11 = ((HttpDataSource$InvalidResponseCodeException) iOException).f55324d;
                } else {
                    i11 = Integer.MAX_VALUE;
                }
                if (z11 || i11 == 400 || i11 == 503) {
                    this.f56197g = SystemClock.elapsedRealtime();
                    r(false);
                    ((s.a) m0.i(a.this.f56181g)).z(iVar, cVar.f57125c, iOException, true);
                    return Loader.f57094f;
                }
            }
            b.c cVar3 = new b.c(iVar, new j(cVar.f57125c), iOException, i10);
            if (a.this.R(this.f56191a, cVar3, false)) {
                long d10 = a.this.f56177c.d(cVar3);
                if (d10 != -9223372036854775807L) {
                    cVar2 = Loader.g(false, d10);
                } else {
                    cVar2 = Loader.f57095g;
                }
            } else {
                cVar2 = Loader.f57094f;
            }
            boolean c10 = cVar2.c();
            a.this.f56181g.z(iVar, cVar.f57125c, iOException, !c10);
            if (!c10) {
                a.this.f56177c.a(cVar.f57123a);
            }
            return cVar2;
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
        /* renamed from: y */
        public void g(io.bidmachine.media3.exoplayer.upstream.c<nn.d> cVar, long j10, long j11, int i10) {
            i iVar;
            if (i10 == 0) {
                iVar = new i(cVar.f57123a, cVar.f57124b, j10);
            } else {
                iVar = new i(cVar.f57123a, cVar.f57124b, cVar.d(), cVar.b(), j10, j11, cVar.a());
            }
            a.this.f56181g.B(iVar, cVar.f57125c, i10);
        }
    }

    public a(mn.d dVar, io.bidmachine.media3.exoplayer.upstream.b bVar, e eVar, @Nullable wn.e eVar2) {
        this(dVar, bVar, eVar, eVar2, 3.5d);
    }

    private void H(List<Uri> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Uri uri = list.get(i10);
            this.f56178d.put(uri, new c(uri));
        }
    }

    private static c.f I(io.bidmachine.media3.exoplayer.hls.playlist.c cVar, io.bidmachine.media3.exoplayer.hls.playlist.c cVar2) {
        int i10 = (int) (cVar2.f56212k - cVar.f56212k);
        List<c.f> list = cVar.f56219r;
        if (i10 < list.size()) {
            return list.get(i10);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public io.bidmachine.media3.exoplayer.hls.playlist.c J(@Nullable io.bidmachine.media3.exoplayer.hls.playlist.c cVar, io.bidmachine.media3.exoplayer.hls.playlist.c cVar2) {
        if (!cVar2.e(cVar)) {
            if (cVar2.f56216o) {
                return cVar.c();
            }
            return cVar;
        }
        return cVar2.b(L(cVar, cVar2), K(cVar, cVar2));
    }

    private int K(@Nullable io.bidmachine.media3.exoplayer.hls.playlist.c cVar, io.bidmachine.media3.exoplayer.hls.playlist.c cVar2) {
        int i10;
        if (cVar2.f56210i) {
            return cVar2.f56211j;
        }
        io.bidmachine.media3.exoplayer.hls.playlist.c cVar3 = this.f56187m;
        if (cVar3 != null) {
            i10 = cVar3.f56211j;
        } else {
            i10 = 0;
        }
        if (cVar == null) {
            return i10;
        }
        c.f I = I(cVar, cVar2);
        if (I != null) {
            return (cVar.f56211j + I.f56253d) - cVar2.f56219r.get(0).f56253d;
        }
        return i10;
    }

    private long L(@Nullable io.bidmachine.media3.exoplayer.hls.playlist.c cVar, io.bidmachine.media3.exoplayer.hls.playlist.c cVar2) {
        long j10;
        if (cVar2.f56217p) {
            return cVar2.f56209h;
        }
        io.bidmachine.media3.exoplayer.hls.playlist.c cVar3 = this.f56187m;
        if (cVar3 != null) {
            j10 = cVar3.f56209h;
        } else {
            j10 = 0;
        }
        if (cVar == null) {
            return j10;
        }
        int size = cVar.f56219r.size();
        c.f I = I(cVar, cVar2);
        if (I != null) {
            return cVar.f56209h + I.f56254e;
        }
        if (size == cVar2.f56212k - cVar.f56212k) {
            return cVar.d();
        }
        return j10;
    }

    private Uri M(Uri uri) {
        c.e eVar;
        io.bidmachine.media3.exoplayer.hls.playlist.c cVar = this.f56187m;
        if (cVar != null && cVar.f56223v.f56265e && (eVar = cVar.f56221t.get(uri)) != null) {
            Uri.Builder buildUpon = uri.buildUpon();
            buildUpon.appendQueryParameter("_HLS_msn", String.valueOf(eVar.f56246b));
            int i10 = eVar.f56247c;
            if (i10 != -1) {
                buildUpon.appendQueryParameter("_HLS_part", String.valueOf(i10));
            }
            return buildUpon.build();
        }
        return uri;
    }

    private boolean N(Uri uri) {
        List<d.b> list = this.f56185k.f56268e;
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (uri.equals(list.get(i10).f56281a)) {
                return true;
            }
        }
        return false;
    }

    private void O(Uri uri) {
        c cVar = this.f56178d.get(uri);
        io.bidmachine.media3.exoplayer.hls.playlist.c n10 = cVar.n();
        if (cVar.o()) {
            return;
        }
        cVar.B(true);
        if (n10 != null && !n10.f56216o) {
            cVar.r(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean P() {
        List<d.b> list = this.f56185k.f56268e;
        int size = list.size();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (int i10 = 0; i10 < size; i10++) {
            c cVar = (c) cn.a.e(this.f56178d.get(list.get(i10).f56281a));
            if (elapsedRealtime > cVar.f56198h) {
                Uri uri = cVar.f56191a;
                this.f56186l = uri;
                cVar.t(M(uri));
                return true;
            }
        }
        return false;
    }

    private void Q(Uri uri) {
        if (!uri.equals(this.f56186l) && N(uri)) {
            io.bidmachine.media3.exoplayer.hls.playlist.c cVar = this.f56187m;
            if (cVar == null || !cVar.f56216o) {
                this.f56186l = uri;
                c cVar2 = this.f56178d.get(uri);
                io.bidmachine.media3.exoplayer.hls.playlist.c cVar3 = cVar2.f56194d;
                if (cVar3 == null || !cVar3.f56216o) {
                    cVar2.t(M(uri));
                    return;
                }
                this.f56187m = cVar3;
                this.f56184j.j(cVar3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean R(Uri uri, b.c cVar, boolean z10) {
        Iterator<HlsPlaylistTracker.b> it = this.f56179e.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            z11 |= !it.next().d(uri, cVar, z10);
        }
        return z11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W(Uri uri, io.bidmachine.media3.exoplayer.hls.playlist.c cVar) {
        if (uri.equals(this.f56186l)) {
            if (this.f56187m == null) {
                this.f56188n = !cVar.f56216o;
                this.f56189o = cVar.f56209h;
            }
            this.f56187m = cVar;
            this.f56184j.j(cVar);
        }
        Iterator<HlsPlaylistTracker.b> it = this.f56179e.iterator();
        while (it.hasNext()) {
            it.next().c();
        }
    }

    static /* synthetic */ wn.e v(a aVar) {
        aVar.getClass();
        return null;
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: S */
    public void h(io.bidmachine.media3.exoplayer.upstream.c<nn.d> cVar, long j10, long j11, boolean z10) {
        i iVar = new i(cVar.f57123a, cVar.f57124b, cVar.d(), cVar.b(), j10, j11, cVar.a());
        this.f56177c.a(cVar.f57123a);
        this.f56181g.s(iVar, 4);
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: T */
    public void f(io.bidmachine.media3.exoplayer.upstream.c<nn.d> cVar, long j10, long j11) {
        d dVar;
        nn.d c10 = cVar.c();
        boolean z10 = c10 instanceof io.bidmachine.media3.exoplayer.hls.playlist.c;
        if (z10) {
            dVar = d.d(c10.f62984a);
        } else {
            dVar = (d) c10;
        }
        this.f56185k = dVar;
        this.f56186l = dVar.f56268e.get(0).f56281a;
        this.f56179e.add(new b());
        H(dVar.f56267d);
        i iVar = new i(cVar.f57123a, cVar.f57124b, cVar.d(), cVar.b(), j10, j11, cVar.a());
        c cVar2 = this.f56178d.get(this.f56186l);
        if (z10) {
            cVar2.z((io.bidmachine.media3.exoplayer.hls.playlist.c) c10, iVar);
        } else {
            cVar2.r(false);
        }
        this.f56177c.a(cVar.f57123a);
        this.f56181g.v(iVar, 4);
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: U */
    public Loader.c j(io.bidmachine.media3.exoplayer.upstream.c<nn.d> cVar, long j10, long j11, IOException iOException, int i10) {
        boolean z10;
        i iVar = new i(cVar.f57123a, cVar.f57124b, cVar.d(), cVar.b(), j10, j11, cVar.a());
        long d10 = this.f56177c.d(new b.c(iVar, new j(cVar.f57125c), iOException, i10));
        if (d10 == -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f56181g.z(iVar, cVar.f57125c, iOException, z10);
        if (z10) {
            this.f56177c.a(cVar.f57123a);
        }
        if (z10) {
            return Loader.f57095g;
        }
        return Loader.g(false, d10);
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
    /* renamed from: V */
    public void g(io.bidmachine.media3.exoplayer.upstream.c<nn.d> cVar, long j10, long j11, int i10) {
        i iVar;
        if (i10 == 0) {
            iVar = new i(cVar.f57123a, cVar.f57124b, j10);
        } else {
            iVar = new i(cVar.f57123a, cVar.f57124b, cVar.d(), cVar.b(), j10, j11, cVar.a());
        }
        this.f56181g.B(iVar, cVar.f57125c, i10);
    }

    @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public long a() {
        return this.f56189o;
    }

    @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void b(HlsPlaylistTracker.b bVar) {
        this.f56179e.remove(bVar);
    }

    @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void c(Uri uri) {
        c cVar = this.f56178d.get(uri);
        if (cVar != null) {
            cVar.B(false);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void d(Uri uri) throws IOException {
        this.f56178d.get(uri).u();
    }

    @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void e(HlsPlaylistTracker.b bVar) {
        cn.a.e(bVar);
        this.f56179e.add(bVar);
    }

    @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void i(Uri uri, s.a aVar, HlsPlaylistTracker.c cVar) {
        this.f56183i = m0.A();
        this.f56181g = aVar;
        this.f56184j = cVar;
        boolean z10 = true;
        io.bidmachine.media3.exoplayer.upstream.c cVar2 = new io.bidmachine.media3.exoplayer.upstream.c(this.f56175a.a(4), new g.b().i(uri).b(1).a(), 4, this.f56176b.b());
        if (this.f56182h != null) {
            z10 = false;
        }
        cn.a.g(z10);
        Loader loader = new Loader("DefaultHlsPlaylistTracker:MultivariantPlaylist");
        this.f56182h = loader;
        loader.m(cVar2, this, this.f56177c.b(cVar2.f57125c));
    }

    @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    @Nullable
    public d k() {
        return this.f56185k;
    }

    @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void l(Uri uri) {
        this.f56178d.get(uri).r(true);
    }

    @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public boolean m(Uri uri) {
        return this.f56178d.get(uri).p();
    }

    @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public boolean n() {
        return this.f56188n;
    }

    @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public boolean o(Uri uri, long j10) {
        c cVar = this.f56178d.get(uri);
        if (cVar != null) {
            return !cVar.l(j10);
        }
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void p() throws IOException {
        Loader loader = this.f56182h;
        if (loader != null) {
            loader.maybeThrowError();
        }
        Uri uri = this.f56186l;
        if (uri != null) {
            d(uri);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    @Nullable
    public io.bidmachine.media3.exoplayer.hls.playlist.c q(Uri uri, boolean z10) {
        io.bidmachine.media3.exoplayer.hls.playlist.c n10 = this.f56178d.get(uri).n();
        if (n10 != null && z10) {
            Q(uri);
            O(uri);
        }
        return n10;
    }

    @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker
    public void stop() {
        this.f56186l = null;
        this.f56187m = null;
        this.f56185k = null;
        this.f56189o = -9223372036854775807L;
        this.f56182h.k();
        this.f56182h = null;
        for (c cVar : this.f56178d.values()) {
            cVar.A();
        }
        this.f56183i.removeCallbacksAndMessages(null);
        this.f56183i = null;
        this.f56178d.clear();
    }

    public a(mn.d dVar, io.bidmachine.media3.exoplayer.upstream.b bVar, e eVar, @Nullable wn.e eVar2, double d10) {
        this.f56175a = dVar;
        this.f56176b = eVar;
        this.f56177c = bVar;
        this.f56180f = d10;
        this.f56179e = new CopyOnWriteArrayList<>();
        this.f56178d = new HashMap<>();
        this.f56189o = -9223372036854775807L;
    }
}
