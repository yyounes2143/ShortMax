package zm;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import cn.m0;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import io.bidmachine.media3.common.StreamKey;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
/* compiled from: MediaItem.java */
/* loaded from: classes8.dex */
public final class q {

    /* renamed from: i  reason: collision with root package name */
    public static final q f71984i = new c().a();

    /* renamed from: j  reason: collision with root package name */
    private static final String f71985j = m0.C0(0);

    /* renamed from: k  reason: collision with root package name */
    private static final String f71986k = m0.C0(1);

    /* renamed from: l  reason: collision with root package name */
    private static final String f71987l = m0.C0(2);

    /* renamed from: m  reason: collision with root package name */
    private static final String f71988m = m0.C0(3);

    /* renamed from: n  reason: collision with root package name */
    private static final String f71989n = m0.C0(4);

    /* renamed from: o  reason: collision with root package name */
    private static final String f71990o = m0.C0(5);

    /* renamed from: a  reason: collision with root package name */
    public final String f71991a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final h f71992b;
    @Nullable
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public final h f71993c;

    /* renamed from: d  reason: collision with root package name */
    public final g f71994d;

    /* renamed from: e  reason: collision with root package name */
    public final s f71995e;

    /* renamed from: f  reason: collision with root package name */
    public final d f71996f;
    @Deprecated

    /* renamed from: g  reason: collision with root package name */
    public final e f71997g;

    /* renamed from: h  reason: collision with root package name */
    public final i f71998h;

    /* compiled from: MediaItem.java */
    /* loaded from: classes8.dex */
    public static final class b {
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes8.dex */
    public static final class c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private String f71999a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Uri f72000b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f72001c;

        /* renamed from: d  reason: collision with root package name */
        private d.a f72002d;

        /* renamed from: e  reason: collision with root package name */
        private f.a f72003e;

        /* renamed from: f  reason: collision with root package name */
        private List<StreamKey> f72004f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private String f72005g;

        /* renamed from: h  reason: collision with root package name */
        private ImmutableList<k> f72006h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private Object f72007i;

        /* renamed from: j  reason: collision with root package name */
        private long f72008j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private s f72009k;

        /* renamed from: l  reason: collision with root package name */
        private g.a f72010l;

        /* renamed from: m  reason: collision with root package name */
        private i f72011m;

        public q a() {
            boolean z10;
            h hVar;
            if (this.f72003e.f72053b != null && this.f72003e.f72052a == null) {
                z10 = false;
            } else {
                z10 = true;
            }
            cn.a.g(z10);
            Uri uri = this.f72000b;
            f fVar = null;
            if (uri != null) {
                String str = this.f72001c;
                if (this.f72003e.f72052a != null) {
                    fVar = this.f72003e.i();
                }
                hVar = new h(uri, str, fVar, null, this.f72004f, this.f72005g, this.f72006h, this.f72007i, this.f72008j);
            } else {
                hVar = null;
            }
            String str2 = this.f71999a;
            if (str2 == null) {
                str2 = "";
            }
            String str3 = str2;
            e g10 = this.f72002d.g();
            g f10 = this.f72010l.f();
            s sVar = this.f72009k;
            if (sVar == null) {
                sVar = s.I;
            }
            return new q(str3, g10, hVar, f10, sVar, this.f72011m);
        }

        public c b(g gVar) {
            this.f72010l = gVar.a();
            return this;
        }

        public c c(String str) {
            this.f71999a = (String) cn.a.e(str);
            return this;
        }

        public c d(List<k> list) {
            this.f72006h = ImmutableList.u(list);
            return this;
        }

        public c e(@Nullable Object obj) {
            this.f72007i = obj;
            return this;
        }

        public c f(@Nullable Uri uri) {
            this.f72000b = uri;
            return this;
        }

        public c g(@Nullable String str) {
            Uri parse;
            if (str == null) {
                parse = null;
            } else {
                parse = Uri.parse(str);
            }
            return f(parse);
        }

        public c() {
            this.f72002d = new d.a();
            this.f72003e = new f.a();
            this.f72004f = Collections.emptyList();
            this.f72006h = ImmutableList.A();
            this.f72010l = new g.a();
            this.f72011m = i.f72093d;
            this.f72008j = -9223372036854775807L;
        }

        private c(q qVar) {
            this();
            f.a aVar;
            this.f72002d = qVar.f71996f.a();
            this.f71999a = qVar.f71991a;
            this.f72009k = qVar.f71995e;
            this.f72010l = qVar.f71994d.a();
            this.f72011m = qVar.f71998h;
            h hVar = qVar.f71992b;
            if (hVar != null) {
                this.f72005g = hVar.f72088e;
                this.f72001c = hVar.f72085b;
                this.f72000b = hVar.f72084a;
                this.f72004f = hVar.f72087d;
                this.f72006h = hVar.f72089f;
                this.f72007i = hVar.f72091h;
                f fVar = hVar.f72086c;
                if (fVar != null) {
                    aVar = fVar.b();
                } else {
                    aVar = new f.a();
                }
                this.f72003e = aVar;
                this.f72008j = hVar.f72092i;
            }
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes8.dex */
    public static class d {

        /* renamed from: h  reason: collision with root package name */
        public static final d f72012h = new a().f();

        /* renamed from: i  reason: collision with root package name */
        private static final String f72013i = m0.C0(0);

        /* renamed from: j  reason: collision with root package name */
        private static final String f72014j = m0.C0(1);

        /* renamed from: k  reason: collision with root package name */
        private static final String f72015k = m0.C0(2);

        /* renamed from: l  reason: collision with root package name */
        private static final String f72016l = m0.C0(3);

        /* renamed from: m  reason: collision with root package name */
        private static final String f72017m = m0.C0(4);

        /* renamed from: n  reason: collision with root package name */
        static final String f72018n = m0.C0(5);

        /* renamed from: o  reason: collision with root package name */
        static final String f72019o = m0.C0(6);
        @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)

        /* renamed from: a  reason: collision with root package name */
        public final long f72020a;
        @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)

        /* renamed from: b  reason: collision with root package name */
        public final long f72021b;

        /* renamed from: c  reason: collision with root package name */
        public final long f72022c;

        /* renamed from: d  reason: collision with root package name */
        public final long f72023d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f72024e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f72025f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f72026g;

        /* compiled from: MediaItem.java */
        /* loaded from: classes8.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private long f72027a;

            /* renamed from: b  reason: collision with root package name */
            private long f72028b;

            /* renamed from: c  reason: collision with root package name */
            private boolean f72029c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f72030d;

            /* renamed from: e  reason: collision with root package name */
            private boolean f72031e;

            public d f() {
                return new d(this);
            }

            @Deprecated
            public e g() {
                return new e(this);
            }

            public a() {
                this.f72028b = Long.MIN_VALUE;
            }

            private a(d dVar) {
                this.f72027a = dVar.f72021b;
                this.f72028b = dVar.f72023d;
                this.f72029c = dVar.f72024e;
                this.f72030d = dVar.f72025f;
                this.f72031e = dVar.f72026g;
            }
        }

        public a a() {
            return new a();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f72021b == dVar.f72021b && this.f72023d == dVar.f72023d && this.f72024e == dVar.f72024e && this.f72025f == dVar.f72025f && this.f72026g == dVar.f72026g) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            long j10 = this.f72021b;
            long j11 = this.f72023d;
            return (((((((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) ((j11 >>> 32) ^ j11))) * 31) + (this.f72024e ? 1 : 0)) * 31) + (this.f72025f ? 1 : 0)) * 31) + (this.f72026g ? 1 : 0);
        }

        private d(a aVar) {
            this.f72020a = m0.u1(aVar.f72027a);
            this.f72022c = m0.u1(aVar.f72028b);
            this.f72021b = aVar.f72027a;
            this.f72023d = aVar.f72028b;
            this.f72024e = aVar.f72029c;
            this.f72025f = aVar.f72030d;
            this.f72026g = aVar.f72031e;
        }
    }

    /* compiled from: MediaItem.java */
    @Deprecated
    /* loaded from: classes8.dex */
    public static final class e extends d {

        /* renamed from: p  reason: collision with root package name */
        public static final e f72032p = new d.a().g();

        private e(d.a aVar) {
            super(aVar);
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes8.dex */
    public static final class f {

        /* renamed from: l  reason: collision with root package name */
        private static final String f72033l = m0.C0(0);

        /* renamed from: m  reason: collision with root package name */
        private static final String f72034m = m0.C0(1);

        /* renamed from: n  reason: collision with root package name */
        private static final String f72035n = m0.C0(2);

        /* renamed from: o  reason: collision with root package name */
        private static final String f72036o = m0.C0(3);
        @VisibleForTesting

        /* renamed from: p  reason: collision with root package name */
        static final String f72037p = m0.C0(4);

        /* renamed from: q  reason: collision with root package name */
        private static final String f72038q = m0.C0(5);

        /* renamed from: r  reason: collision with root package name */
        private static final String f72039r = m0.C0(6);

        /* renamed from: s  reason: collision with root package name */
        private static final String f72040s = m0.C0(7);

        /* renamed from: a  reason: collision with root package name */
        public final UUID f72041a;
        @Deprecated

        /* renamed from: b  reason: collision with root package name */
        public final UUID f72042b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final Uri f72043c;
        @Deprecated

        /* renamed from: d  reason: collision with root package name */
        public final ImmutableMap<String, String> f72044d;

        /* renamed from: e  reason: collision with root package name */
        public final ImmutableMap<String, String> f72045e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f72046f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f72047g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f72048h;
        @Deprecated

        /* renamed from: i  reason: collision with root package name */
        public final ImmutableList<Integer> f72049i;

        /* renamed from: j  reason: collision with root package name */
        public final ImmutableList<Integer> f72050j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private final byte[] f72051k;

        public a b() {
            return new a();
        }

        @Nullable
        public byte[] c() {
            byte[] bArr = this.f72051k;
            if (bArr != null) {
                return Arrays.copyOf(bArr, bArr.length);
            }
            return null;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            if (this.f72041a.equals(fVar.f72041a) && Objects.equals(this.f72043c, fVar.f72043c) && Objects.equals(this.f72045e, fVar.f72045e) && this.f72046f == fVar.f72046f && this.f72048h == fVar.f72048h && this.f72047g == fVar.f72047g && this.f72050j.equals(fVar.f72050j) && Arrays.equals(this.f72051k, fVar.f72051k)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i10;
            int hashCode = this.f72041a.hashCode() * 31;
            Uri uri = this.f72043c;
            if (uri != null) {
                i10 = uri.hashCode();
            } else {
                i10 = 0;
            }
            return ((((((((((((hashCode + i10) * 31) + this.f72045e.hashCode()) * 31) + (this.f72046f ? 1 : 0)) * 31) + (this.f72048h ? 1 : 0)) * 31) + (this.f72047g ? 1 : 0)) * 31) + this.f72050j.hashCode()) * 31) + Arrays.hashCode(this.f72051k);
        }

        /* compiled from: MediaItem.java */
        /* loaded from: classes8.dex */
        public static final class a {
            @Nullable

            /* renamed from: a  reason: collision with root package name */
            private UUID f72052a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            private Uri f72053b;

            /* renamed from: c  reason: collision with root package name */
            private ImmutableMap<String, String> f72054c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f72055d;

            /* renamed from: e  reason: collision with root package name */
            private boolean f72056e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f72057f;

            /* renamed from: g  reason: collision with root package name */
            private ImmutableList<Integer> f72058g;
            @Nullable

            /* renamed from: h  reason: collision with root package name */
            private byte[] f72059h;

            public f i() {
                return new f(this);
            }

            @Deprecated
            private a() {
                this.f72054c = ImmutableMap.q();
                this.f72056e = true;
                this.f72058g = ImmutableList.A();
            }

            private a(f fVar) {
                this.f72052a = fVar.f72041a;
                this.f72053b = fVar.f72043c;
                this.f72054c = fVar.f72045e;
                this.f72055d = fVar.f72046f;
                this.f72056e = fVar.f72047g;
                this.f72057f = fVar.f72048h;
                this.f72058g = fVar.f72050j;
                this.f72059h = fVar.f72051k;
            }
        }

        private f(a aVar) {
            cn.a.g((aVar.f72057f && aVar.f72053b == null) ? false : true);
            UUID uuid = (UUID) cn.a.e(aVar.f72052a);
            this.f72041a = uuid;
            this.f72042b = uuid;
            this.f72043c = aVar.f72053b;
            this.f72044d = aVar.f72054c;
            this.f72045e = aVar.f72054c;
            this.f72046f = aVar.f72055d;
            this.f72048h = aVar.f72057f;
            this.f72047g = aVar.f72056e;
            this.f72049i = aVar.f72058g;
            this.f72050j = aVar.f72058g;
            this.f72051k = aVar.f72059h != null ? Arrays.copyOf(aVar.f72059h, aVar.f72059h.length) : null;
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes8.dex */
    public static final class g {

        /* renamed from: f  reason: collision with root package name */
        public static final g f72060f = new a().f();

        /* renamed from: g  reason: collision with root package name */
        private static final String f72061g = m0.C0(0);

        /* renamed from: h  reason: collision with root package name */
        private static final String f72062h = m0.C0(1);

        /* renamed from: i  reason: collision with root package name */
        private static final String f72063i = m0.C0(2);

        /* renamed from: j  reason: collision with root package name */
        private static final String f72064j = m0.C0(3);

        /* renamed from: k  reason: collision with root package name */
        private static final String f72065k = m0.C0(4);

        /* renamed from: a  reason: collision with root package name */
        public final long f72066a;

        /* renamed from: b  reason: collision with root package name */
        public final long f72067b;

        /* renamed from: c  reason: collision with root package name */
        public final long f72068c;

        /* renamed from: d  reason: collision with root package name */
        public final float f72069d;

        /* renamed from: e  reason: collision with root package name */
        public final float f72070e;

        /* compiled from: MediaItem.java */
        /* loaded from: classes8.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private long f72071a;

            /* renamed from: b  reason: collision with root package name */
            private long f72072b;

            /* renamed from: c  reason: collision with root package name */
            private long f72073c;

            /* renamed from: d  reason: collision with root package name */
            private float f72074d;

            /* renamed from: e  reason: collision with root package name */
            private float f72075e;

            public g f() {
                return new g(this);
            }

            public a g(long j10) {
                this.f72073c = j10;
                return this;
            }

            public a h(float f10) {
                this.f72075e = f10;
                return this;
            }

            public a i(long j10) {
                this.f72072b = j10;
                return this;
            }

            public a j(float f10) {
                this.f72074d = f10;
                return this;
            }

            public a k(long j10) {
                this.f72071a = j10;
                return this;
            }

            public a() {
                this.f72071a = -9223372036854775807L;
                this.f72072b = -9223372036854775807L;
                this.f72073c = -9223372036854775807L;
                this.f72074d = -3.4028235E38f;
                this.f72075e = -3.4028235E38f;
            }

            private a(g gVar) {
                this.f72071a = gVar.f72066a;
                this.f72072b = gVar.f72067b;
                this.f72073c = gVar.f72068c;
                this.f72074d = gVar.f72069d;
                this.f72075e = gVar.f72070e;
            }
        }

        public a a() {
            return new a();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            if (this.f72066a == gVar.f72066a && this.f72067b == gVar.f72067b && this.f72068c == gVar.f72068c && this.f72069d == gVar.f72069d && this.f72070e == gVar.f72070e) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i10;
            long j10 = this.f72066a;
            long j11 = this.f72067b;
            long j12 = this.f72068c;
            int i11 = ((((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + ((int) ((j12 >>> 32) ^ j12))) * 31;
            float f10 = this.f72069d;
            int i12 = 0;
            if (f10 != 0.0f) {
                i10 = Float.floatToIntBits(f10);
            } else {
                i10 = 0;
            }
            int i13 = (i11 + i10) * 31;
            float f11 = this.f72070e;
            if (f11 != 0.0f) {
                i12 = Float.floatToIntBits(f11);
            }
            return i13 + i12;
        }

        private g(a aVar) {
            this(aVar.f72071a, aVar.f72072b, aVar.f72073c, aVar.f72074d, aVar.f72075e);
        }

        @Deprecated
        public g(long j10, long j11, long j12, float f10, float f11) {
            this.f72066a = j10;
            this.f72067b = j11;
            this.f72068c = j12;
            this.f72069d = f10;
            this.f72070e = f11;
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes8.dex */
    public static final class h {

        /* renamed from: j  reason: collision with root package name */
        private static final String f72076j = m0.C0(0);

        /* renamed from: k  reason: collision with root package name */
        private static final String f72077k = m0.C0(1);

        /* renamed from: l  reason: collision with root package name */
        private static final String f72078l = m0.C0(2);

        /* renamed from: m  reason: collision with root package name */
        private static final String f72079m = m0.C0(3);

        /* renamed from: n  reason: collision with root package name */
        private static final String f72080n = m0.C0(4);

        /* renamed from: o  reason: collision with root package name */
        private static final String f72081o = m0.C0(5);

        /* renamed from: p  reason: collision with root package name */
        private static final String f72082p = m0.C0(6);

        /* renamed from: q  reason: collision with root package name */
        private static final String f72083q = m0.C0(7);

        /* renamed from: a  reason: collision with root package name */
        public final Uri f72084a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final String f72085b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final f f72086c;

        /* renamed from: d  reason: collision with root package name */
        public final List<StreamKey> f72087d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final String f72088e;

        /* renamed from: f  reason: collision with root package name */
        public final ImmutableList<k> f72089f;
        @Deprecated

        /* renamed from: g  reason: collision with root package name */
        public final List<j> f72090g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public final Object f72091h;

        /* renamed from: i  reason: collision with root package name */
        public final long f72092i;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            if (this.f72084a.equals(hVar.f72084a) && Objects.equals(this.f72085b, hVar.f72085b) && Objects.equals(this.f72086c, hVar.f72086c) && this.f72087d.equals(hVar.f72087d) && Objects.equals(this.f72088e, hVar.f72088e) && this.f72089f.equals(hVar.f72089f) && Objects.equals(this.f72091h, hVar.f72091h) && this.f72092i == hVar.f72092i) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4 = this.f72084a.hashCode() * 31;
            String str = this.f72085b;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = (hashCode4 + hashCode) * 31;
            f fVar = this.f72086c;
            if (fVar == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = fVar.hashCode();
            }
            int hashCode5 = (((i11 + hashCode2) * 961) + this.f72087d.hashCode()) * 31;
            String str2 = this.f72088e;
            if (str2 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str2.hashCode();
            }
            int hashCode6 = (((hashCode5 + hashCode3) * 31) + this.f72089f.hashCode()) * 31;
            Object obj = this.f72091h;
            if (obj != null) {
                i10 = obj.hashCode();
            }
            return (int) (((hashCode6 + i10) * 31) + this.f72092i);
        }

        private h(Uri uri, @Nullable String str, @Nullable f fVar, @Nullable b bVar, List<StreamKey> list, @Nullable String str2, ImmutableList<k> immutableList, @Nullable Object obj, long j10) {
            this.f72084a = uri;
            this.f72085b = u.u(str);
            this.f72086c = fVar;
            this.f72087d = list;
            this.f72088e = str2;
            this.f72089f = immutableList;
            ImmutableList.a r10 = ImmutableList.r();
            for (int i10 = 0; i10 < immutableList.size(); i10++) {
                r10.a(immutableList.get(i10).a().i());
            }
            this.f72090g = r10.k();
            this.f72091h = obj;
            this.f72092i = j10;
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes8.dex */
    public static final class i {

        /* renamed from: d  reason: collision with root package name */
        public static final i f72093d = new a().d();

        /* renamed from: e  reason: collision with root package name */
        private static final String f72094e = m0.C0(0);

        /* renamed from: f  reason: collision with root package name */
        private static final String f72095f = m0.C0(1);

        /* renamed from: g  reason: collision with root package name */
        private static final String f72096g = m0.C0(2);
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final Uri f72097a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final String f72098b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final Bundle f72099c;

        /* compiled from: MediaItem.java */
        /* loaded from: classes8.dex */
        public static final class a {
            @Nullable

            /* renamed from: a  reason: collision with root package name */
            private Uri f72100a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            private String f72101b;
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            private Bundle f72102c;

            public i d() {
                return new i(this);
            }
        }

        public boolean equals(@Nullable Object obj) {
            boolean z10;
            boolean z11;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            if (Objects.equals(this.f72097a, iVar.f72097a) && Objects.equals(this.f72098b, iVar.f72098b)) {
                if (this.f72099c == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (iVar.f72099c == null) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (z10 == z11) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            Uri uri = this.f72097a;
            int i10 = 0;
            if (uri == null) {
                hashCode = 0;
            } else {
                hashCode = uri.hashCode();
            }
            int i11 = hashCode * 31;
            String str = this.f72098b;
            if (str == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str.hashCode();
            }
            int i12 = (i11 + hashCode2) * 31;
            if (this.f72099c != null) {
                i10 = 1;
            }
            return i12 + i10;
        }

        private i(a aVar) {
            this.f72097a = aVar.f72100a;
            this.f72098b = aVar.f72101b;
            this.f72099c = aVar.f72102c;
        }
    }

    /* compiled from: MediaItem.java */
    @Deprecated
    /* loaded from: classes8.dex */
    public static final class j extends k {
        private j(k.a aVar) {
            super(aVar);
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes8.dex */
    public static class k {

        /* renamed from: h  reason: collision with root package name */
        private static final String f72103h = m0.C0(0);

        /* renamed from: i  reason: collision with root package name */
        private static final String f72104i = m0.C0(1);

        /* renamed from: j  reason: collision with root package name */
        private static final String f72105j = m0.C0(2);

        /* renamed from: k  reason: collision with root package name */
        private static final String f72106k = m0.C0(3);

        /* renamed from: l  reason: collision with root package name */
        private static final String f72107l = m0.C0(4);

        /* renamed from: m  reason: collision with root package name */
        private static final String f72108m = m0.C0(5);

        /* renamed from: n  reason: collision with root package name */
        private static final String f72109n = m0.C0(6);

        /* renamed from: a  reason: collision with root package name */
        public final Uri f72110a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final String f72111b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final String f72112c;

        /* renamed from: d  reason: collision with root package name */
        public final int f72113d;

        /* renamed from: e  reason: collision with root package name */
        public final int f72114e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        public final String f72115f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        public final String f72116g;

        /* compiled from: MediaItem.java */
        /* loaded from: classes8.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private Uri f72117a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            private String f72118b;
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            private String f72119c;

            /* renamed from: d  reason: collision with root package name */
            private int f72120d;

            /* renamed from: e  reason: collision with root package name */
            private int f72121e;
            @Nullable

            /* renamed from: f  reason: collision with root package name */
            private String f72122f;
            @Nullable

            /* renamed from: g  reason: collision with root package name */
            private String f72123g;

            /* JADX INFO: Access modifiers changed from: private */
            public j i() {
                return new j(this);
            }

            private a(k kVar) {
                this.f72117a = kVar.f72110a;
                this.f72118b = kVar.f72111b;
                this.f72119c = kVar.f72112c;
                this.f72120d = kVar.f72113d;
                this.f72121e = kVar.f72114e;
                this.f72122f = kVar.f72115f;
                this.f72123g = kVar.f72116g;
            }
        }

        public a a() {
            return new a();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            if (this.f72110a.equals(kVar.f72110a) && Objects.equals(this.f72111b, kVar.f72111b) && Objects.equals(this.f72112c, kVar.f72112c) && this.f72113d == kVar.f72113d && this.f72114e == kVar.f72114e && Objects.equals(this.f72115f, kVar.f72115f) && Objects.equals(this.f72116g, kVar.f72116g)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4 = this.f72110a.hashCode() * 31;
            String str = this.f72111b;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = (hashCode4 + hashCode) * 31;
            String str2 = this.f72112c;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int i12 = (((((i11 + hashCode2) * 31) + this.f72113d) * 31) + this.f72114e) * 31;
            String str3 = this.f72115f;
            if (str3 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str3.hashCode();
            }
            int i13 = (i12 + hashCode3) * 31;
            String str4 = this.f72116g;
            if (str4 != null) {
                i10 = str4.hashCode();
            }
            return i13 + i10;
        }

        private k(a aVar) {
            this.f72110a = aVar.f72117a;
            this.f72111b = aVar.f72118b;
            this.f72112c = aVar.f72119c;
            this.f72113d = aVar.f72120d;
            this.f72114e = aVar.f72121e;
            this.f72115f = aVar.f72122f;
            this.f72116g = aVar.f72123g;
        }
    }

    public static q b(String str) {
        return new c().g(str).a();
    }

    public c a() {
        return new c();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        if (Objects.equals(this.f71991a, qVar.f71991a) && this.f71996f.equals(qVar.f71996f) && Objects.equals(this.f71992b, qVar.f71992b) && Objects.equals(this.f71994d, qVar.f71994d) && Objects.equals(this.f71995e, qVar.f71995e) && Objects.equals(this.f71998h, qVar.f71998h)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = this.f71991a.hashCode() * 31;
        h hVar = this.f71992b;
        if (hVar != null) {
            i10 = hVar.hashCode();
        } else {
            i10 = 0;
        }
        return ((((((((hashCode + i10) * 31) + this.f71994d.hashCode()) * 31) + this.f71996f.hashCode()) * 31) + this.f71995e.hashCode()) * 31) + this.f71998h.hashCode();
    }

    private q(String str, e eVar, @Nullable h hVar, g gVar, s sVar, i iVar) {
        this.f71991a = str;
        this.f71992b = hVar;
        this.f71993c = hVar;
        this.f71994d = gVar;
        this.f71995e = sVar;
        this.f71996f = eVar;
        this.f71997g = eVar;
        this.f71998h = iVar;
    }
}
