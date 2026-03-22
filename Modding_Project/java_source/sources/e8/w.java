package e8;

import androidx.annotation.NonNull;
import e8.f0;
/* compiled from: AutoValue_CrashlyticsReport_Session_Event_RolloutAssignment.java */
/* loaded from: classes5.dex */
final class w extends f0.e.d.AbstractC0734e {

    /* renamed from: a  reason: collision with root package name */
    private final f0.e.d.AbstractC0734e.b f51242a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51243b;

    /* renamed from: c  reason: collision with root package name */
    private final String f51244c;

    /* renamed from: d  reason: collision with root package name */
    private final long f51245d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_RolloutAssignment.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.d.AbstractC0734e.a {

        /* renamed from: a  reason: collision with root package name */
        private f0.e.d.AbstractC0734e.b f51246a;

        /* renamed from: b  reason: collision with root package name */
        private String f51247b;

        /* renamed from: c  reason: collision with root package name */
        private String f51248c;

        /* renamed from: d  reason: collision with root package name */
        private long f51249d;

        /* renamed from: e  reason: collision with root package name */
        private byte f51250e;

        @Override // e8.f0.e.d.AbstractC0734e.a
        public f0.e.d.AbstractC0734e a() {
            f0.e.d.AbstractC0734e.b bVar;
            String str;
            String str2;
            if (this.f51250e == 1 && (bVar = this.f51246a) != null && (str = this.f51247b) != null && (str2 = this.f51248c) != null) {
                return new w(bVar, str, str2, this.f51249d);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f51246a == null) {
                sb2.append(" rolloutVariant");
            }
            if (this.f51247b == null) {
                sb2.append(" parameterKey");
            }
            if (this.f51248c == null) {
                sb2.append(" parameterValue");
            }
            if ((1 & this.f51250e) == 0) {
                sb2.append(" templateVersion");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.e.d.AbstractC0734e.a
        public f0.e.d.AbstractC0734e.a b(String str) {
            if (str != null) {
                this.f51247b = str;
                return this;
            }
            throw new NullPointerException("Null parameterKey");
        }

        @Override // e8.f0.e.d.AbstractC0734e.a
        public f0.e.d.AbstractC0734e.a c(String str) {
            if (str != null) {
                this.f51248c = str;
                return this;
            }
            throw new NullPointerException("Null parameterValue");
        }

        @Override // e8.f0.e.d.AbstractC0734e.a
        public f0.e.d.AbstractC0734e.a d(f0.e.d.AbstractC0734e.b bVar) {
            if (bVar != null) {
                this.f51246a = bVar;
                return this;
            }
            throw new NullPointerException("Null rolloutVariant");
        }

        @Override // e8.f0.e.d.AbstractC0734e.a
        public f0.e.d.AbstractC0734e.a e(long j10) {
            this.f51249d = j10;
            this.f51250e = (byte) (this.f51250e | 1);
            return this;
        }
    }

    @Override // e8.f0.e.d.AbstractC0734e
    @NonNull
    public String b() {
        return this.f51243b;
    }

    @Override // e8.f0.e.d.AbstractC0734e
    @NonNull
    public String c() {
        return this.f51244c;
    }

    @Override // e8.f0.e.d.AbstractC0734e
    @NonNull
    public f0.e.d.AbstractC0734e.b d() {
        return this.f51242a;
    }

    @Override // e8.f0.e.d.AbstractC0734e
    @NonNull
    public long e() {
        return this.f51245d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.AbstractC0734e)) {
            return false;
        }
        f0.e.d.AbstractC0734e abstractC0734e = (f0.e.d.AbstractC0734e) obj;
        if (this.f51242a.equals(abstractC0734e.d()) && this.f51243b.equals(abstractC0734e.b()) && this.f51244c.equals(abstractC0734e.c()) && this.f51245d == abstractC0734e.e()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f51245d;
        return ((((((this.f51242a.hashCode() ^ 1000003) * 1000003) ^ this.f51243b.hashCode()) * 1000003) ^ this.f51244c.hashCode()) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "RolloutAssignment{rolloutVariant=" + this.f51242a + ", parameterKey=" + this.f51243b + ", parameterValue=" + this.f51244c + ", templateVersion=" + this.f51245d + "}";
    }

    private w(f0.e.d.AbstractC0734e.b bVar, String str, String str2, long j10) {
        this.f51242a = bVar;
        this.f51243b = str;
        this.f51244c = str2;
        this.f51245d = j10;
    }
}
