package e8;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e8.f0;
/* compiled from: AutoValue_CrashlyticsReport_Session_Event.java */
/* loaded from: classes5.dex */
final class l extends f0.e.d {

    /* renamed from: a  reason: collision with root package name */
    private final long f51135a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51136b;

    /* renamed from: c  reason: collision with root package name */
    private final f0.e.d.a f51137c;

    /* renamed from: d  reason: collision with root package name */
    private final f0.e.d.c f51138d;

    /* renamed from: e  reason: collision with root package name */
    private final f0.e.d.AbstractC0733d f51139e;

    /* renamed from: f  reason: collision with root package name */
    private final f0.e.d.f f51140f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.d.b {

        /* renamed from: a  reason: collision with root package name */
        private long f51141a;

        /* renamed from: b  reason: collision with root package name */
        private String f51142b;

        /* renamed from: c  reason: collision with root package name */
        private f0.e.d.a f51143c;

        /* renamed from: d  reason: collision with root package name */
        private f0.e.d.c f51144d;

        /* renamed from: e  reason: collision with root package name */
        private f0.e.d.AbstractC0733d f51145e;

        /* renamed from: f  reason: collision with root package name */
        private f0.e.d.f f51146f;

        /* renamed from: g  reason: collision with root package name */
        private byte f51147g;

        @Override // e8.f0.e.d.b
        public f0.e.d a() {
            String str;
            f0.e.d.a aVar;
            f0.e.d.c cVar;
            if (this.f51147g == 1 && (str = this.f51142b) != null && (aVar = this.f51143c) != null && (cVar = this.f51144d) != null) {
                return new l(this.f51141a, str, aVar, cVar, this.f51145e, this.f51146f);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((1 & this.f51147g) == 0) {
                sb2.append(" timestamp");
            }
            if (this.f51142b == null) {
                sb2.append(" type");
            }
            if (this.f51143c == null) {
                sb2.append(" app");
            }
            if (this.f51144d == null) {
                sb2.append(" device");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.e.d.b
        public f0.e.d.b b(f0.e.d.a aVar) {
            if (aVar != null) {
                this.f51143c = aVar;
                return this;
            }
            throw new NullPointerException("Null app");
        }

        @Override // e8.f0.e.d.b
        public f0.e.d.b c(f0.e.d.c cVar) {
            if (cVar != null) {
                this.f51144d = cVar;
                return this;
            }
            throw new NullPointerException("Null device");
        }

        @Override // e8.f0.e.d.b
        public f0.e.d.b d(f0.e.d.AbstractC0733d abstractC0733d) {
            this.f51145e = abstractC0733d;
            return this;
        }

        @Override // e8.f0.e.d.b
        public f0.e.d.b e(f0.e.d.f fVar) {
            this.f51146f = fVar;
            return this;
        }

        @Override // e8.f0.e.d.b
        public f0.e.d.b f(long j10) {
            this.f51141a = j10;
            this.f51147g = (byte) (this.f51147g | 1);
            return this;
        }

        @Override // e8.f0.e.d.b
        public f0.e.d.b g(String str) {
            if (str != null) {
                this.f51142b = str;
                return this;
            }
            throw new NullPointerException("Null type");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        private b(f0.e.d dVar) {
            this.f51141a = dVar.f();
            this.f51142b = dVar.g();
            this.f51143c = dVar.b();
            this.f51144d = dVar.c();
            this.f51145e = dVar.d();
            this.f51146f = dVar.e();
            this.f51147g = (byte) 1;
        }
    }

    @Override // e8.f0.e.d
    @NonNull
    public f0.e.d.a b() {
        return this.f51137c;
    }

    @Override // e8.f0.e.d
    @NonNull
    public f0.e.d.c c() {
        return this.f51138d;
    }

    @Override // e8.f0.e.d
    @Nullable
    public f0.e.d.AbstractC0733d d() {
        return this.f51139e;
    }

    @Override // e8.f0.e.d
    @Nullable
    public f0.e.d.f e() {
        return this.f51140f;
    }

    public boolean equals(Object obj) {
        f0.e.d.AbstractC0733d abstractC0733d;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d)) {
            return false;
        }
        f0.e.d dVar = (f0.e.d) obj;
        if (this.f51135a == dVar.f() && this.f51136b.equals(dVar.g()) && this.f51137c.equals(dVar.b()) && this.f51138d.equals(dVar.c()) && ((abstractC0733d = this.f51139e) != null ? abstractC0733d.equals(dVar.d()) : dVar.d() == null)) {
            f0.e.d.f fVar = this.f51140f;
            if (fVar == null) {
                if (dVar.e() == null) {
                    return true;
                }
            } else if (fVar.equals(dVar.e())) {
                return true;
            }
        }
        return false;
    }

    @Override // e8.f0.e.d
    public long f() {
        return this.f51135a;
    }

    @Override // e8.f0.e.d
    @NonNull
    public String g() {
        return this.f51136b;
    }

    @Override // e8.f0.e.d
    public f0.e.d.b h() {
        return new b(this);
    }

    public int hashCode() {
        int hashCode;
        long j10 = this.f51135a;
        int hashCode2 = (((((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f51136b.hashCode()) * 1000003) ^ this.f51137c.hashCode()) * 1000003) ^ this.f51138d.hashCode()) * 1000003;
        f0.e.d.AbstractC0733d abstractC0733d = this.f51139e;
        int i10 = 0;
        if (abstractC0733d == null) {
            hashCode = 0;
        } else {
            hashCode = abstractC0733d.hashCode();
        }
        int i11 = (hashCode2 ^ hashCode) * 1000003;
        f0.e.d.f fVar = this.f51140f;
        if (fVar != null) {
            i10 = fVar.hashCode();
        }
        return i11 ^ i10;
    }

    public String toString() {
        return "Event{timestamp=" + this.f51135a + ", type=" + this.f51136b + ", app=" + this.f51137c + ", device=" + this.f51138d + ", log=" + this.f51139e + ", rollouts=" + this.f51140f + "}";
    }

    private l(long j10, String str, f0.e.d.a aVar, f0.e.d.c cVar, @Nullable f0.e.d.AbstractC0733d abstractC0733d, @Nullable f0.e.d.f fVar) {
        this.f51135a = j10;
        this.f51136b = str;
        this.f51137c = aVar;
        this.f51138d = cVar;
        this.f51139e = abstractC0733d;
        this.f51140f = fVar;
    }
}
