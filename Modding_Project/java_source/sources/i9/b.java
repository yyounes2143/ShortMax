package i9;

import androidx.annotation.NonNull;
import i9.d;
/* compiled from: AutoValue_RolloutAssignment.java */
/* loaded from: classes5.dex */
final class b extends d {

    /* renamed from: b  reason: collision with root package name */
    private final String f53353b;

    /* renamed from: c  reason: collision with root package name */
    private final String f53354c;

    /* renamed from: d  reason: collision with root package name */
    private final String f53355d;

    /* renamed from: e  reason: collision with root package name */
    private final String f53356e;

    /* renamed from: f  reason: collision with root package name */
    private final long f53357f;

    /* compiled from: AutoValue_RolloutAssignment.java */
    /* renamed from: i9.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static final class C0775b extends d.a {

        /* renamed from: a  reason: collision with root package name */
        private String f53358a;

        /* renamed from: b  reason: collision with root package name */
        private String f53359b;

        /* renamed from: c  reason: collision with root package name */
        private String f53360c;

        /* renamed from: d  reason: collision with root package name */
        private String f53361d;

        /* renamed from: e  reason: collision with root package name */
        private long f53362e;

        /* renamed from: f  reason: collision with root package name */
        private byte f53363f;

        @Override // i9.d.a
        public d a() {
            if (this.f53363f == 1 && this.f53358a != null && this.f53359b != null && this.f53360c != null && this.f53361d != null) {
                return new b(this.f53358a, this.f53359b, this.f53360c, this.f53361d, this.f53362e);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f53358a == null) {
                sb2.append(" rolloutId");
            }
            if (this.f53359b == null) {
                sb2.append(" variantId");
            }
            if (this.f53360c == null) {
                sb2.append(" parameterKey");
            }
            if (this.f53361d == null) {
                sb2.append(" parameterValue");
            }
            if ((1 & this.f53363f) == 0) {
                sb2.append(" templateVersion");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // i9.d.a
        public d.a b(String str) {
            if (str != null) {
                this.f53360c = str;
                return this;
            }
            throw new NullPointerException("Null parameterKey");
        }

        @Override // i9.d.a
        public d.a c(String str) {
            if (str != null) {
                this.f53361d = str;
                return this;
            }
            throw new NullPointerException("Null parameterValue");
        }

        @Override // i9.d.a
        public d.a d(String str) {
            if (str != null) {
                this.f53358a = str;
                return this;
            }
            throw new NullPointerException("Null rolloutId");
        }

        @Override // i9.d.a
        public d.a e(long j10) {
            this.f53362e = j10;
            this.f53363f = (byte) (this.f53363f | 1);
            return this;
        }

        @Override // i9.d.a
        public d.a f(String str) {
            if (str != null) {
                this.f53359b = str;
                return this;
            }
            throw new NullPointerException("Null variantId");
        }
    }

    @Override // i9.d
    @NonNull
    public String b() {
        return this.f53355d;
    }

    @Override // i9.d
    @NonNull
    public String c() {
        return this.f53356e;
    }

    @Override // i9.d
    @NonNull
    public String d() {
        return this.f53353b;
    }

    @Override // i9.d
    public long e() {
        return this.f53357f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f53353b.equals(dVar.d()) && this.f53354c.equals(dVar.f()) && this.f53355d.equals(dVar.b()) && this.f53356e.equals(dVar.c()) && this.f53357f == dVar.e()) {
            return true;
        }
        return false;
    }

    @Override // i9.d
    @NonNull
    public String f() {
        return this.f53354c;
    }

    public int hashCode() {
        long j10 = this.f53357f;
        return ((((((((this.f53353b.hashCode() ^ 1000003) * 1000003) ^ this.f53354c.hashCode()) * 1000003) ^ this.f53355d.hashCode()) * 1000003) ^ this.f53356e.hashCode()) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "RolloutAssignment{rolloutId=" + this.f53353b + ", variantId=" + this.f53354c + ", parameterKey=" + this.f53355d + ", parameterValue=" + this.f53356e + ", templateVersion=" + this.f53357f + "}";
    }

    private b(String str, String str2, String str3, String str4, long j10) {
        this.f53353b = str;
        this.f53354c = str2;
        this.f53355d = str3;
        this.f53356e = str4;
        this.f53357f = j10;
    }
}
