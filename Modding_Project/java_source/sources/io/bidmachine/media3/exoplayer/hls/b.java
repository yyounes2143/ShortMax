package io.bidmachine.media3.exoplayer.hls;

import android.net.Uri;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import cn.j0;
import cn.m0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.l;
import com.google.common.primitives.Ints;
import en.g;
import en.o;
import gn.i0;
import hn.b2;
import io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import io.bidmachine.media3.exoplayer.hls.playlist.c;
import io.bidmachine.media3.exoplayer.k1;
import io.bidmachine.media3.exoplayer.source.BehindLiveWindowException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import tn.m;
import tn.n;
import vn.q;
import wn.f;
import zm.b0;
/* compiled from: HlsChunkSource.java */
/* loaded from: classes8.dex */
class b {

    /* renamed from: a  reason: collision with root package name */
    private final mn.e f56005a;

    /* renamed from: b  reason: collision with root package name */
    private final en.d f56006b;

    /* renamed from: c  reason: collision with root package name */
    private final en.d f56007c;

    /* renamed from: d  reason: collision with root package name */
    private final mn.i f56008d;

    /* renamed from: e  reason: collision with root package name */
    private final Uri[] f56009e;

    /* renamed from: f  reason: collision with root package name */
    private final io.bidmachine.media3.common.a[] f56010f;

    /* renamed from: g  reason: collision with root package name */
    private final HlsPlaylistTracker f56011g;

    /* renamed from: h  reason: collision with root package name */
    private final b0 f56012h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final List<io.bidmachine.media3.common.a> f56013i;

    /* renamed from: k  reason: collision with root package name */
    private final b2 f56015k;

    /* renamed from: l  reason: collision with root package name */
    private final long f56016l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f56017m;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private IOException f56019o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private Uri f56020p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f56021q;

    /* renamed from: r  reason: collision with root package name */
    private q f56022r;

    /* renamed from: t  reason: collision with root package name */
    private boolean f56024t;

    /* renamed from: u  reason: collision with root package name */
    private long f56025u = -9223372036854775807L;

    /* renamed from: j  reason: collision with root package name */
    private final FullSegmentEncryptionKeyCache f56014j = new FullSegmentEncryptionKeyCache(4);

    /* renamed from: n  reason: collision with root package name */
    private byte[] f56018n = m0.f3619f;

    /* renamed from: s  reason: collision with root package name */
    private long f56023s = -9223372036854775807L;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HlsChunkSource.java */
    /* loaded from: classes8.dex */
    public static final class a extends tn.k {

        /* renamed from: l  reason: collision with root package name */
        private byte[] f56026l;

        public a(en.d dVar, en.g gVar, io.bidmachine.media3.common.a aVar, int i10, @Nullable Object obj, byte[] bArr) {
            super(dVar, gVar, 3, aVar, i10, obj, bArr);
        }

        @Override // tn.k
        protected void e(byte[] bArr, int i10) {
            this.f56026l = Arrays.copyOf(bArr, i10);
        }

        @Nullable
        public byte[] h() {
            return this.f56026l;
        }
    }

    /* compiled from: HlsChunkSource.java */
    /* renamed from: io.bidmachine.media3.exoplayer.hls.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0802b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public tn.e f56027a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f56028b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public Uri f56029c;

        public C0802b() {
            a();
        }

        public void a() {
            this.f56027a = null;
            this.f56028b = false;
            this.f56029c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HlsChunkSource.java */
    @VisibleForTesting
    /* loaded from: classes8.dex */
    public static final class c extends tn.b {

        /* renamed from: e  reason: collision with root package name */
        private final List<c.g> f56030e;

        /* renamed from: f  reason: collision with root package name */
        private final long f56031f;

        /* renamed from: g  reason: collision with root package name */
        private final String f56032g;

        public c(String str, long j10, List<c.g> list) {
            super(0L, list.size() - 1);
            this.f56032g = str;
            this.f56031f = j10;
            this.f56030e = list;
        }

        @Override // tn.n
        public long a() {
            c();
            c.g gVar = this.f56030e.get((int) d());
            return this.f56031f + gVar.f56254e + gVar.f56252c;
        }

        @Override // tn.n
        public long b() {
            c();
            return this.f56031f + this.f56030e.get((int) d()).f56254e;
        }
    }

    /* compiled from: HlsChunkSource.java */
    /* loaded from: classes8.dex */
    private static final class d extends vn.c {

        /* renamed from: i  reason: collision with root package name */
        private int f56033i;

        public d(b0 b0Var, int[] iArr) {
            super(b0Var, iArr);
            this.f56033i = e(b0Var.a(iArr[0]));
        }

        @Override // vn.q
        public int getSelectedIndex() {
            return this.f56033i;
        }

        @Override // vn.q
        @Nullable
        public Object getSelectionData() {
            return null;
        }

        @Override // vn.q
        public int getSelectionReason() {
            return 0;
        }

        @Override // vn.q
        public void h(long j10, long j11, long j12, List<? extends m> list, n[] nVarArr) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (!d(this.f56033i, elapsedRealtime)) {
                return;
            }
            for (int i10 = this.f69050b - 1; i10 >= 0; i10--) {
                if (!d(i10, elapsedRealtime)) {
                    this.f56033i = i10;
                    return;
                }
            }
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HlsChunkSource.java */
    /* loaded from: classes8.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final c.g f56034a;

        /* renamed from: b  reason: collision with root package name */
        public final long f56035b;

        /* renamed from: c  reason: collision with root package name */
        public final int f56036c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f56037d;

        public e(c.g gVar, long j10, int i10) {
            boolean z10;
            this.f56034a = gVar;
            this.f56035b = j10;
            this.f56036c = i10;
            if ((gVar instanceof c.d) && ((c.d) gVar).f56244m) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f56037d = z10;
        }
    }

    public b(mn.e eVar, HlsPlaylistTracker hlsPlaylistTracker, Uri[] uriArr, io.bidmachine.media3.common.a[] aVarArr, mn.d dVar, @Nullable o oVar, mn.i iVar, long j10, @Nullable List<io.bidmachine.media3.common.a> list, b2 b2Var, @Nullable wn.e eVar2) {
        this.f56005a = eVar;
        this.f56011g = hlsPlaylistTracker;
        this.f56009e = uriArr;
        this.f56010f = aVarArr;
        this.f56008d = iVar;
        this.f56016l = j10;
        this.f56013i = list;
        this.f56015k = b2Var;
        en.d a10 = dVar.a(1);
        this.f56006b = a10;
        if (oVar != null) {
            a10.c(oVar);
        }
        this.f56007c = dVar.a(3);
        this.f56012h = new b0(aVarArr);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < uriArr.length; i10++) {
            if ((aVarArr[i10].f55165f & 16384) == 0) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        this.f56022r = new d(this.f56012h, Ints.m(arrayList));
    }

    private void b() {
        this.f56011g.c(this.f56009e[this.f56022r.getSelectedIndexInTrackGroup()]);
    }

    @Nullable
    private static Uri e(io.bidmachine.media3.exoplayer.hls.playlist.c cVar, @Nullable c.g gVar) {
        String str;
        if (gVar != null && (str = gVar.f56256g) != null) {
            return j0.f(cVar.f62984a, str);
        }
        return null;
    }

    private Pair<Long, Integer> g(@Nullable io.bidmachine.media3.exoplayer.hls.d dVar, boolean z10, io.bidmachine.media3.exoplayer.hls.playlist.c cVar, long j10, long j11) {
        boolean z11;
        List<c.d> list;
        long j12;
        long j13;
        int i10 = -1;
        if (dVar != null && !z10) {
            if (dVar.f()) {
                if (dVar.f56044o == -1) {
                    j13 = dVar.e();
                } else {
                    j13 = dVar.f67514j;
                }
                Long valueOf = Long.valueOf(j13);
                int i11 = dVar.f56044o;
                if (i11 != -1) {
                    i10 = i11 + 1;
                }
                return new Pair<>(valueOf, Integer.valueOf(i10));
            }
            return new Pair<>(Long.valueOf(dVar.f67514j), Integer.valueOf(dVar.f56044o));
        }
        long j14 = cVar.f56222u + j10;
        if (dVar != null && !this.f56021q) {
            j11 = dVar.f67466g;
        }
        if (!cVar.f56216o && j11 >= j14) {
            return new Pair<>(Long.valueOf(cVar.f56212k + cVar.f56219r.size()), -1);
        }
        long j15 = j11 - j10;
        List<c.f> list2 = cVar.f56219r;
        Long valueOf2 = Long.valueOf(j15);
        int i12 = 0;
        if (this.f56011g.n() && dVar != null) {
            z11 = false;
        } else {
            z11 = true;
        }
        int f10 = m0.f(list2, valueOf2, true, z11);
        long j16 = f10 + cVar.f56212k;
        if (f10 >= 0) {
            c.f fVar = cVar.f56219r.get(f10);
            if (j15 < fVar.f56254e + fVar.f56252c) {
                list = fVar.f56249m;
            } else {
                list = cVar.f56220s;
            }
            while (true) {
                if (i12 >= list.size()) {
                    break;
                }
                c.d dVar2 = list.get(i12);
                if (j15 < dVar2.f56254e + dVar2.f56252c) {
                    if (dVar2.f56243l) {
                        if (list == cVar.f56220s) {
                            j12 = 1;
                        } else {
                            j12 = 0;
                        }
                        j16 += j12;
                        i10 = i12;
                    }
                } else {
                    i12++;
                }
            }
        }
        return new Pair<>(Long.valueOf(j16), Integer.valueOf(i10));
    }

    @Nullable
    private static e h(io.bidmachine.media3.exoplayer.hls.playlist.c cVar, long j10, int i10) {
        int i11 = (int) (j10 - cVar.f56212k);
        if (i11 == cVar.f56219r.size()) {
            if (i10 == -1) {
                i10 = 0;
            }
            if (i10 >= cVar.f56220s.size()) {
                return null;
            }
            return new e(cVar.f56220s.get(i10), j10, i10);
        }
        c.f fVar = cVar.f56219r.get(i11);
        if (i10 == -1) {
            return new e(fVar, j10, -1);
        }
        if (i10 < fVar.f56249m.size()) {
            return new e(fVar.f56249m.get(i10), j10, i10);
        }
        int i12 = i11 + 1;
        if (i12 < cVar.f56219r.size()) {
            return new e(cVar.f56219r.get(i12), j10 + 1, -1);
        }
        if (cVar.f56220s.isEmpty()) {
            return null;
        }
        return new e(cVar.f56220s.get(0), j10 + 1, 0);
    }

    @VisibleForTesting
    static List<c.g> j(io.bidmachine.media3.exoplayer.hls.playlist.c cVar, long j10, int i10) {
        int i11 = (int) (j10 - cVar.f56212k);
        if (i11 >= 0 && cVar.f56219r.size() >= i11) {
            ArrayList arrayList = new ArrayList();
            int i12 = 0;
            if (i11 < cVar.f56219r.size()) {
                if (i10 != -1) {
                    c.f fVar = cVar.f56219r.get(i11);
                    if (i10 == 0) {
                        arrayList.add(fVar);
                    } else if (i10 < fVar.f56249m.size()) {
                        List<c.d> list = fVar.f56249m;
                        arrayList.addAll(list.subList(i10, list.size()));
                    }
                    i11++;
                }
                List<c.f> list2 = cVar.f56219r;
                arrayList.addAll(list2.subList(i11, list2.size()));
                i10 = 0;
            }
            if (cVar.f56215n != -9223372036854775807L) {
                if (i10 != -1) {
                    i12 = i10;
                }
                if (i12 < cVar.f56220s.size()) {
                    List<c.d> list3 = cVar.f56220s;
                    arrayList.addAll(list3.subList(i12, list3.size()));
                }
            }
            return Collections.unmodifiableList(arrayList);
        }
        return ImmutableList.A();
    }

    @Nullable
    private tn.e n(@Nullable Uri uri, int i10, boolean z10, @Nullable f.a aVar) {
        if (uri == null) {
            return null;
        }
        byte[] c10 = this.f56014j.c(uri);
        if (c10 != null) {
            this.f56014j.b(uri, c10);
            return null;
        }
        return new a(this.f56007c, new g.b().i(uri).b(1).a(), this.f56010f[i10], this.f56022r.getSelectionReason(), this.f56022r.getSelectionData(), this.f56018n);
    }

    private long u(long j10) {
        long j11 = this.f56023s;
        if (j11 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j11 - j10;
    }

    private void y(io.bidmachine.media3.exoplayer.hls.playlist.c cVar) {
        long d10;
        if (cVar.f56216o) {
            d10 = -9223372036854775807L;
        } else {
            d10 = cVar.d() - this.f56011g.a();
        }
        this.f56023s = d10;
    }

    public n[] a(@Nullable io.bidmachine.media3.exoplayer.hls.d dVar, long j10) {
        int b10;
        boolean z10;
        int i10;
        if (dVar == null) {
            b10 = -1;
        } else {
            b10 = this.f56012h.b(dVar.f67463d);
        }
        int i11 = b10;
        int length = this.f56022r.length();
        n[] nVarArr = new n[length];
        boolean z11 = false;
        int i12 = 0;
        while (i12 < length) {
            int indexInTrackGroup = this.f56022r.getIndexInTrackGroup(i12);
            Uri uri = this.f56009e[indexInTrackGroup];
            if (!this.f56011g.m(uri)) {
                nVarArr[i12] = n.f67515a;
                i10 = i12;
            } else {
                io.bidmachine.media3.exoplayer.hls.playlist.c q10 = this.f56011g.q(uri, z11);
                cn.a.e(q10);
                long a10 = q10.f56209h - this.f56011g.a();
                if (indexInTrackGroup != i11) {
                    z10 = true;
                } else {
                    z10 = z11;
                }
                i10 = i12;
                Pair<Long, Integer> g10 = g(dVar, z10, q10, a10, j10);
                nVarArr[i10] = new c(q10.f62984a, a10, j(q10, ((Long) g10.first).longValue(), ((Integer) g10.second).intValue()));
            }
            i12 = i10 + 1;
            z11 = false;
        }
        return nVarArr;
    }

    public long c(long j10, i0 i0Var) {
        io.bidmachine.media3.exoplayer.hls.playlist.c cVar;
        long j11;
        int selectedIndex = this.f56022r.getSelectedIndex();
        Uri[] uriArr = this.f56009e;
        if (selectedIndex < uriArr.length && selectedIndex != -1) {
            cVar = this.f56011g.q(uriArr[this.f56022r.getSelectedIndexInTrackGroup()], true);
        } else {
            cVar = null;
        }
        if (cVar != null && !cVar.f56219r.isEmpty()) {
            long a10 = cVar.f56209h - this.f56011g.a();
            long j12 = j10 - a10;
            int f10 = m0.f(cVar.f56219r, Long.valueOf(j12), true, true);
            long j13 = cVar.f56219r.get(f10).f56254e;
            if (cVar.f62986c && f10 != cVar.f56219r.size() - 1) {
                j11 = cVar.f56219r.get(f10 + 1).f56254e;
            } else {
                j11 = j13;
            }
            return i0Var.a(j12, j13, j11) + a10;
        }
        return j10;
    }

    public int d(io.bidmachine.media3.exoplayer.hls.d dVar) {
        List<c.d> list;
        if (dVar.f56044o == -1) {
            return 1;
        }
        io.bidmachine.media3.exoplayer.hls.playlist.c cVar = (io.bidmachine.media3.exoplayer.hls.playlist.c) cn.a.e(this.f56011g.q(this.f56009e[this.f56012h.b(dVar.f67463d)], false));
        int i10 = (int) (dVar.f67514j - cVar.f56212k);
        if (i10 < 0) {
            return 1;
        }
        if (i10 < cVar.f56219r.size()) {
            list = cVar.f56219r.get(i10).f56249m;
        } else {
            list = cVar.f56220s;
        }
        if (dVar.f56044o >= list.size()) {
            return 2;
        }
        c.d dVar2 = list.get(dVar.f56044o);
        if (dVar2.f56244m) {
            return 0;
        }
        if (Objects.equals(Uri.parse(j0.e(cVar.f62984a, dVar2.f56250a)), dVar.f67461b.f51378a)) {
            return 1;
        }
        return 2;
    }

    public void f(k1 k1Var, long j10, List<io.bidmachine.media3.exoplayer.hls.d> list, boolean z10, C0802b c0802b) {
        io.bidmachine.media3.exoplayer.hls.d dVar;
        int b10;
        k1 k1Var2;
        boolean z11;
        io.bidmachine.media3.exoplayer.hls.playlist.c cVar;
        long j11;
        if (list.isEmpty()) {
            dVar = null;
        } else {
            dVar = (io.bidmachine.media3.exoplayer.hls.d) l.d(list);
        }
        if (dVar == null) {
            k1Var2 = k1Var;
            b10 = -1;
        } else {
            b10 = this.f56012h.b(dVar.f67463d);
            k1Var2 = k1Var;
        }
        long j12 = k1Var2.f56411a;
        long j13 = j10 - j12;
        long u10 = u(j12);
        if (dVar != null && !this.f56021q) {
            long b11 = dVar.b();
            j13 = Math.max(0L, j13 - b11);
            if (u10 != -9223372036854775807L) {
                u10 = Math.max(0L, u10 - b11);
            }
        }
        this.f56022r.h(j12, j13, u10, list, a(dVar, j10));
        int selectedIndexInTrackGroup = this.f56022r.getSelectedIndexInTrackGroup();
        if (b10 != selectedIndexInTrackGroup) {
            z11 = true;
        } else {
            z11 = false;
        }
        Uri uri = this.f56009e[selectedIndexInTrackGroup];
        if (!this.f56011g.m(uri)) {
            c0802b.f56029c = uri;
            this.f56024t &= uri.equals(this.f56020p);
            this.f56020p = uri;
            return;
        }
        io.bidmachine.media3.exoplayer.hls.playlist.c q10 = this.f56011g.q(uri, true);
        cn.a.e(q10);
        this.f56021q = q10.f62986c;
        y(q10);
        long a10 = q10.f56209h - this.f56011g.a();
        Uri uri2 = uri;
        Pair<Long, Integer> g10 = g(dVar, z11, q10, a10, j10);
        long longValue = ((Long) g10.first).longValue();
        int intValue = ((Integer) g10.second).intValue();
        if (longValue < q10.f56212k && dVar != null && z11) {
            uri2 = this.f56009e[b10];
            io.bidmachine.media3.exoplayer.hls.playlist.c q11 = this.f56011g.q(uri2, true);
            cn.a.e(q11);
            j11 = q11.f56209h - this.f56011g.a();
            Pair<Long, Integer> g11 = g(dVar, false, q11, j11, j10);
            longValue = ((Long) g11.first).longValue();
            intValue = ((Integer) g11.second).intValue();
            cVar = q11;
            selectedIndexInTrackGroup = b10;
        } else {
            cVar = q10;
            j11 = a10;
        }
        if (selectedIndexInTrackGroup != b10 && b10 != -1) {
            this.f56011g.c(this.f56009e[b10]);
        }
        if (longValue < cVar.f56212k) {
            this.f56019o = new BehindLiveWindowException();
            return;
        }
        e h10 = h(cVar, longValue, intValue);
        if (h10 == null) {
            if (!cVar.f56216o) {
                c0802b.f56029c = uri2;
                this.f56024t &= uri2.equals(this.f56020p);
                this.f56020p = uri2;
                return;
            } else if (!z10 && !cVar.f56219r.isEmpty()) {
                h10 = new e((c.g) l.d(cVar.f56219r), (cVar.f56212k + cVar.f56219r.size()) - 1, -1);
            } else {
                c0802b.f56028b = true;
                return;
            }
        }
        this.f56024t = false;
        this.f56020p = null;
        this.f56025u = SystemClock.elapsedRealtime();
        Uri e10 = e(cVar, h10.f56034a.f56251b);
        tn.e n10 = n(e10, selectedIndexInTrackGroup, true, null);
        c0802b.f56027a = n10;
        if (n10 != null) {
            return;
        }
        Uri e11 = e(cVar, h10.f56034a);
        tn.e n11 = n(e11, selectedIndexInTrackGroup, false, null);
        c0802b.f56027a = n11;
        if (n11 != null) {
            return;
        }
        boolean u11 = io.bidmachine.media3.exoplayer.hls.d.u(dVar, uri2, cVar, h10, j11);
        if (u11 && h10.f56037d) {
            return;
        }
        c0802b.f56027a = io.bidmachine.media3.exoplayer.hls.d.h(this.f56005a, this.f56006b, this.f56010f[selectedIndexInTrackGroup], j11, cVar, h10, uri2, this.f56013i, this.f56022r.getSelectionReason(), this.f56022r.getSelectionData(), this.f56017m, this.f56008d, this.f56016l, dVar, this.f56014j.a(e11), this.f56014j.a(e10), u11, this.f56015k, null);
    }

    public int i(long j10, List<? extends m> list) {
        if (this.f56019o == null && this.f56022r.length() >= 2) {
            return this.f56022r.evaluateQueueSize(j10, list);
        }
        return list.size();
    }

    public b0 k() {
        return this.f56012h;
    }

    public q l() {
        return this.f56022r;
    }

    public boolean m() {
        return this.f56021q;
    }

    public boolean o(tn.e eVar, long j10) {
        q qVar = this.f56022r;
        return qVar.f(qVar.indexOf(this.f56012h.b(eVar.f67463d)), j10);
    }

    public void p() throws IOException {
        IOException iOException = this.f56019o;
        if (iOException == null) {
            Uri uri = this.f56020p;
            if (uri != null && this.f56024t) {
                this.f56011g.d(uri);
                return;
            }
            return;
        }
        throw iOException;
    }

    public boolean q(Uri uri) {
        return m0.s(this.f56009e, uri);
    }

    public void r(tn.e eVar) {
        if (eVar instanceof a) {
            a aVar = (a) eVar;
            this.f56018n = aVar.f();
            this.f56014j.b(aVar.f67461b.f51378a, (byte[]) cn.a.e(aVar.h()));
        }
    }

    public boolean s(Uri uri, long j10) {
        int indexOf;
        int i10 = 0;
        while (true) {
            Uri[] uriArr = this.f56009e;
            if (i10 < uriArr.length) {
                if (uriArr[i10].equals(uri)) {
                    break;
                }
                i10++;
            } else {
                i10 = -1;
                break;
            }
        }
        if (i10 == -1 || (indexOf = this.f56022r.indexOf(i10)) == -1) {
            return true;
        }
        this.f56024t |= uri.equals(this.f56020p);
        if (j10 != -9223372036854775807L && (!this.f56022r.f(indexOf, j10) || !this.f56011g.o(uri, j10))) {
            return false;
        }
        return true;
    }

    public void t() {
        b();
        this.f56019o = null;
    }

    public void v(boolean z10) {
        this.f56017m = z10;
    }

    public void w(q qVar) {
        b();
        this.f56022r = qVar;
    }

    public boolean x(long j10, tn.e eVar, List<? extends m> list) {
        if (this.f56019o != null) {
            return false;
        }
        return this.f56022r.g(j10, eVar, list);
    }
}
