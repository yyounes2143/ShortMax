package e8;

import androidx.annotation.Nullable;
import e8.f0;
/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Device.java */
/* loaded from: classes5.dex */
final class u extends f0.e.d.c {

    /* renamed from: a  reason: collision with root package name */
    private final Double f51227a;

    /* renamed from: b  reason: collision with root package name */
    private final int f51228b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f51229c;

    /* renamed from: d  reason: collision with root package name */
    private final int f51230d;

    /* renamed from: e  reason: collision with root package name */
    private final long f51231e;

    /* renamed from: f  reason: collision with root package name */
    private final long f51232f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Device.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.d.c.a {

        /* renamed from: a  reason: collision with root package name */
        private Double f51233a;

        /* renamed from: b  reason: collision with root package name */
        private int f51234b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f51235c;

        /* renamed from: d  reason: collision with root package name */
        private int f51236d;

        /* renamed from: e  reason: collision with root package name */
        private long f51237e;

        /* renamed from: f  reason: collision with root package name */
        private long f51238f;

        /* renamed from: g  reason: collision with root package name */
        private byte f51239g;

        @Override // e8.f0.e.d.c.a
        public f0.e.d.c a() {
            if (this.f51239g != 31) {
                StringBuilder sb2 = new StringBuilder();
                if ((this.f51239g & 1) == 0) {
                    sb2.append(" batteryVelocity");
                }
                if ((this.f51239g & 2) == 0) {
                    sb2.append(" proximityOn");
                }
                if ((this.f51239g & 4) == 0) {
                    sb2.append(" orientation");
                }
                if ((this.f51239g & 8) == 0) {
                    sb2.append(" ramUsed");
                }
                if ((this.f51239g & 16) == 0) {
                    sb2.append(" diskUsed");
                }
                throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
            }
            return new u(this.f51233a, this.f51234b, this.f51235c, this.f51236d, this.f51237e, this.f51238f);
        }

        @Override // e8.f0.e.d.c.a
        public f0.e.d.c.a b(Double d10) {
            this.f51233a = d10;
            return this;
        }

        @Override // e8.f0.e.d.c.a
        public f0.e.d.c.a c(int i10) {
            this.f51234b = i10;
            this.f51239g = (byte) (this.f51239g | 1);
            return this;
        }

        @Override // e8.f0.e.d.c.a
        public f0.e.d.c.a d(long j10) {
            this.f51238f = j10;
            this.f51239g = (byte) (this.f51239g | 16);
            return this;
        }

        @Override // e8.f0.e.d.c.a
        public f0.e.d.c.a e(int i10) {
            this.f51236d = i10;
            this.f51239g = (byte) (this.f51239g | 4);
            return this;
        }

        @Override // e8.f0.e.d.c.a
        public f0.e.d.c.a f(boolean z10) {
            this.f51235c = z10;
            this.f51239g = (byte) (this.f51239g | 2);
            return this;
        }

        @Override // e8.f0.e.d.c.a
        public f0.e.d.c.a g(long j10) {
            this.f51237e = j10;
            this.f51239g = (byte) (this.f51239g | 8);
            return this;
        }
    }

    @Override // e8.f0.e.d.c
    @Nullable
    public Double b() {
        return this.f51227a;
    }

    @Override // e8.f0.e.d.c
    public int c() {
        return this.f51228b;
    }

    @Override // e8.f0.e.d.c
    public long d() {
        return this.f51232f;
    }

    @Override // e8.f0.e.d.c
    public int e() {
        return this.f51230d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.c)) {
            return false;
        }
        f0.e.d.c cVar = (f0.e.d.c) obj;
        Double d10 = this.f51227a;
        if (d10 != null ? d10.equals(cVar.b()) : cVar.b() == null) {
            if (this.f51228b == cVar.c() && this.f51229c == cVar.g() && this.f51230d == cVar.e() && this.f51231e == cVar.f() && this.f51232f == cVar.d()) {
                return true;
            }
        }
        return false;
    }

    @Override // e8.f0.e.d.c
    public long f() {
        return this.f51231e;
    }

    @Override // e8.f0.e.d.c
    public boolean g() {
        return this.f51229c;
    }

    public int hashCode() {
        int hashCode;
        int i10;
        Double d10 = this.f51227a;
        if (d10 == null) {
            hashCode = 0;
        } else {
            hashCode = d10.hashCode();
        }
        int i11 = (((hashCode ^ 1000003) * 1000003) ^ this.f51228b) * 1000003;
        if (this.f51229c) {
            i10 = 1231;
        } else {
            i10 = 1237;
        }
        long j10 = this.f51231e;
        long j11 = this.f51232f;
        return ((((((i11 ^ i10) * 1000003) ^ this.f51230d) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "Device{batteryLevel=" + this.f51227a + ", batteryVelocity=" + this.f51228b + ", proximityOn=" + this.f51229c + ", orientation=" + this.f51230d + ", ramUsed=" + this.f51231e + ", diskUsed=" + this.f51232f + "}";
    }

    private u(@Nullable Double d10, int i10, boolean z10, int i11, long j10, long j11) {
        this.f51227a = d10;
        this.f51228b = i10;
        this.f51229c = z10;
        this.f51230d = i11;
        this.f51231e = j10;
        this.f51232f = j11;
    }
}
