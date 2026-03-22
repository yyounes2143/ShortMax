package e8;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e8.f0;
/* compiled from: AutoValue_CrashlyticsReport.java */
/* loaded from: classes5.dex */
final class b extends f0 {

    /* renamed from: b  reason: collision with root package name */
    private final String f50992b;

    /* renamed from: c  reason: collision with root package name */
    private final String f50993c;

    /* renamed from: d  reason: collision with root package name */
    private final int f50994d;

    /* renamed from: e  reason: collision with root package name */
    private final String f50995e;

    /* renamed from: f  reason: collision with root package name */
    private final String f50996f;

    /* renamed from: g  reason: collision with root package name */
    private final String f50997g;

    /* renamed from: h  reason: collision with root package name */
    private final String f50998h;

    /* renamed from: i  reason: collision with root package name */
    private final String f50999i;

    /* renamed from: j  reason: collision with root package name */
    private final String f51000j;

    /* renamed from: k  reason: collision with root package name */
    private final f0.e f51001k;

    /* renamed from: l  reason: collision with root package name */
    private final f0.d f51002l;

    /* renamed from: m  reason: collision with root package name */
    private final f0.a f51003m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport.java */
    /* renamed from: e8.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0717b extends f0.b {

        /* renamed from: a  reason: collision with root package name */
        private String f51004a;

        /* renamed from: b  reason: collision with root package name */
        private String f51005b;

        /* renamed from: c  reason: collision with root package name */
        private int f51006c;

        /* renamed from: d  reason: collision with root package name */
        private String f51007d;

        /* renamed from: e  reason: collision with root package name */
        private String f51008e;

        /* renamed from: f  reason: collision with root package name */
        private String f51009f;

        /* renamed from: g  reason: collision with root package name */
        private String f51010g;

        /* renamed from: h  reason: collision with root package name */
        private String f51011h;

        /* renamed from: i  reason: collision with root package name */
        private String f51012i;

        /* renamed from: j  reason: collision with root package name */
        private f0.e f51013j;

        /* renamed from: k  reason: collision with root package name */
        private f0.d f51014k;

        /* renamed from: l  reason: collision with root package name */
        private f0.a f51015l;

        /* renamed from: m  reason: collision with root package name */
        private byte f51016m;

        @Override // e8.f0.b
        public f0 a() {
            if (this.f51016m == 1 && this.f51004a != null && this.f51005b != null && this.f51007d != null && this.f51011h != null && this.f51012i != null) {
                return new b(this.f51004a, this.f51005b, this.f51006c, this.f51007d, this.f51008e, this.f51009f, this.f51010g, this.f51011h, this.f51012i, this.f51013j, this.f51014k, this.f51015l);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f51004a == null) {
                sb2.append(" sdkVersion");
            }
            if (this.f51005b == null) {
                sb2.append(" gmpAppId");
            }
            if ((1 & this.f51016m) == 0) {
                sb2.append(" platform");
            }
            if (this.f51007d == null) {
                sb2.append(" installationUuid");
            }
            if (this.f51011h == null) {
                sb2.append(" buildVersion");
            }
            if (this.f51012i == null) {
                sb2.append(" displayVersion");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.b
        public f0.b b(f0.a aVar) {
            this.f51015l = aVar;
            return this;
        }

        @Override // e8.f0.b
        public f0.b c(@Nullable String str) {
            this.f51010g = str;
            return this;
        }

        @Override // e8.f0.b
        public f0.b d(String str) {
            if (str != null) {
                this.f51011h = str;
                return this;
            }
            throw new NullPointerException("Null buildVersion");
        }

        @Override // e8.f0.b
        public f0.b e(String str) {
            if (str != null) {
                this.f51012i = str;
                return this;
            }
            throw new NullPointerException("Null displayVersion");
        }

        @Override // e8.f0.b
        public f0.b f(@Nullable String str) {
            this.f51009f = str;
            return this;
        }

        @Override // e8.f0.b
        public f0.b g(@Nullable String str) {
            this.f51008e = str;
            return this;
        }

        @Override // e8.f0.b
        public f0.b h(String str) {
            if (str != null) {
                this.f51005b = str;
                return this;
            }
            throw new NullPointerException("Null gmpAppId");
        }

        @Override // e8.f0.b
        public f0.b i(String str) {
            if (str != null) {
                this.f51007d = str;
                return this;
            }
            throw new NullPointerException("Null installationUuid");
        }

        @Override // e8.f0.b
        public f0.b j(f0.d dVar) {
            this.f51014k = dVar;
            return this;
        }

        @Override // e8.f0.b
        public f0.b k(int i10) {
            this.f51006c = i10;
            this.f51016m = (byte) (this.f51016m | 1);
            return this;
        }

        @Override // e8.f0.b
        public f0.b l(String str) {
            if (str != null) {
                this.f51004a = str;
                return this;
            }
            throw new NullPointerException("Null sdkVersion");
        }

        @Override // e8.f0.b
        public f0.b m(f0.e eVar) {
            this.f51013j = eVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0717b() {
        }

        private C0717b(f0 f0Var) {
            this.f51004a = f0Var.m();
            this.f51005b = f0Var.i();
            this.f51006c = f0Var.l();
            this.f51007d = f0Var.j();
            this.f51008e = f0Var.h();
            this.f51009f = f0Var.g();
            this.f51010g = f0Var.d();
            this.f51011h = f0Var.e();
            this.f51012i = f0Var.f();
            this.f51013j = f0Var.n();
            this.f51014k = f0Var.k();
            this.f51015l = f0Var.c();
            this.f51016m = (byte) 1;
        }
    }

    @Override // e8.f0
    @Nullable
    public f0.a c() {
        return this.f51003m;
    }

    @Override // e8.f0
    @Nullable
    public String d() {
        return this.f50998h;
    }

    @Override // e8.f0
    @NonNull
    public String e() {
        return this.f50999i;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        f0.e eVar;
        f0.d dVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0)) {
            return false;
        }
        f0 f0Var = (f0) obj;
        if (this.f50992b.equals(f0Var.m()) && this.f50993c.equals(f0Var.i()) && this.f50994d == f0Var.l() && this.f50995e.equals(f0Var.j()) && ((str = this.f50996f) != null ? str.equals(f0Var.h()) : f0Var.h() == null) && ((str2 = this.f50997g) != null ? str2.equals(f0Var.g()) : f0Var.g() == null) && ((str3 = this.f50998h) != null ? str3.equals(f0Var.d()) : f0Var.d() == null) && this.f50999i.equals(f0Var.e()) && this.f51000j.equals(f0Var.f()) && ((eVar = this.f51001k) != null ? eVar.equals(f0Var.n()) : f0Var.n() == null) && ((dVar = this.f51002l) != null ? dVar.equals(f0Var.k()) : f0Var.k() == null)) {
            f0.a aVar = this.f51003m;
            if (aVar == null) {
                if (f0Var.c() == null) {
                    return true;
                }
            } else if (aVar.equals(f0Var.c())) {
                return true;
            }
        }
        return false;
    }

    @Override // e8.f0
    @NonNull
    public String f() {
        return this.f51000j;
    }

    @Override // e8.f0
    @Nullable
    public String g() {
        return this.f50997g;
    }

    @Override // e8.f0
    @Nullable
    public String h() {
        return this.f50996f;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6 = (((((((this.f50992b.hashCode() ^ 1000003) * 1000003) ^ this.f50993c.hashCode()) * 1000003) ^ this.f50994d) * 1000003) ^ this.f50995e.hashCode()) * 1000003;
        String str = this.f50996f;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode6 ^ hashCode) * 1000003;
        String str2 = this.f50997g;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i12 = (i11 ^ hashCode2) * 1000003;
        String str3 = this.f50998h;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int hashCode7 = (((((i12 ^ hashCode3) * 1000003) ^ this.f50999i.hashCode()) * 1000003) ^ this.f51000j.hashCode()) * 1000003;
        f0.e eVar = this.f51001k;
        if (eVar == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = eVar.hashCode();
        }
        int i13 = (hashCode7 ^ hashCode4) * 1000003;
        f0.d dVar = this.f51002l;
        if (dVar == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = dVar.hashCode();
        }
        int i14 = (i13 ^ hashCode5) * 1000003;
        f0.a aVar = this.f51003m;
        if (aVar != null) {
            i10 = aVar.hashCode();
        }
        return i14 ^ i10;
    }

    @Override // e8.f0
    @NonNull
    public String i() {
        return this.f50993c;
    }

    @Override // e8.f0
    @NonNull
    public String j() {
        return this.f50995e;
    }

    @Override // e8.f0
    @Nullable
    public f0.d k() {
        return this.f51002l;
    }

    @Override // e8.f0
    public int l() {
        return this.f50994d;
    }

    @Override // e8.f0
    @NonNull
    public String m() {
        return this.f50992b;
    }

    @Override // e8.f0
    @Nullable
    public f0.e n() {
        return this.f51001k;
    }

    @Override // e8.f0
    protected f0.b o() {
        return new C0717b(this);
    }

    public String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.f50992b + ", gmpAppId=" + this.f50993c + ", platform=" + this.f50994d + ", installationUuid=" + this.f50995e + ", firebaseInstallationId=" + this.f50996f + ", firebaseAuthenticationToken=" + this.f50997g + ", appQualitySessionId=" + this.f50998h + ", buildVersion=" + this.f50999i + ", displayVersion=" + this.f51000j + ", session=" + this.f51001k + ", ndkPayload=" + this.f51002l + ", appExitInfo=" + this.f51003m + "}";
    }

    private b(String str, String str2, int i10, String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, String str7, String str8, @Nullable f0.e eVar, @Nullable f0.d dVar, @Nullable f0.a aVar) {
        this.f50992b = str;
        this.f50993c = str2;
        this.f50994d = i10;
        this.f50995e = str3;
        this.f50996f = str4;
        this.f50997g = str5;
        this.f50998h = str6;
        this.f50999i = str7;
        this.f51000j = str8;
        this.f51001k = eVar;
        this.f51002l = dVar;
        this.f51003m = aVar;
    }
}
