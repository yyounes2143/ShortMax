package e8;

import androidx.annotation.NonNull;
import e8.f0;
/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal.java */
/* loaded from: classes5.dex */
final class q extends f0.e.d.a.b.AbstractC0726d {

    /* renamed from: a  reason: collision with root package name */
    private final String f51193a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51194b;

    /* renamed from: c  reason: collision with root package name */
    private final long f51195c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.d.a.b.AbstractC0726d.AbstractC0727a {

        /* renamed from: a  reason: collision with root package name */
        private String f51196a;

        /* renamed from: b  reason: collision with root package name */
        private String f51197b;

        /* renamed from: c  reason: collision with root package name */
        private long f51198c;

        /* renamed from: d  reason: collision with root package name */
        private byte f51199d;

        @Override // e8.f0.e.d.a.b.AbstractC0726d.AbstractC0727a
        public f0.e.d.a.b.AbstractC0726d a() {
            String str;
            String str2;
            if (this.f51199d == 1 && (str = this.f51196a) != null && (str2 = this.f51197b) != null) {
                return new q(str, str2, this.f51198c);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f51196a == null) {
                sb2.append(" name");
            }
            if (this.f51197b == null) {
                sb2.append(" code");
            }
            if ((1 & this.f51199d) == 0) {
                sb2.append(" address");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.e.d.a.b.AbstractC0726d.AbstractC0727a
        public f0.e.d.a.b.AbstractC0726d.AbstractC0727a b(long j10) {
            this.f51198c = j10;
            this.f51199d = (byte) (this.f51199d | 1);
            return this;
        }

        @Override // e8.f0.e.d.a.b.AbstractC0726d.AbstractC0727a
        public f0.e.d.a.b.AbstractC0726d.AbstractC0727a c(String str) {
            if (str != null) {
                this.f51197b = str;
                return this;
            }
            throw new NullPointerException("Null code");
        }

        @Override // e8.f0.e.d.a.b.AbstractC0726d.AbstractC0727a
        public f0.e.d.a.b.AbstractC0726d.AbstractC0727a d(String str) {
            if (str != null) {
                this.f51196a = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }
    }

    @Override // e8.f0.e.d.a.b.AbstractC0726d
    @NonNull
    public long b() {
        return this.f51195c;
    }

    @Override // e8.f0.e.d.a.b.AbstractC0726d
    @NonNull
    public String c() {
        return this.f51194b;
    }

    @Override // e8.f0.e.d.a.b.AbstractC0726d
    @NonNull
    public String d() {
        return this.f51193a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.AbstractC0726d)) {
            return false;
        }
        f0.e.d.a.b.AbstractC0726d abstractC0726d = (f0.e.d.a.b.AbstractC0726d) obj;
        if (this.f51193a.equals(abstractC0726d.d()) && this.f51194b.equals(abstractC0726d.c()) && this.f51195c == abstractC0726d.b()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f51195c;
        return ((((this.f51193a.hashCode() ^ 1000003) * 1000003) ^ this.f51194b.hashCode()) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "Signal{name=" + this.f51193a + ", code=" + this.f51194b + ", address=" + this.f51195c + "}";
    }

    private q(String str, String str2, long j10) {
        this.f51193a = str;
        this.f51194b = str2;
        this.f51195c = j10;
    }
}
