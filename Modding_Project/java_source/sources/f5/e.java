package f5;

import com.google.firebase.encoders.proto.Protobuf;
/* compiled from: TimeWindow.java */
/* loaded from: classes4.dex */
public final class e {

    /* renamed from: c  reason: collision with root package name */
    private static final e f51624c = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final long f51625a;

    /* renamed from: b  reason: collision with root package name */
    private final long f51626b;

    /* compiled from: TimeWindow.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f51627a = 0;

        /* renamed from: b  reason: collision with root package name */
        private long f51628b = 0;

        a() {
        }

        public e a() {
            return new e(this.f51627a, this.f51628b);
        }

        public a b(long j10) {
            this.f51628b = j10;
            return this;
        }

        public a c(long j10) {
            this.f51627a = j10;
            return this;
        }
    }

    e(long j10, long j11) {
        this.f51625a = j10;
        this.f51626b = j11;
    }

    public static a c() {
        return new a();
    }

    @Protobuf(tag = 2)
    public long a() {
        return this.f51626b;
    }

    @Protobuf(tag = 1)
    public long b() {
        return this.f51625a;
    }
}
