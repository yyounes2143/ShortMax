package io.bidmachine.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.l;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.common.StreamKey;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* compiled from: HlsMediaPlaylist.java */
/* loaded from: classes8.dex */
public final class c extends nn.d {

    /* renamed from: d  reason: collision with root package name */
    public final int f56205d;

    /* renamed from: e  reason: collision with root package name */
    public final long f56206e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f56207f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f56208g;

    /* renamed from: h  reason: collision with root package name */
    public final long f56209h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f56210i;

    /* renamed from: j  reason: collision with root package name */
    public final int f56211j;

    /* renamed from: k  reason: collision with root package name */
    public final long f56212k;

    /* renamed from: l  reason: collision with root package name */
    public final int f56213l;

    /* renamed from: m  reason: collision with root package name */
    public final long f56214m;

    /* renamed from: n  reason: collision with root package name */
    public final long f56215n;

    /* renamed from: o  reason: collision with root package name */
    public final boolean f56216o;

    /* renamed from: p  reason: collision with root package name */
    public final boolean f56217p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    public final DrmInitData f56218q;

    /* renamed from: r  reason: collision with root package name */
    public final List<f> f56219r;

    /* renamed from: s  reason: collision with root package name */
    public final List<d> f56220s;

    /* renamed from: t  reason: collision with root package name */
    public final Map<Uri, e> f56221t;

    /* renamed from: u  reason: collision with root package name */
    public final long f56222u;

    /* renamed from: v  reason: collision with root package name */
    public final h f56223v;

    /* renamed from: w  reason: collision with root package name */
    public final ImmutableList<C0804c> f56224w;

    /* compiled from: HlsMediaPlaylist.java */
    /* renamed from: io.bidmachine.media3.exoplayer.hls.playlist.c$c  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0804c {

        /* renamed from: a  reason: collision with root package name */
        public final String f56229a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final Uri f56230b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final Uri f56231c;

        /* renamed from: d  reason: collision with root package name */
        public final long f56232d;

        /* renamed from: e  reason: collision with root package name */
        public final long f56233e;

        /* renamed from: f  reason: collision with root package name */
        public final long f56234f;

        /* renamed from: g  reason: collision with root package name */
        public final long f56235g;

        /* renamed from: h  reason: collision with root package name */
        public final List<String> f56236h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f56237i;

        /* renamed from: j  reason: collision with root package name */
        public final long f56238j;

        /* renamed from: k  reason: collision with root package name */
        public final long f56239k;

        /* renamed from: l  reason: collision with root package name */
        public final ImmutableList<String> f56240l;

        /* renamed from: m  reason: collision with root package name */
        public final ImmutableList<String> f56241m;

        /* renamed from: n  reason: collision with root package name */
        public final ImmutableList<b> f56242n;

        public C0804c(String str, @Nullable Uri uri, @Nullable Uri uri2, long j10, long j11, long j12, long j13, List<String> list, boolean z10, long j14, long j15, List<String> list2, List<String> list3, List<b> list4) {
            boolean z11;
            if ((uri != null && uri2 != null) || (uri == null && uri2 == null)) {
                z11 = false;
            } else {
                z11 = true;
            }
            cn.a.a(z11);
            this.f56229a = str;
            this.f56230b = uri;
            this.f56231c = uri2;
            this.f56232d = j10;
            this.f56233e = j11;
            this.f56234f = j12;
            this.f56235g = j13;
            this.f56236h = list;
            this.f56237i = z10;
            this.f56238j = j14;
            this.f56239k = j15;
            this.f56240l = ImmutableList.u(list2);
            this.f56241m = ImmutableList.u(list3);
            this.f56242n = ImmutableList.u(list4);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0804c)) {
                return false;
            }
            C0804c c0804c = (C0804c) obj;
            if (this.f56232d == c0804c.f56232d && this.f56233e == c0804c.f56233e && this.f56234f == c0804c.f56234f && this.f56235g == c0804c.f56235g && this.f56237i == c0804c.f56237i && this.f56238j == c0804c.f56238j && this.f56239k == c0804c.f56239k && Objects.equals(this.f56229a, c0804c.f56229a) && Objects.equals(this.f56230b, c0804c.f56230b) && Objects.equals(this.f56231c, c0804c.f56231c) && Objects.equals(this.f56236h, c0804c.f56236h) && Objects.equals(this.f56240l, c0804c.f56240l) && Objects.equals(this.f56241m, c0804c.f56241m) && Objects.equals(this.f56242n, c0804c.f56242n)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(this.f56229a, this.f56230b, this.f56231c, Long.valueOf(this.f56232d), Long.valueOf(this.f56233e), Long.valueOf(this.f56234f), Long.valueOf(this.f56235g), this.f56236h, Boolean.valueOf(this.f56237i), Long.valueOf(this.f56238j), Long.valueOf(this.f56239k), this.f56240l, this.f56241m, this.f56242n);
        }
    }

    /* compiled from: HlsMediaPlaylist.java */
    /* loaded from: classes8.dex */
    public static final class d extends g {

        /* renamed from: l  reason: collision with root package name */
        public final boolean f56243l;

        /* renamed from: m  reason: collision with root package name */
        public final boolean f56244m;

        public d(String str, @Nullable f fVar, long j10, int i10, long j11, @Nullable DrmInitData drmInitData, @Nullable String str2, @Nullable String str3, long j12, long j13, boolean z10, boolean z11, boolean z12) {
            super(str, fVar, j10, i10, j11, drmInitData, str2, str3, j12, j13, z10);
            this.f56243l = z11;
            this.f56244m = z12;
        }

        public d b(long j10, int i10) {
            return new d(this.f56250a, this.f56251b, this.f56252c, i10, j10, this.f56255f, this.f56256g, this.f56257h, this.f56258i, this.f56259j, this.f56260k, this.f56243l, this.f56244m);
        }
    }

    /* compiled from: HlsMediaPlaylist.java */
    /* loaded from: classes8.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f56245a;

        /* renamed from: b  reason: collision with root package name */
        public final long f56246b;

        /* renamed from: c  reason: collision with root package name */
        public final int f56247c;

        public e(Uri uri, long j10, int i10) {
            this.f56245a = uri;
            this.f56246b = j10;
            this.f56247c = i10;
        }
    }

    /* compiled from: HlsMediaPlaylist.java */
    /* loaded from: classes8.dex */
    public static class g implements Comparable<Long> {

        /* renamed from: a  reason: collision with root package name */
        public final String f56250a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final f f56251b;

        /* renamed from: c  reason: collision with root package name */
        public final long f56252c;

        /* renamed from: d  reason: collision with root package name */
        public final int f56253d;

        /* renamed from: e  reason: collision with root package name */
        public final long f56254e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        public final DrmInitData f56255f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        public final String f56256g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public final String f56257h;

        /* renamed from: i  reason: collision with root package name */
        public final long f56258i;

        /* renamed from: j  reason: collision with root package name */
        public final long f56259j;

        /* renamed from: k  reason: collision with root package name */
        public final boolean f56260k;

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(Long l10) {
            if (this.f56254e > l10.longValue()) {
                return 1;
            }
            if (this.f56254e < l10.longValue()) {
                return -1;
            }
            return 0;
        }

        private g(String str, @Nullable f fVar, long j10, int i10, long j11, @Nullable DrmInitData drmInitData, @Nullable String str2, @Nullable String str3, long j12, long j13, boolean z10) {
            this.f56250a = str;
            this.f56251b = fVar;
            this.f56252c = j10;
            this.f56253d = i10;
            this.f56254e = j11;
            this.f56255f = drmInitData;
            this.f56256g = str2;
            this.f56257h = str3;
            this.f56258i = j12;
            this.f56259j = j13;
            this.f56260k = z10;
        }
    }

    /* compiled from: HlsMediaPlaylist.java */
    /* loaded from: classes8.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final long f56261a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f56262b;

        /* renamed from: c  reason: collision with root package name */
        public final long f56263c;

        /* renamed from: d  reason: collision with root package name */
        public final long f56264d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f56265e;

        public h(long j10, boolean z10, long j11, long j12, boolean z11) {
            this.f56261a = j10;
            this.f56262b = z10;
            this.f56263c = j11;
            this.f56264d = j12;
            this.f56265e = z11;
        }
    }

    public c(int i10, String str, List<String> list, long j10, boolean z10, long j11, boolean z11, int i11, long j12, int i12, long j13, long j14, boolean z12, boolean z13, boolean z14, @Nullable DrmInitData drmInitData, List<f> list2, List<d> list3, h hVar, Map<Uri, e> map, List<C0804c> list4) {
        super(str, list, z12);
        this.f56205d = i10;
        this.f56209h = j11;
        this.f56208g = z10;
        this.f56210i = z11;
        this.f56211j = i11;
        this.f56212k = j12;
        this.f56213l = i12;
        this.f56214m = j13;
        this.f56215n = j14;
        this.f56216o = z13;
        this.f56217p = z14;
        this.f56218q = drmInitData;
        this.f56219r = ImmutableList.u(list2);
        this.f56220s = ImmutableList.u(list3);
        this.f56221t = ImmutableMap.e(map);
        this.f56224w = ImmutableList.u(list4);
        if (!list3.isEmpty()) {
            d dVar = (d) l.d(list3);
            this.f56222u = dVar.f56254e + dVar.f56252c;
        } else if (!list2.isEmpty()) {
            f fVar = (f) l.d(list2);
            this.f56222u = fVar.f56254e + fVar.f56252c;
        } else {
            this.f56222u = 0L;
        }
        long j15 = -9223372036854775807L;
        if (j10 != -9223372036854775807L) {
            if (j10 >= 0) {
                j15 = Math.min(this.f56222u, j10);
            } else {
                j15 = Math.max(0L, this.f56222u + j10);
            }
        }
        this.f56206e = j15;
        this.f56207f = j10 >= 0;
        this.f56223v = hVar;
    }

    public c b(long j10, int i10) {
        return new c(this.f56205d, this.f62984a, this.f62985b, this.f56206e, this.f56208g, j10, true, i10, this.f56212k, this.f56213l, this.f56214m, this.f56215n, this.f62986c, this.f56216o, this.f56217p, this.f56218q, this.f56219r, this.f56220s, this.f56223v, this.f56221t, this.f56224w);
    }

    public c c() {
        if (this.f56216o) {
            return this;
        }
        return new c(this.f56205d, this.f62984a, this.f62985b, this.f56206e, this.f56208g, this.f56209h, this.f56210i, this.f56211j, this.f56212k, this.f56213l, this.f56214m, this.f56215n, this.f62986c, true, this.f56217p, this.f56218q, this.f56219r, this.f56220s, this.f56223v, this.f56221t, this.f56224w);
    }

    public long d() {
        return this.f56209h + this.f56222u;
    }

    public boolean e(@Nullable c cVar) {
        if (cVar == null) {
            return true;
        }
        long j10 = this.f56212k;
        long j11 = cVar.f56212k;
        if (j10 > j11) {
            return true;
        }
        if (j10 < j11) {
            return false;
        }
        int size = this.f56219r.size() - cVar.f56219r.size();
        if (size != 0) {
            if (size > 0) {
                return true;
            }
            return false;
        }
        int size2 = this.f56220s.size();
        int size3 = cVar.f56220s.size();
        if (size2 > size3) {
            return true;
        }
        if (size2 == size3 && this.f56216o && !cVar.f56216o) {
            return true;
        }
        return false;
    }

    /* compiled from: HlsMediaPlaylist.java */
    /* loaded from: classes8.dex */
    public static final class f extends g {

        /* renamed from: l  reason: collision with root package name */
        public final String f56248l;

        /* renamed from: m  reason: collision with root package name */
        public final List<d> f56249m;

        public f(String str, long j10, long j11, @Nullable String str2, @Nullable String str3) {
            this(str, null, "", 0L, -1, -9223372036854775807L, null, str2, str3, j10, j11, false, ImmutableList.A());
        }

        public f b(long j10, int i10) {
            ArrayList arrayList = new ArrayList();
            long j11 = j10;
            for (int i11 = 0; i11 < this.f56249m.size(); i11++) {
                d dVar = this.f56249m.get(i11);
                arrayList.add(dVar.b(j11, i10));
                j11 += dVar.f56252c;
            }
            return new f(this.f56250a, this.f56251b, this.f56248l, this.f56252c, i10, j10, this.f56255f, this.f56256g, this.f56257h, this.f56258i, this.f56259j, this.f56260k, arrayList);
        }

        public f(String str, @Nullable f fVar, String str2, long j10, int i10, long j11, @Nullable DrmInitData drmInitData, @Nullable String str3, @Nullable String str4, long j12, long j13, boolean z10, List<d> list) {
            super(str, fVar, j10, i10, j11, drmInitData, str3, str4, j12, j13, z10);
            this.f56248l = str2;
            this.f56249m = ImmutableList.u(list);
        }
    }

    /* compiled from: HlsMediaPlaylist.java */
    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f56225a;

        /* renamed from: b  reason: collision with root package name */
        public final int f56226b;

        /* renamed from: c  reason: collision with root package name */
        private final double f56227c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final String f56228d;

        public b(String str, double d10) {
            this.f56225a = str;
            this.f56226b = 2;
            this.f56227c = d10;
            this.f56228d = null;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f56226b == bVar.f56226b && Double.compare(this.f56227c, bVar.f56227c) == 0 && Objects.equals(this.f56225a, bVar.f56225a) && Objects.equals(this.f56228d, bVar.f56228d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(this.f56225a, Integer.valueOf(this.f56226b), Double.valueOf(this.f56227c), this.f56228d);
        }

        public b(String str, String str2, int i10) {
            boolean z10 = true;
            if (i10 == 1 && !str2.startsWith("0x") && !str2.startsWith("0X")) {
                z10 = false;
            }
            cn.a.g(z10);
            this.f56225a = str;
            this.f56226b = i10;
            this.f56228d = str2;
            this.f56227c = 0.0d;
        }
    }

    @Override // rn.b
    /* renamed from: a */
    public c copy(List<StreamKey> list) {
        return this;
    }
}
