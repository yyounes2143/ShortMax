package f5;

import com.google.firebase.encoders.proto.Protobuf;
/* compiled from: StorageMetrics.java */
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: c  reason: collision with root package name */
    private static final d f51619c = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final long f51620a;

    /* renamed from: b  reason: collision with root package name */
    private final long f51621b;

    /* compiled from: StorageMetrics.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f51622a = 0;

        /* renamed from: b  reason: collision with root package name */
        private long f51623b = 0;

        a() {
        }

        public d a() {
            return new d(this.f51622a, this.f51623b);
        }

        public a b(long j10) {
            this.f51622a = j10;
            return this;
        }

        public a c(long j10) {
            this.f51623b = j10;
            return this;
        }
    }

    d(long j10, long j11) {
        this.f51620a = j10;
        this.f51621b = j11;
    }

    public static a c() {
        return new a();
    }

    @Protobuf(tag = 1)
    public long a() {
        return this.f51620a;
    }

    @Protobuf(tag = 2)
    public long b() {
        return this.f51621b;
    }
}
