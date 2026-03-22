package kn;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.common.collect.ImmutableList;
import java.util.Collections;
import java.util.List;
import kn.k;
/* compiled from: Representation.java */
/* loaded from: classes8.dex */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    public final long f60855a;

    /* renamed from: b  reason: collision with root package name */
    public final io.bidmachine.media3.common.a f60856b;

    /* renamed from: c  reason: collision with root package name */
    public final ImmutableList<kn.b> f60857c;

    /* renamed from: d  reason: collision with root package name */
    public final long f60858d;

    /* renamed from: e  reason: collision with root package name */
    public final List<e> f60859e;

    /* renamed from: f  reason: collision with root package name */
    public final List<e> f60860f;

    /* renamed from: g  reason: collision with root package name */
    public final List<e> f60861g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final i f60862h;

    /* compiled from: Representation.java */
    /* loaded from: classes8.dex */
    public static class c extends j {

        /* renamed from: i  reason: collision with root package name */
        public final Uri f60864i;

        /* renamed from: j  reason: collision with root package name */
        public final long f60865j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private final String f60866k;
        @Nullable

        /* renamed from: l  reason: collision with root package name */
        private final i f60867l;
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private final m f60868m;

        public c(long j10, io.bidmachine.media3.common.a aVar, List<kn.b> list, k.e eVar, @Nullable List<e> list2, List<e> list3, List<e> list4, @Nullable String str, long j11) {
            super(j10, aVar, list, eVar, list2, list3, list4);
            m mVar;
            this.f60864i = Uri.parse(list.get(0).f60801a);
            i c10 = eVar.c();
            this.f60867l = c10;
            this.f60866k = str;
            this.f60865j = j11;
            if (c10 != null) {
                mVar = null;
            } else {
                mVar = new m(new i(null, 0L, j11));
            }
            this.f60868m = mVar;
        }

        @Override // kn.j
        @Nullable
        public String j() {
            return this.f60866k;
        }

        @Override // kn.j
        @Nullable
        public jn.e k() {
            return this.f60868m;
        }

        @Override // kn.j
        @Nullable
        public i l() {
            return this.f60867l;
        }
    }

    public static j n(long j10, io.bidmachine.media3.common.a aVar, List<kn.b> list, k kVar, @Nullable List<e> list2, List<e> list3, List<e> list4, @Nullable String str) {
        if (kVar instanceof k.e) {
            return new c(j10, aVar, list, (k.e) kVar, list2, list3, list4, str, -1L);
        }
        if (kVar instanceof k.a) {
            return new b(j10, aVar, list, (k.a) kVar, list2, list3, list4);
        }
        throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
    }

    @Nullable
    public abstract String j();

    @Nullable
    public abstract jn.e k();

    @Nullable
    public abstract i l();

    @Nullable
    public i m() {
        return this.f60862h;
    }

    private j(long j10, io.bidmachine.media3.common.a aVar, List<kn.b> list, k kVar, @Nullable List<e> list2, List<e> list3, List<e> list4) {
        List<e> unmodifiableList;
        cn.a.a(!list.isEmpty());
        this.f60855a = j10;
        this.f60856b = aVar;
        this.f60857c = ImmutableList.u(list);
        if (list2 == null) {
            unmodifiableList = Collections.emptyList();
        } else {
            unmodifiableList = Collections.unmodifiableList(list2);
        }
        this.f60859e = unmodifiableList;
        this.f60860f = list3;
        this.f60861g = list4;
        this.f60862h = kVar.a(this);
        this.f60858d = kVar.b();
    }

    /* compiled from: Representation.java */
    /* loaded from: classes8.dex */
    public static class b extends j implements jn.e {
        @VisibleForTesting

        /* renamed from: i  reason: collision with root package name */
        final k.a f60863i;

        public b(long j10, io.bidmachine.media3.common.a aVar, List<kn.b> list, k.a aVar2, @Nullable List<e> list2, List<e> list3, List<e> list4) {
            super(j10, aVar, list, aVar2, list2, list3, list4);
            this.f60863i = aVar2;
        }

        @Override // jn.e
        public long a(long j10, long j11) {
            return this.f60863i.h(j10, j11);
        }

        @Override // jn.e
        public long b(long j10, long j11) {
            return this.f60863i.d(j10, j11);
        }

        @Override // jn.e
        public long c(long j10, long j11) {
            return this.f60863i.f(j10, j11);
        }

        @Override // jn.e
        public long d(long j10, long j11) {
            return this.f60863i.i(j10, j11);
        }

        @Override // jn.e
        public long e(long j10) {
            return this.f60863i.g(j10);
        }

        @Override // jn.e
        public long f() {
            return this.f60863i.e();
        }

        @Override // jn.e
        public i g(long j10) {
            return this.f60863i.k(this, j10);
        }

        @Override // jn.e
        public long getTimeUs(long j10) {
            return this.f60863i.j(j10);
        }

        @Override // jn.e
        public boolean h() {
            return this.f60863i.l();
        }

        @Override // jn.e
        public long i(long j10, long j11) {
            return this.f60863i.c(j10, j11);
        }

        @Override // kn.j
        @Nullable
        public String j() {
            return null;
        }

        @Override // kn.j
        @Nullable
        public i l() {
            return null;
        }

        @Override // kn.j
        public jn.e k() {
            return this;
        }
    }
}
