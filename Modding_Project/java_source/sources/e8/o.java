package e8;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e8.f0;
/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage.java */
/* loaded from: classes5.dex */
final class o extends f0.e.d.a.b.AbstractC0722a {

    /* renamed from: a  reason: collision with root package name */
    private final long f51173a;

    /* renamed from: b  reason: collision with root package name */
    private final long f51174b;

    /* renamed from: c  reason: collision with root package name */
    private final String f51175c;

    /* renamed from: d  reason: collision with root package name */
    private final String f51176d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.d.a.b.AbstractC0722a.AbstractC0723a {

        /* renamed from: a  reason: collision with root package name */
        private long f51177a;

        /* renamed from: b  reason: collision with root package name */
        private long f51178b;

        /* renamed from: c  reason: collision with root package name */
        private String f51179c;

        /* renamed from: d  reason: collision with root package name */
        private String f51180d;

        /* renamed from: e  reason: collision with root package name */
        private byte f51181e;

        @Override // e8.f0.e.d.a.b.AbstractC0722a.AbstractC0723a
        public f0.e.d.a.b.AbstractC0722a a() {
            String str;
            if (this.f51181e == 3 && (str = this.f51179c) != null) {
                return new o(this.f51177a, this.f51178b, str, this.f51180d);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f51181e & 1) == 0) {
                sb2.append(" baseAddress");
            }
            if ((this.f51181e & 2) == 0) {
                sb2.append(" size");
            }
            if (this.f51179c == null) {
                sb2.append(" name");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.e.d.a.b.AbstractC0722a.AbstractC0723a
        public f0.e.d.a.b.AbstractC0722a.AbstractC0723a b(long j10) {
            this.f51177a = j10;
            this.f51181e = (byte) (this.f51181e | 1);
            return this;
        }

        @Override // e8.f0.e.d.a.b.AbstractC0722a.AbstractC0723a
        public f0.e.d.a.b.AbstractC0722a.AbstractC0723a c(String str) {
            if (str != null) {
                this.f51179c = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }

        @Override // e8.f0.e.d.a.b.AbstractC0722a.AbstractC0723a
        public f0.e.d.a.b.AbstractC0722a.AbstractC0723a d(long j10) {
            this.f51178b = j10;
            this.f51181e = (byte) (this.f51181e | 2);
            return this;
        }

        @Override // e8.f0.e.d.a.b.AbstractC0722a.AbstractC0723a
        public f0.e.d.a.b.AbstractC0722a.AbstractC0723a e(@Nullable String str) {
            this.f51180d = str;
            return this;
        }
    }

    @Override // e8.f0.e.d.a.b.AbstractC0722a
    @NonNull
    public long b() {
        return this.f51173a;
    }

    @Override // e8.f0.e.d.a.b.AbstractC0722a
    @NonNull
    public String c() {
        return this.f51175c;
    }

    @Override // e8.f0.e.d.a.b.AbstractC0722a
    public long d() {
        return this.f51174b;
    }

    @Override // e8.f0.e.d.a.b.AbstractC0722a
    @Nullable
    public String e() {
        return this.f51176d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.AbstractC0722a)) {
            return false;
        }
        f0.e.d.a.b.AbstractC0722a abstractC0722a = (f0.e.d.a.b.AbstractC0722a) obj;
        if (this.f51173a == abstractC0722a.b() && this.f51174b == abstractC0722a.d() && this.f51175c.equals(abstractC0722a.c())) {
            String str = this.f51176d;
            if (str == null) {
                if (abstractC0722a.e() == null) {
                    return true;
                }
            } else if (str.equals(abstractC0722a.e())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        long j10 = this.f51173a;
        long j11 = this.f51174b;
        int hashCode2 = (((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f51175c.hashCode()) * 1000003;
        String str = this.f51176d;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 ^ hashCode;
    }

    public String toString() {
        return "BinaryImage{baseAddress=" + this.f51173a + ", size=" + this.f51174b + ", name=" + this.f51175c + ", uuid=" + this.f51176d + "}";
    }

    private o(long j10, long j11, String str, @Nullable String str2) {
        this.f51173a = j10;
        this.f51174b = j11;
        this.f51175c = str;
        this.f51176d = str2;
    }
}
