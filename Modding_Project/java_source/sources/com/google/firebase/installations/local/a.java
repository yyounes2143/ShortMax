package com.google.firebase.installations.local;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.local.b;
/* compiled from: AutoValue_PersistedInstallationEntry.java */
/* loaded from: classes5.dex */
final class a extends com.google.firebase.installations.local.b {

    /* renamed from: b  reason: collision with root package name */
    private final String f21045b;

    /* renamed from: c  reason: collision with root package name */
    private final PersistedInstallation.RegistrationStatus f21046c;

    /* renamed from: d  reason: collision with root package name */
    private final String f21047d;

    /* renamed from: e  reason: collision with root package name */
    private final String f21048e;

    /* renamed from: f  reason: collision with root package name */
    private final long f21049f;

    /* renamed from: g  reason: collision with root package name */
    private final long f21050g;

    /* renamed from: h  reason: collision with root package name */
    private final String f21051h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_PersistedInstallationEntry.java */
    /* loaded from: classes5.dex */
    public static final class b extends b.a {

        /* renamed from: a  reason: collision with root package name */
        private String f21052a;

        /* renamed from: b  reason: collision with root package name */
        private PersistedInstallation.RegistrationStatus f21053b;

        /* renamed from: c  reason: collision with root package name */
        private String f21054c;

        /* renamed from: d  reason: collision with root package name */
        private String f21055d;

        /* renamed from: e  reason: collision with root package name */
        private long f21056e;

        /* renamed from: f  reason: collision with root package name */
        private long f21057f;

        /* renamed from: g  reason: collision with root package name */
        private String f21058g;

        /* renamed from: h  reason: collision with root package name */
        private byte f21059h;

        @Override // com.google.firebase.installations.local.b.a
        public com.google.firebase.installations.local.b a() {
            if (this.f21059h == 3 && this.f21053b != null) {
                return new a(this.f21052a, this.f21053b, this.f21054c, this.f21055d, this.f21056e, this.f21057f, this.f21058g);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f21053b == null) {
                sb2.append(" registrationStatus");
            }
            if ((this.f21059h & 1) == 0) {
                sb2.append(" expiresInSecs");
            }
            if ((this.f21059h & 2) == 0) {
                sb2.append(" tokenCreationEpochInSecs");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.installations.local.b.a
        public b.a b(@Nullable String str) {
            this.f21054c = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.b.a
        public b.a c(long j10) {
            this.f21056e = j10;
            this.f21059h = (byte) (this.f21059h | 1);
            return this;
        }

        @Override // com.google.firebase.installations.local.b.a
        public b.a d(String str) {
            this.f21052a = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.b.a
        public b.a e(@Nullable String str) {
            this.f21058g = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.b.a
        public b.a f(@Nullable String str) {
            this.f21055d = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.b.a
        public b.a g(PersistedInstallation.RegistrationStatus registrationStatus) {
            if (registrationStatus != null) {
                this.f21053b = registrationStatus;
                return this;
            }
            throw new NullPointerException("Null registrationStatus");
        }

        @Override // com.google.firebase.installations.local.b.a
        public b.a h(long j10) {
            this.f21057f = j10;
            this.f21059h = (byte) (this.f21059h | 2);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        private b(com.google.firebase.installations.local.b bVar) {
            this.f21052a = bVar.d();
            this.f21053b = bVar.g();
            this.f21054c = bVar.b();
            this.f21055d = bVar.f();
            this.f21056e = bVar.c();
            this.f21057f = bVar.h();
            this.f21058g = bVar.e();
            this.f21059h = (byte) 3;
        }
    }

    @Override // com.google.firebase.installations.local.b
    @Nullable
    public String b() {
        return this.f21047d;
    }

    @Override // com.google.firebase.installations.local.b
    public long c() {
        return this.f21049f;
    }

    @Override // com.google.firebase.installations.local.b
    @Nullable
    public String d() {
        return this.f21045b;
    }

    @Override // com.google.firebase.installations.local.b
    @Nullable
    public String e() {
        return this.f21051h;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof com.google.firebase.installations.local.b)) {
            return false;
        }
        com.google.firebase.installations.local.b bVar = (com.google.firebase.installations.local.b) obj;
        String str3 = this.f21045b;
        if (str3 != null ? str3.equals(bVar.d()) : bVar.d() == null) {
            if (this.f21046c.equals(bVar.g()) && ((str = this.f21047d) != null ? str.equals(bVar.b()) : bVar.b() == null) && ((str2 = this.f21048e) != null ? str2.equals(bVar.f()) : bVar.f() == null) && this.f21049f == bVar.c() && this.f21050g == bVar.h()) {
                String str4 = this.f21051h;
                if (str4 == null) {
                    if (bVar.e() == null) {
                        return true;
                    }
                } else if (str4.equals(bVar.e())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.firebase.installations.local.b
    @Nullable
    public String f() {
        return this.f21048e;
    }

    @Override // com.google.firebase.installations.local.b
    @NonNull
    public PersistedInstallation.RegistrationStatus g() {
        return this.f21046c;
    }

    @Override // com.google.firebase.installations.local.b
    public long h() {
        return this.f21050g;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        String str = this.f21045b;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode4 = (((hashCode ^ 1000003) * 1000003) ^ this.f21046c.hashCode()) * 1000003;
        String str2 = this.f21047d;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i11 = (hashCode4 ^ hashCode2) * 1000003;
        String str3 = this.f21048e;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        long j10 = this.f21049f;
        long j11 = this.f21050g;
        int i12 = (((((i11 ^ hashCode3) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        String str4 = this.f21051h;
        if (str4 != null) {
            i10 = str4.hashCode();
        }
        return i12 ^ i10;
    }

    @Override // com.google.firebase.installations.local.b
    public b.a n() {
        return new b(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.f21045b + ", registrationStatus=" + this.f21046c + ", authToken=" + this.f21047d + ", refreshToken=" + this.f21048e + ", expiresInSecs=" + this.f21049f + ", tokenCreationEpochInSecs=" + this.f21050g + ", fisError=" + this.f21051h + "}";
    }

    private a(@Nullable String str, PersistedInstallation.RegistrationStatus registrationStatus, @Nullable String str2, @Nullable String str3, long j10, long j11, @Nullable String str4) {
        this.f21045b = str;
        this.f21046c = registrationStatus;
        this.f21047d = str2;
        this.f21048e = str3;
        this.f21049f = j10;
        this.f21050g = j11;
        this.f21051h = str4;
    }
}
