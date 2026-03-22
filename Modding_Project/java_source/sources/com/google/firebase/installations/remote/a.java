package com.google.firebase.installations.remote;

import androidx.annotation.Nullable;
import com.google.firebase.installations.remote.InstallationResponse;
/* compiled from: AutoValue_InstallationResponse.java */
/* loaded from: classes5.dex */
final class a extends InstallationResponse {

    /* renamed from: a  reason: collision with root package name */
    private final String f21061a;

    /* renamed from: b  reason: collision with root package name */
    private final String f21062b;

    /* renamed from: c  reason: collision with root package name */
    private final String f21063c;

    /* renamed from: d  reason: collision with root package name */
    private final TokenResult f21064d;

    /* renamed from: e  reason: collision with root package name */
    private final InstallationResponse.ResponseCode f21065e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_InstallationResponse.java */
    /* loaded from: classes5.dex */
    public static final class b extends InstallationResponse.a {

        /* renamed from: a  reason: collision with root package name */
        private String f21066a;

        /* renamed from: b  reason: collision with root package name */
        private String f21067b;

        /* renamed from: c  reason: collision with root package name */
        private String f21068c;

        /* renamed from: d  reason: collision with root package name */
        private TokenResult f21069d;

        /* renamed from: e  reason: collision with root package name */
        private InstallationResponse.ResponseCode f21070e;

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse a() {
            return new a(this.f21066a, this.f21067b, this.f21068c, this.f21069d, this.f21070e);
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse.a b(TokenResult tokenResult) {
            this.f21069d = tokenResult;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse.a c(String str) {
            this.f21067b = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse.a d(String str) {
            this.f21068c = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse.a e(InstallationResponse.ResponseCode responseCode) {
            this.f21070e = responseCode;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.a
        public InstallationResponse.a f(String str) {
            this.f21066a = str;
            return this;
        }
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public TokenResult b() {
        return this.f21064d;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public String c() {
        return this.f21062b;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public String d() {
        return this.f21063c;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public InstallationResponse.ResponseCode e() {
        return this.f21065e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InstallationResponse)) {
            return false;
        }
        InstallationResponse installationResponse = (InstallationResponse) obj;
        String str = this.f21061a;
        if (str != null ? str.equals(installationResponse.f()) : installationResponse.f() == null) {
            String str2 = this.f21062b;
            if (str2 != null ? str2.equals(installationResponse.c()) : installationResponse.c() == null) {
                String str3 = this.f21063c;
                if (str3 != null ? str3.equals(installationResponse.d()) : installationResponse.d() == null) {
                    TokenResult tokenResult = this.f21064d;
                    if (tokenResult != null ? tokenResult.equals(installationResponse.b()) : installationResponse.b() == null) {
                        InstallationResponse.ResponseCode responseCode = this.f21065e;
                        if (responseCode == null) {
                            if (installationResponse.e() == null) {
                                return true;
                            }
                        } else if (responseCode.equals(installationResponse.e())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public String f() {
        return this.f21061a;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        String str = this.f21061a;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode ^ 1000003) * 1000003;
        String str2 = this.f21062b;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i12 = (i11 ^ hashCode2) * 1000003;
        String str3 = this.f21063c;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i13 = (i12 ^ hashCode3) * 1000003;
        TokenResult tokenResult = this.f21064d;
        if (tokenResult == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = tokenResult.hashCode();
        }
        int i14 = (i13 ^ hashCode4) * 1000003;
        InstallationResponse.ResponseCode responseCode = this.f21065e;
        if (responseCode != null) {
            i10 = responseCode.hashCode();
        }
        return i14 ^ i10;
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.f21061a + ", fid=" + this.f21062b + ", refreshToken=" + this.f21063c + ", authToken=" + this.f21064d + ", responseCode=" + this.f21065e + "}";
    }

    private a(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable TokenResult tokenResult, @Nullable InstallationResponse.ResponseCode responseCode) {
        this.f21061a = str;
        this.f21062b = str2;
        this.f21063c = str3;
        this.f21064d = tokenResult;
        this.f21065e = responseCode;
    }
}
