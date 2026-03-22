package e8;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e8.f0;
/* compiled from: AutoValue_CrashlyticsReport_Session_Application.java */
/* loaded from: classes5.dex */
final class i extends f0.e.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f51101a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51102b;

    /* renamed from: c  reason: collision with root package name */
    private final String f51103c;

    /* renamed from: d  reason: collision with root package name */
    private final f0.e.a.b f51104d;

    /* renamed from: e  reason: collision with root package name */
    private final String f51105e;

    /* renamed from: f  reason: collision with root package name */
    private final String f51106f;

    /* renamed from: g  reason: collision with root package name */
    private final String f51107g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Application.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.a.AbstractC0720a {

        /* renamed from: a  reason: collision with root package name */
        private String f51108a;

        /* renamed from: b  reason: collision with root package name */
        private String f51109b;

        /* renamed from: c  reason: collision with root package name */
        private String f51110c;

        /* renamed from: d  reason: collision with root package name */
        private f0.e.a.b f51111d;

        /* renamed from: e  reason: collision with root package name */
        private String f51112e;

        /* renamed from: f  reason: collision with root package name */
        private String f51113f;

        /* renamed from: g  reason: collision with root package name */
        private String f51114g;

        @Override // e8.f0.e.a.AbstractC0720a
        public f0.e.a a() {
            String str;
            String str2 = this.f51108a;
            if (str2 != null && (str = this.f51109b) != null) {
                return new i(str2, str, this.f51110c, this.f51111d, this.f51112e, this.f51113f, this.f51114g);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f51108a == null) {
                sb2.append(" identifier");
            }
            if (this.f51109b == null) {
                sb2.append(" version");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.e.a.AbstractC0720a
        public f0.e.a.AbstractC0720a b(@Nullable String str) {
            this.f51113f = str;
            return this;
        }

        @Override // e8.f0.e.a.AbstractC0720a
        public f0.e.a.AbstractC0720a c(@Nullable String str) {
            this.f51114g = str;
            return this;
        }

        @Override // e8.f0.e.a.AbstractC0720a
        public f0.e.a.AbstractC0720a d(String str) {
            this.f51110c = str;
            return this;
        }

        @Override // e8.f0.e.a.AbstractC0720a
        public f0.e.a.AbstractC0720a e(String str) {
            if (str != null) {
                this.f51108a = str;
                return this;
            }
            throw new NullPointerException("Null identifier");
        }

        @Override // e8.f0.e.a.AbstractC0720a
        public f0.e.a.AbstractC0720a f(String str) {
            this.f51112e = str;
            return this;
        }

        @Override // e8.f0.e.a.AbstractC0720a
        public f0.e.a.AbstractC0720a g(String str) {
            if (str != null) {
                this.f51109b = str;
                return this;
            }
            throw new NullPointerException("Null version");
        }
    }

    @Override // e8.f0.e.a
    @Nullable
    public String b() {
        return this.f51106f;
    }

    @Override // e8.f0.e.a
    @Nullable
    public String c() {
        return this.f51107g;
    }

    @Override // e8.f0.e.a
    @Nullable
    public String d() {
        return this.f51103c;
    }

    @Override // e8.f0.e.a
    @NonNull
    public String e() {
        return this.f51101a;
    }

    public boolean equals(Object obj) {
        String str;
        f0.e.a.b bVar;
        String str2;
        String str3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.a)) {
            return false;
        }
        f0.e.a aVar = (f0.e.a) obj;
        if (this.f51101a.equals(aVar.e()) && this.f51102b.equals(aVar.h()) && ((str = this.f51103c) != null ? str.equals(aVar.d()) : aVar.d() == null) && ((bVar = this.f51104d) != null ? bVar.equals(aVar.g()) : aVar.g() == null) && ((str2 = this.f51105e) != null ? str2.equals(aVar.f()) : aVar.f() == null) && ((str3 = this.f51106f) != null ? str3.equals(aVar.b()) : aVar.b() == null)) {
            String str4 = this.f51107g;
            if (str4 == null) {
                if (aVar.c() == null) {
                    return true;
                }
            } else if (str4.equals(aVar.c())) {
                return true;
            }
        }
        return false;
    }

    @Override // e8.f0.e.a
    @Nullable
    public String f() {
        return this.f51105e;
    }

    @Override // e8.f0.e.a
    @Nullable
    public f0.e.a.b g() {
        return this.f51104d;
    }

    @Override // e8.f0.e.a
    @NonNull
    public String h() {
        return this.f51102b;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5 = (((this.f51101a.hashCode() ^ 1000003) * 1000003) ^ this.f51102b.hashCode()) * 1000003;
        String str = this.f51103c;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode5 ^ hashCode) * 1000003;
        f0.e.a.b bVar = this.f51104d;
        if (bVar == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = bVar.hashCode();
        }
        int i12 = (i11 ^ hashCode2) * 1000003;
        String str2 = this.f51105e;
        if (str2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str2.hashCode();
        }
        int i13 = (i12 ^ hashCode3) * 1000003;
        String str3 = this.f51106f;
        if (str3 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str3.hashCode();
        }
        int i14 = (i13 ^ hashCode4) * 1000003;
        String str4 = this.f51107g;
        if (str4 != null) {
            i10 = str4.hashCode();
        }
        return i14 ^ i10;
    }

    public String toString() {
        return "Application{identifier=" + this.f51101a + ", version=" + this.f51102b + ", displayVersion=" + this.f51103c + ", organization=" + this.f51104d + ", installationUuid=" + this.f51105e + ", developmentPlatform=" + this.f51106f + ", developmentPlatformVersion=" + this.f51107g + "}";
    }

    private i(String str, String str2, @Nullable String str3, @Nullable f0.e.a.b bVar, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
        this.f51101a = str;
        this.f51102b = str2;
        this.f51103c = str3;
        this.f51104d = bVar;
        this.f51105e = str4;
        this.f51106f = str5;
        this.f51107g = str6;
    }
}
