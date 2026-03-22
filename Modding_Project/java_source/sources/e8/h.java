package e8;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e8.f0;
import java.util.List;
/* compiled from: AutoValue_CrashlyticsReport_Session.java */
/* loaded from: classes5.dex */
final class h extends f0.e {

    /* renamed from: a  reason: collision with root package name */
    private final String f51076a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51077b;

    /* renamed from: c  reason: collision with root package name */
    private final String f51078c;

    /* renamed from: d  reason: collision with root package name */
    private final long f51079d;

    /* renamed from: e  reason: collision with root package name */
    private final Long f51080e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f51081f;

    /* renamed from: g  reason: collision with root package name */
    private final f0.e.a f51082g;

    /* renamed from: h  reason: collision with root package name */
    private final f0.e.f f51083h;

    /* renamed from: i  reason: collision with root package name */
    private final f0.e.AbstractC0735e f51084i;

    /* renamed from: j  reason: collision with root package name */
    private final f0.e.c f51085j;

    /* renamed from: k  reason: collision with root package name */
    private final List<f0.e.d> f51086k;

    /* renamed from: l  reason: collision with root package name */
    private final int f51087l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.b {

        /* renamed from: a  reason: collision with root package name */
        private String f51088a;

        /* renamed from: b  reason: collision with root package name */
        private String f51089b;

        /* renamed from: c  reason: collision with root package name */
        private String f51090c;

        /* renamed from: d  reason: collision with root package name */
        private long f51091d;

        /* renamed from: e  reason: collision with root package name */
        private Long f51092e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f51093f;

        /* renamed from: g  reason: collision with root package name */
        private f0.e.a f51094g;

        /* renamed from: h  reason: collision with root package name */
        private f0.e.f f51095h;

        /* renamed from: i  reason: collision with root package name */
        private f0.e.AbstractC0735e f51096i;

        /* renamed from: j  reason: collision with root package name */
        private f0.e.c f51097j;

        /* renamed from: k  reason: collision with root package name */
        private List<f0.e.d> f51098k;

        /* renamed from: l  reason: collision with root package name */
        private int f51099l;

        /* renamed from: m  reason: collision with root package name */
        private byte f51100m;

        @Override // e8.f0.e.b
        public f0.e a() {
            String str;
            String str2;
            f0.e.a aVar;
            if (this.f51100m == 7 && (str = this.f51088a) != null && (str2 = this.f51089b) != null && (aVar = this.f51094g) != null) {
                return new h(str, str2, this.f51090c, this.f51091d, this.f51092e, this.f51093f, aVar, this.f51095h, this.f51096i, this.f51097j, this.f51098k, this.f51099l);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f51088a == null) {
                sb2.append(" generator");
            }
            if (this.f51089b == null) {
                sb2.append(" identifier");
            }
            if ((this.f51100m & 1) == 0) {
                sb2.append(" startedAt");
            }
            if ((this.f51100m & 2) == 0) {
                sb2.append(" crashed");
            }
            if (this.f51094g == null) {
                sb2.append(" app");
            }
            if ((this.f51100m & 4) == 0) {
                sb2.append(" generatorType");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.e.b
        public f0.e.b b(f0.e.a aVar) {
            if (aVar != null) {
                this.f51094g = aVar;
                return this;
            }
            throw new NullPointerException("Null app");
        }

        @Override // e8.f0.e.b
        public f0.e.b c(@Nullable String str) {
            this.f51090c = str;
            return this;
        }

        @Override // e8.f0.e.b
        public f0.e.b d(boolean z10) {
            this.f51093f = z10;
            this.f51100m = (byte) (this.f51100m | 2);
            return this;
        }

        @Override // e8.f0.e.b
        public f0.e.b e(f0.e.c cVar) {
            this.f51097j = cVar;
            return this;
        }

        @Override // e8.f0.e.b
        public f0.e.b f(Long l10) {
            this.f51092e = l10;
            return this;
        }

        @Override // e8.f0.e.b
        public f0.e.b g(List<f0.e.d> list) {
            this.f51098k = list;
            return this;
        }

        @Override // e8.f0.e.b
        public f0.e.b h(String str) {
            if (str != null) {
                this.f51088a = str;
                return this;
            }
            throw new NullPointerException("Null generator");
        }

        @Override // e8.f0.e.b
        public f0.e.b i(int i10) {
            this.f51099l = i10;
            this.f51100m = (byte) (this.f51100m | 4);
            return this;
        }

        @Override // e8.f0.e.b
        public f0.e.b j(String str) {
            if (str != null) {
                this.f51089b = str;
                return this;
            }
            throw new NullPointerException("Null identifier");
        }

        @Override // e8.f0.e.b
        public f0.e.b l(f0.e.AbstractC0735e abstractC0735e) {
            this.f51096i = abstractC0735e;
            return this;
        }

        @Override // e8.f0.e.b
        public f0.e.b m(long j10) {
            this.f51091d = j10;
            this.f51100m = (byte) (this.f51100m | 1);
            return this;
        }

        @Override // e8.f0.e.b
        public f0.e.b n(f0.e.f fVar) {
            this.f51095h = fVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        private b(f0.e eVar) {
            this.f51088a = eVar.g();
            this.f51089b = eVar.i();
            this.f51090c = eVar.c();
            this.f51091d = eVar.l();
            this.f51092e = eVar.e();
            this.f51093f = eVar.n();
            this.f51094g = eVar.b();
            this.f51095h = eVar.m();
            this.f51096i = eVar.k();
            this.f51097j = eVar.d();
            this.f51098k = eVar.f();
            this.f51099l = eVar.h();
            this.f51100m = (byte) 7;
        }
    }

    @Override // e8.f0.e
    @NonNull
    public f0.e.a b() {
        return this.f51082g;
    }

    @Override // e8.f0.e
    @Nullable
    public String c() {
        return this.f51078c;
    }

    @Override // e8.f0.e
    @Nullable
    public f0.e.c d() {
        return this.f51085j;
    }

    @Override // e8.f0.e
    @Nullable
    public Long e() {
        return this.f51080e;
    }

    public boolean equals(Object obj) {
        String str;
        Long l10;
        f0.e.f fVar;
        f0.e.AbstractC0735e abstractC0735e;
        f0.e.c cVar;
        List<f0.e.d> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e)) {
            return false;
        }
        f0.e eVar = (f0.e) obj;
        if (this.f51076a.equals(eVar.g()) && this.f51077b.equals(eVar.i()) && ((str = this.f51078c) != null ? str.equals(eVar.c()) : eVar.c() == null) && this.f51079d == eVar.l() && ((l10 = this.f51080e) != null ? l10.equals(eVar.e()) : eVar.e() == null) && this.f51081f == eVar.n() && this.f51082g.equals(eVar.b()) && ((fVar = this.f51083h) != null ? fVar.equals(eVar.m()) : eVar.m() == null) && ((abstractC0735e = this.f51084i) != null ? abstractC0735e.equals(eVar.k()) : eVar.k() == null) && ((cVar = this.f51085j) != null ? cVar.equals(eVar.d()) : eVar.d() == null) && ((list = this.f51086k) != null ? list.equals(eVar.f()) : eVar.f() == null) && this.f51087l == eVar.h()) {
            return true;
        }
        return false;
    }

    @Override // e8.f0.e
    @Nullable
    public List<f0.e.d> f() {
        return this.f51086k;
    }

    @Override // e8.f0.e
    @NonNull
    public String g() {
        return this.f51076a;
    }

    @Override // e8.f0.e
    public int h() {
        return this.f51087l;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int i10;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6 = (((this.f51076a.hashCode() ^ 1000003) * 1000003) ^ this.f51077b.hashCode()) * 1000003;
        String str = this.f51078c;
        int i11 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        long j10 = this.f51079d;
        int i12 = (((hashCode6 ^ hashCode) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        Long l10 = this.f51080e;
        if (l10 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = l10.hashCode();
        }
        int i13 = (i12 ^ hashCode2) * 1000003;
        if (this.f51081f) {
            i10 = 1231;
        } else {
            i10 = 1237;
        }
        int hashCode7 = (((i13 ^ i10) * 1000003) ^ this.f51082g.hashCode()) * 1000003;
        f0.e.f fVar = this.f51083h;
        if (fVar == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = fVar.hashCode();
        }
        int i14 = (hashCode7 ^ hashCode3) * 1000003;
        f0.e.AbstractC0735e abstractC0735e = this.f51084i;
        if (abstractC0735e == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = abstractC0735e.hashCode();
        }
        int i15 = (i14 ^ hashCode4) * 1000003;
        f0.e.c cVar = this.f51085j;
        if (cVar == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = cVar.hashCode();
        }
        int i16 = (i15 ^ hashCode5) * 1000003;
        List<f0.e.d> list = this.f51086k;
        if (list != null) {
            i11 = list.hashCode();
        }
        return ((i16 ^ i11) * 1000003) ^ this.f51087l;
    }

    @Override // e8.f0.e
    @NonNull
    public String i() {
        return this.f51077b;
    }

    @Override // e8.f0.e
    @Nullable
    public f0.e.AbstractC0735e k() {
        return this.f51084i;
    }

    @Override // e8.f0.e
    public long l() {
        return this.f51079d;
    }

    @Override // e8.f0.e
    @Nullable
    public f0.e.f m() {
        return this.f51083h;
    }

    @Override // e8.f0.e
    public boolean n() {
        return this.f51081f;
    }

    @Override // e8.f0.e
    public f0.e.b o() {
        return new b(this);
    }

    public String toString() {
        return "Session{generator=" + this.f51076a + ", identifier=" + this.f51077b + ", appQualitySessionId=" + this.f51078c + ", startedAt=" + this.f51079d + ", endedAt=" + this.f51080e + ", crashed=" + this.f51081f + ", app=" + this.f51082g + ", user=" + this.f51083h + ", os=" + this.f51084i + ", device=" + this.f51085j + ", events=" + this.f51086k + ", generatorType=" + this.f51087l + "}";
    }

    private h(String str, String str2, @Nullable String str3, long j10, @Nullable Long l10, boolean z10, f0.e.a aVar, @Nullable f0.e.f fVar, @Nullable f0.e.AbstractC0735e abstractC0735e, @Nullable f0.e.c cVar, @Nullable List<f0.e.d> list, int i10) {
        this.f51076a = str;
        this.f51077b = str2;
        this.f51078c = str3;
        this.f51079d = j10;
        this.f51080e = l10;
        this.f51081f = z10;
        this.f51082g = aVar;
        this.f51083h = fVar;
        this.f51084i = abstractC0735e;
        this.f51085j = cVar;
        this.f51086k = list;
        this.f51087l = i10;
    }
}
