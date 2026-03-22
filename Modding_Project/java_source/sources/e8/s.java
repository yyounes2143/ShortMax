package e8;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e8.f0;
/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame.java */
/* loaded from: classes5.dex */
final class s extends f0.e.d.a.b.AbstractC0728e.AbstractC0730b {

    /* renamed from: a  reason: collision with root package name */
    private final long f51207a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51208b;

    /* renamed from: c  reason: collision with root package name */
    private final String f51209c;

    /* renamed from: d  reason: collision with root package name */
    private final long f51210d;

    /* renamed from: e  reason: collision with root package name */
    private final int f51211e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.d.a.b.AbstractC0728e.AbstractC0730b.AbstractC0731a {

        /* renamed from: a  reason: collision with root package name */
        private long f51212a;

        /* renamed from: b  reason: collision with root package name */
        private String f51213b;

        /* renamed from: c  reason: collision with root package name */
        private String f51214c;

        /* renamed from: d  reason: collision with root package name */
        private long f51215d;

        /* renamed from: e  reason: collision with root package name */
        private int f51216e;

        /* renamed from: f  reason: collision with root package name */
        private byte f51217f;

        @Override // e8.f0.e.d.a.b.AbstractC0728e.AbstractC0730b.AbstractC0731a
        public f0.e.d.a.b.AbstractC0728e.AbstractC0730b a() {
            String str;
            if (this.f51217f == 7 && (str = this.f51213b) != null) {
                return new s(this.f51212a, str, this.f51214c, this.f51215d, this.f51216e);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f51217f & 1) == 0) {
                sb2.append(" pc");
            }
            if (this.f51213b == null) {
                sb2.append(" symbol");
            }
            if ((this.f51217f & 2) == 0) {
                sb2.append(" offset");
            }
            if ((this.f51217f & 4) == 0) {
                sb2.append(" importance");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.e.d.a.b.AbstractC0728e.AbstractC0730b.AbstractC0731a
        public f0.e.d.a.b.AbstractC0728e.AbstractC0730b.AbstractC0731a b(String str) {
            this.f51214c = str;
            return this;
        }

        @Override // e8.f0.e.d.a.b.AbstractC0728e.AbstractC0730b.AbstractC0731a
        public f0.e.d.a.b.AbstractC0728e.AbstractC0730b.AbstractC0731a c(int i10) {
            this.f51216e = i10;
            this.f51217f = (byte) (this.f51217f | 4);
            return this;
        }

        @Override // e8.f0.e.d.a.b.AbstractC0728e.AbstractC0730b.AbstractC0731a
        public f0.e.d.a.b.AbstractC0728e.AbstractC0730b.AbstractC0731a d(long j10) {
            this.f51215d = j10;
            this.f51217f = (byte) (this.f51217f | 2);
            return this;
        }

        @Override // e8.f0.e.d.a.b.AbstractC0728e.AbstractC0730b.AbstractC0731a
        public f0.e.d.a.b.AbstractC0728e.AbstractC0730b.AbstractC0731a e(long j10) {
            this.f51212a = j10;
            this.f51217f = (byte) (this.f51217f | 1);
            return this;
        }

        @Override // e8.f0.e.d.a.b.AbstractC0728e.AbstractC0730b.AbstractC0731a
        public f0.e.d.a.b.AbstractC0728e.AbstractC0730b.AbstractC0731a f(String str) {
            if (str != null) {
                this.f51213b = str;
                return this;
            }
            throw new NullPointerException("Null symbol");
        }
    }

    @Override // e8.f0.e.d.a.b.AbstractC0728e.AbstractC0730b
    @Nullable
    public String b() {
        return this.f51209c;
    }

    @Override // e8.f0.e.d.a.b.AbstractC0728e.AbstractC0730b
    public int c() {
        return this.f51211e;
    }

    @Override // e8.f0.e.d.a.b.AbstractC0728e.AbstractC0730b
    public long d() {
        return this.f51210d;
    }

    @Override // e8.f0.e.d.a.b.AbstractC0728e.AbstractC0730b
    public long e() {
        return this.f51207a;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.AbstractC0728e.AbstractC0730b)) {
            return false;
        }
        f0.e.d.a.b.AbstractC0728e.AbstractC0730b abstractC0730b = (f0.e.d.a.b.AbstractC0728e.AbstractC0730b) obj;
        if (this.f51207a == abstractC0730b.e() && this.f51208b.equals(abstractC0730b.f()) && ((str = this.f51209c) != null ? str.equals(abstractC0730b.b()) : abstractC0730b.b() == null) && this.f51210d == abstractC0730b.d() && this.f51211e == abstractC0730b.c()) {
            return true;
        }
        return false;
    }

    @Override // e8.f0.e.d.a.b.AbstractC0728e.AbstractC0730b
    @NonNull
    public String f() {
        return this.f51208b;
    }

    public int hashCode() {
        int hashCode;
        long j10 = this.f51207a;
        int hashCode2 = (((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f51208b.hashCode()) * 1000003;
        String str = this.f51209c;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        long j11 = this.f51210d;
        return ((((hashCode2 ^ hashCode) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f51211e;
    }

    public String toString() {
        return "Frame{pc=" + this.f51207a + ", symbol=" + this.f51208b + ", file=" + this.f51209c + ", offset=" + this.f51210d + ", importance=" + this.f51211e + "}";
    }

    private s(long j10, String str, @Nullable String str2, long j11, int i10) {
        this.f51207a = j10;
        this.f51208b = str;
        this.f51209c = str2;
        this.f51210d = j11;
        this.f51211e = i10;
    }
}
