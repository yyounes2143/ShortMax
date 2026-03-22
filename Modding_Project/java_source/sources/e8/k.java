package e8;

import androidx.annotation.NonNull;
import e8.f0;
/* compiled from: AutoValue_CrashlyticsReport_Session_Device.java */
/* loaded from: classes5.dex */
final class k extends f0.e.c {

    /* renamed from: a  reason: collision with root package name */
    private final int f51116a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51117b;

    /* renamed from: c  reason: collision with root package name */
    private final int f51118c;

    /* renamed from: d  reason: collision with root package name */
    private final long f51119d;

    /* renamed from: e  reason: collision with root package name */
    private final long f51120e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f51121f;

    /* renamed from: g  reason: collision with root package name */
    private final int f51122g;

    /* renamed from: h  reason: collision with root package name */
    private final String f51123h;

    /* renamed from: i  reason: collision with root package name */
    private final String f51124i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Device.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.c.a {

        /* renamed from: a  reason: collision with root package name */
        private int f51125a;

        /* renamed from: b  reason: collision with root package name */
        private String f51126b;

        /* renamed from: c  reason: collision with root package name */
        private int f51127c;

        /* renamed from: d  reason: collision with root package name */
        private long f51128d;

        /* renamed from: e  reason: collision with root package name */
        private long f51129e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f51130f;

        /* renamed from: g  reason: collision with root package name */
        private int f51131g;

        /* renamed from: h  reason: collision with root package name */
        private String f51132h;

        /* renamed from: i  reason: collision with root package name */
        private String f51133i;

        /* renamed from: j  reason: collision with root package name */
        private byte f51134j;

        @Override // e8.f0.e.c.a
        public f0.e.c a() {
            String str;
            String str2;
            String str3;
            if (this.f51134j == 63 && (str = this.f51126b) != null && (str2 = this.f51132h) != null && (str3 = this.f51133i) != null) {
                return new k(this.f51125a, str, this.f51127c, this.f51128d, this.f51129e, this.f51130f, this.f51131g, str2, str3);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f51134j & 1) == 0) {
                sb2.append(" arch");
            }
            if (this.f51126b == null) {
                sb2.append(" model");
            }
            if ((this.f51134j & 2) == 0) {
                sb2.append(" cores");
            }
            if ((this.f51134j & 4) == 0) {
                sb2.append(" ram");
            }
            if ((this.f51134j & 8) == 0) {
                sb2.append(" diskSpace");
            }
            if ((this.f51134j & 16) == 0) {
                sb2.append(" simulator");
            }
            if ((this.f51134j & 32) == 0) {
                sb2.append(" state");
            }
            if (this.f51132h == null) {
                sb2.append(" manufacturer");
            }
            if (this.f51133i == null) {
                sb2.append(" modelClass");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.e.c.a
        public f0.e.c.a b(int i10) {
            this.f51125a = i10;
            this.f51134j = (byte) (this.f51134j | 1);
            return this;
        }

        @Override // e8.f0.e.c.a
        public f0.e.c.a c(int i10) {
            this.f51127c = i10;
            this.f51134j = (byte) (this.f51134j | 2);
            return this;
        }

        @Override // e8.f0.e.c.a
        public f0.e.c.a d(long j10) {
            this.f51129e = j10;
            this.f51134j = (byte) (this.f51134j | 8);
            return this;
        }

        @Override // e8.f0.e.c.a
        public f0.e.c.a e(String str) {
            if (str != null) {
                this.f51132h = str;
                return this;
            }
            throw new NullPointerException("Null manufacturer");
        }

        @Override // e8.f0.e.c.a
        public f0.e.c.a f(String str) {
            if (str != null) {
                this.f51126b = str;
                return this;
            }
            throw new NullPointerException("Null model");
        }

        @Override // e8.f0.e.c.a
        public f0.e.c.a g(String str) {
            if (str != null) {
                this.f51133i = str;
                return this;
            }
            throw new NullPointerException("Null modelClass");
        }

        @Override // e8.f0.e.c.a
        public f0.e.c.a h(long j10) {
            this.f51128d = j10;
            this.f51134j = (byte) (this.f51134j | 4);
            return this;
        }

        @Override // e8.f0.e.c.a
        public f0.e.c.a i(boolean z10) {
            this.f51130f = z10;
            this.f51134j = (byte) (this.f51134j | 16);
            return this;
        }

        @Override // e8.f0.e.c.a
        public f0.e.c.a j(int i10) {
            this.f51131g = i10;
            this.f51134j = (byte) (this.f51134j | 32);
            return this;
        }
    }

    @Override // e8.f0.e.c
    @NonNull
    public int b() {
        return this.f51116a;
    }

    @Override // e8.f0.e.c
    public int c() {
        return this.f51118c;
    }

    @Override // e8.f0.e.c
    public long d() {
        return this.f51120e;
    }

    @Override // e8.f0.e.c
    @NonNull
    public String e() {
        return this.f51123h;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.c)) {
            return false;
        }
        f0.e.c cVar = (f0.e.c) obj;
        if (this.f51116a == cVar.b() && this.f51117b.equals(cVar.f()) && this.f51118c == cVar.c() && this.f51119d == cVar.h() && this.f51120e == cVar.d() && this.f51121f == cVar.j() && this.f51122g == cVar.i() && this.f51123h.equals(cVar.e()) && this.f51124i.equals(cVar.g())) {
            return true;
        }
        return false;
    }

    @Override // e8.f0.e.c
    @NonNull
    public String f() {
        return this.f51117b;
    }

    @Override // e8.f0.e.c
    @NonNull
    public String g() {
        return this.f51124i;
    }

    @Override // e8.f0.e.c
    public long h() {
        return this.f51119d;
    }

    public int hashCode() {
        int i10;
        long j10 = this.f51119d;
        long j11 = this.f51120e;
        int hashCode = (((((((((this.f51116a ^ 1000003) * 1000003) ^ this.f51117b.hashCode()) * 1000003) ^ this.f51118c) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        if (this.f51121f) {
            i10 = 1231;
        } else {
            i10 = 1237;
        }
        return ((((((hashCode ^ i10) * 1000003) ^ this.f51122g) * 1000003) ^ this.f51123h.hashCode()) * 1000003) ^ this.f51124i.hashCode();
    }

    @Override // e8.f0.e.c
    public int i() {
        return this.f51122g;
    }

    @Override // e8.f0.e.c
    public boolean j() {
        return this.f51121f;
    }

    public String toString() {
        return "Device{arch=" + this.f51116a + ", model=" + this.f51117b + ", cores=" + this.f51118c + ", ram=" + this.f51119d + ", diskSpace=" + this.f51120e + ", simulator=" + this.f51121f + ", state=" + this.f51122g + ", manufacturer=" + this.f51123h + ", modelClass=" + this.f51124i + "}";
    }

    private k(int i10, String str, int i11, long j10, long j11, boolean z10, int i12, String str2, String str3) {
        this.f51116a = i10;
        this.f51117b = str;
        this.f51118c = i11;
        this.f51119d = j10;
        this.f51120e = j11;
        this.f51121f = z10;
        this.f51122g = i12;
        this.f51123h = str2;
        this.f51124i = str3;
    }
}
