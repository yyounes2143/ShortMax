package k5;

import k5.e;
/* compiled from: AutoValue_EventStoreConfig.java */
/* loaded from: classes4.dex */
final class a extends e {

    /* renamed from: b  reason: collision with root package name */
    private final long f60590b;

    /* renamed from: c  reason: collision with root package name */
    private final int f60591c;

    /* renamed from: d  reason: collision with root package name */
    private final int f60592d;

    /* renamed from: e  reason: collision with root package name */
    private final long f60593e;

    /* renamed from: f  reason: collision with root package name */
    private final int f60594f;

    /* compiled from: AutoValue_EventStoreConfig.java */
    /* loaded from: classes4.dex */
    static final class b extends e.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f60595a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f60596b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f60597c;

        /* renamed from: d  reason: collision with root package name */
        private Long f60598d;

        /* renamed from: e  reason: collision with root package name */
        private Integer f60599e;

        @Override // k5.e.a
        e a() {
            String str = "";
            if (this.f60595a == null) {
                str = " maxStorageSizeInBytes";
            }
            if (this.f60596b == null) {
                str = str + " loadBatchSize";
            }
            if (this.f60597c == null) {
                str = str + " criticalSectionEnterTimeoutMs";
            }
            if (this.f60598d == null) {
                str = str + " eventCleanUpAge";
            }
            if (this.f60599e == null) {
                str = str + " maxBlobByteSizePerRow";
            }
            if (str.isEmpty()) {
                return new a(this.f60595a.longValue(), this.f60596b.intValue(), this.f60597c.intValue(), this.f60598d.longValue(), this.f60599e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // k5.e.a
        e.a b(int i10) {
            this.f60597c = Integer.valueOf(i10);
            return this;
        }

        @Override // k5.e.a
        e.a c(long j10) {
            this.f60598d = Long.valueOf(j10);
            return this;
        }

        @Override // k5.e.a
        e.a d(int i10) {
            this.f60596b = Integer.valueOf(i10);
            return this;
        }

        @Override // k5.e.a
        e.a e(int i10) {
            this.f60599e = Integer.valueOf(i10);
            return this;
        }

        @Override // k5.e.a
        e.a f(long j10) {
            this.f60595a = Long.valueOf(j10);
            return this;
        }
    }

    @Override // k5.e
    int b() {
        return this.f60592d;
    }

    @Override // k5.e
    long c() {
        return this.f60593e;
    }

    @Override // k5.e
    int d() {
        return this.f60591c;
    }

    @Override // k5.e
    int e() {
        return this.f60594f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f60590b == eVar.f() && this.f60591c == eVar.d() && this.f60592d == eVar.b() && this.f60593e == eVar.c() && this.f60594f == eVar.e()) {
            return true;
        }
        return false;
    }

    @Override // k5.e
    long f() {
        return this.f60590b;
    }

    public int hashCode() {
        long j10 = this.f60590b;
        long j11 = this.f60593e;
        return ((((((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f60591c) * 1000003) ^ this.f60592d) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f60594f;
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f60590b + ", loadBatchSize=" + this.f60591c + ", criticalSectionEnterTimeoutMs=" + this.f60592d + ", eventCleanUpAge=" + this.f60593e + ", maxBlobByteSizePerRow=" + this.f60594f + "}";
    }

    private a(long j10, int i10, int i11, long j11, int i12) {
        this.f60590b = j10;
        this.f60591c = i10;
        this.f60592d = i11;
        this.f60593e = j11;
        this.f60594f = i12;
    }
}
