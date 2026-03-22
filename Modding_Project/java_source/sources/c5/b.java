package c5;

import androidx.annotation.Nullable;
import c5.i;
import java.util.Arrays;
import java.util.Map;
/* compiled from: AutoValue_EventInternal.java */
/* loaded from: classes4.dex */
final class b extends i {

    /* renamed from: a  reason: collision with root package name */
    private final String f3073a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f3074b;

    /* renamed from: c  reason: collision with root package name */
    private final h f3075c;

    /* renamed from: d  reason: collision with root package name */
    private final long f3076d;

    /* renamed from: e  reason: collision with root package name */
    private final long f3077e;

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, String> f3078f;

    /* renamed from: g  reason: collision with root package name */
    private final Integer f3079g;

    /* renamed from: h  reason: collision with root package name */
    private final String f3080h;

    /* renamed from: i  reason: collision with root package name */
    private final byte[] f3081i;

    /* renamed from: j  reason: collision with root package name */
    private final byte[] f3082j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_EventInternal.java */
    /* renamed from: c5.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0086b extends i.a {

        /* renamed from: a  reason: collision with root package name */
        private String f3083a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f3084b;

        /* renamed from: c  reason: collision with root package name */
        private h f3085c;

        /* renamed from: d  reason: collision with root package name */
        private Long f3086d;

        /* renamed from: e  reason: collision with root package name */
        private Long f3087e;

        /* renamed from: f  reason: collision with root package name */
        private Map<String, String> f3088f;

        /* renamed from: g  reason: collision with root package name */
        private Integer f3089g;

        /* renamed from: h  reason: collision with root package name */
        private String f3090h;

        /* renamed from: i  reason: collision with root package name */
        private byte[] f3091i;

        /* renamed from: j  reason: collision with root package name */
        private byte[] f3092j;

        @Override // c5.i.a
        public i d() {
            String str = "";
            if (this.f3083a == null) {
                str = " transportName";
            }
            if (this.f3085c == null) {
                str = str + " encodedPayload";
            }
            if (this.f3086d == null) {
                str = str + " eventMillis";
            }
            if (this.f3087e == null) {
                str = str + " uptimeMillis";
            }
            if (this.f3088f == null) {
                str = str + " autoMetadata";
            }
            if (str.isEmpty()) {
                return new b(this.f3083a, this.f3084b, this.f3085c, this.f3086d.longValue(), this.f3087e.longValue(), this.f3088f, this.f3089g, this.f3090h, this.f3091i, this.f3092j);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // c5.i.a
        protected Map<String, String> e() {
            Map<String, String> map = this.f3088f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // c5.i.a
        public i.a f(Map<String, String> map) {
            if (map != null) {
                this.f3088f = map;
                return this;
            }
            throw new NullPointerException("Null autoMetadata");
        }

        @Override // c5.i.a
        public i.a g(Integer num) {
            this.f3084b = num;
            return this;
        }

        @Override // c5.i.a
        public i.a h(h hVar) {
            if (hVar != null) {
                this.f3085c = hVar;
                return this;
            }
            throw new NullPointerException("Null encodedPayload");
        }

        @Override // c5.i.a
        public i.a i(long j10) {
            this.f3086d = Long.valueOf(j10);
            return this;
        }

        @Override // c5.i.a
        public i.a j(byte[] bArr) {
            this.f3091i = bArr;
            return this;
        }

        @Override // c5.i.a
        public i.a k(byte[] bArr) {
            this.f3092j = bArr;
            return this;
        }

        @Override // c5.i.a
        public i.a l(Integer num) {
            this.f3089g = num;
            return this;
        }

        @Override // c5.i.a
        public i.a m(String str) {
            this.f3090h = str;
            return this;
        }

        @Override // c5.i.a
        public i.a n(String str) {
            if (str != null) {
                this.f3083a = str;
                return this;
            }
            throw new NullPointerException("Null transportName");
        }

        @Override // c5.i.a
        public i.a o(long j10) {
            this.f3087e = Long.valueOf(j10);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // c5.i
    public Map<String, String> c() {
        return this.f3078f;
    }

    @Override // c5.i
    @Nullable
    public Integer d() {
        return this.f3074b;
    }

    @Override // c5.i
    public h e() {
        return this.f3075c;
    }

    public boolean equals(Object obj) {
        Integer num;
        Integer num2;
        String str;
        byte[] g10;
        byte[] h10;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f3073a.equals(iVar.n()) && ((num = this.f3074b) != null ? num.equals(iVar.d()) : iVar.d() == null) && this.f3075c.equals(iVar.e()) && this.f3076d == iVar.f() && this.f3077e == iVar.o() && this.f3078f.equals(iVar.c()) && ((num2 = this.f3079g) != null ? num2.equals(iVar.l()) : iVar.l() == null) && ((str = this.f3080h) != null ? str.equals(iVar.m()) : iVar.m() == null)) {
            byte[] bArr = this.f3081i;
            boolean z10 = iVar instanceof b;
            if (z10) {
                g10 = ((b) iVar).f3081i;
            } else {
                g10 = iVar.g();
            }
            if (Arrays.equals(bArr, g10)) {
                byte[] bArr2 = this.f3082j;
                if (z10) {
                    h10 = ((b) iVar).f3082j;
                } else {
                    h10 = iVar.h();
                }
                if (Arrays.equals(bArr2, h10)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // c5.i
    public long f() {
        return this.f3076d;
    }

    @Override // c5.i
    @Nullable
    public byte[] g() {
        return this.f3081i;
    }

    @Override // c5.i
    @Nullable
    public byte[] h() {
        return this.f3082j;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = (this.f3073a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f3074b;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        long j10 = this.f3076d;
        long j11 = this.f3077e;
        int hashCode4 = (((((((((hashCode3 ^ hashCode) * 1000003) ^ this.f3075c.hashCode()) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ this.f3078f.hashCode()) * 1000003;
        Integer num2 = this.f3079g;
        if (num2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num2.hashCode();
        }
        int i11 = (hashCode4 ^ hashCode2) * 1000003;
        String str = this.f3080h;
        if (str != null) {
            i10 = str.hashCode();
        }
        return ((((i11 ^ i10) * 1000003) ^ Arrays.hashCode(this.f3081i)) * 1000003) ^ Arrays.hashCode(this.f3082j);
    }

    @Override // c5.i
    @Nullable
    public Integer l() {
        return this.f3079g;
    }

    @Override // c5.i
    @Nullable
    public String m() {
        return this.f3080h;
    }

    @Override // c5.i
    public String n() {
        return this.f3073a;
    }

    @Override // c5.i
    public long o() {
        return this.f3077e;
    }

    public String toString() {
        return "EventInternal{transportName=" + this.f3073a + ", code=" + this.f3074b + ", encodedPayload=" + this.f3075c + ", eventMillis=" + this.f3076d + ", uptimeMillis=" + this.f3077e + ", autoMetadata=" + this.f3078f + ", productId=" + this.f3079g + ", pseudonymousId=" + this.f3080h + ", experimentIdsClear=" + Arrays.toString(this.f3081i) + ", experimentIdsEncrypted=" + Arrays.toString(this.f3082j) + "}";
    }

    private b(String str, @Nullable Integer num, h hVar, long j10, long j11, Map<String, String> map, @Nullable Integer num2, @Nullable String str2, @Nullable byte[] bArr, @Nullable byte[] bArr2) {
        this.f3073a = str;
        this.f3074b = num;
        this.f3075c = hVar;
        this.f3076d = j10;
        this.f3077e = j11;
        this.f3078f = map;
        this.f3079g = num2;
        this.f3080h = str2;
        this.f3081i = bArr;
        this.f3082j = bArr2;
    }
}
