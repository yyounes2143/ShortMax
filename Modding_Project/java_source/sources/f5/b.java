package f5;

import com.google.firebase.encoders.proto.Protobuf;
/* compiled from: GlobalMetrics.java */
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final b f51611b = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final d f51612a;

    /* compiled from: GlobalMetrics.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private d f51613a = null;

        a() {
        }

        public b a() {
            return new b(this.f51613a);
        }

        public a b(d dVar) {
            this.f51613a = dVar;
            return this;
        }
    }

    b(d dVar) {
        this.f51612a = dVar;
    }

    public static a b() {
        return new a();
    }

    @Protobuf(tag = 1)
    public d a() {
        return this.f51612a;
    }
}
